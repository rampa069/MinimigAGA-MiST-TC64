// SPDX-License-Identifier: LGPL-3.0-or-later
// Data cache between the core's data port and the bus interface: 4 Kbytes
// as the 68040's, direct mapped, 16-byte lines, write-through (the 68040's
// mode with the MMU off, UM 4.3.1.1), with a write buffer.
//
// The port takes one access at a time:
//   - a read within an aligned long that the cache keeps is looked up on the
//     enabled edge that takes it and answered on the next one when it hits;
//     a miss fills the line through the bus interface, the long asked for
//     first (answered as it comes) and the others after it, wrapping
//   - a write the cache keeps goes into the write buffer and is answered on
//     the next edge; one that hits updates the line, one that misses loads
//     nothing (no write allocate), one across a long drops the lines it
//     touches. The buffer writes to the bus behind the core's back, in order
//   - what the cache does not keep (CACR DE clear, the windows never cached
//     NC0 and NC1: memory written by DMA, registers) and reads across a long
//     go to the bus interface as they are, from the edge after they are
//     taken, answered as it answers (a bus error is the 68040's TEA:
//     precise there)
// Taking an access depends only on the cache's state, not on what it is,
// so the grant is short: the address is looked at on the next edge.
// Anything that reads the bus (a fill, an access straight through) waits
// for the write buffer to empty, and so does the instruction cache
// (wb_empty), so nothing reads memory a buffered write has not reached.
// CINV and CPUSH of the data cache invalidate all of it (there is no dirty
// data to push).

module m68k_dcache
  import m68k_pkg::*;
#(
  parameter logic [31:0] NC0_LO = 32'h00000000,
  parameter logic [31:0] NC0_HI = 32'h00000000,
  parameter logic [31:0] NC1_LO = 32'h00000000,
  parameter logic [31:0] NC1_HI = 32'h00000000
)
(
  input  logic        clk,
  input  logic        rst,
  input  logic        ce,
  input  logic        enable,         // CACR DE
  input  logic        inval,          // CINV/CPUSH of this cache (with ce)

  // the core's data port
  input  logic        c_req,
  input  logic        c_we,
  input  logic [31:0] c_addr,
  input  size_e       c_size,
  input  logic [31:0] c_wdata,
  input  logic [2:0]  c_fc,
  output logic        c_gnt,
  output logic        c_rvalid,
  output logic        c_err,
  output logic [31:0] c_rdata,

  output logic        wb_empty,       // no buffered write left

  // to the bus interface
  output logic        b_req,
  output logic        b_we,
  output logic [31:0] b_addr,
  output size_e       b_size,
  output logic [31:0] b_wdata,
  output logic [2:0]  b_fc,
  input  logic        b_gnt,
  input  logic        b_rvalid,
  input  logic        b_err,
  input  logic [31:0] b_rdata
);

  localparam int LINES = 256;
  localparam int WBN = 4;               // write buffer entries

  logic [31:0] data_ram [LINES * 4];
  logic [19:0] tag_ram [LINES];
  logic        valid [LINES];

  /* verilator lint_off UNSIGNED */      // (a window from 0)
  function automatic logic cacheable(input logic [31:0] a);
    return enable && !(a >= NC0_LO && a < NC0_HI) && !(a >= NC1_LO && a < NC1_HI);
  endfunction
  /* verilator lint_on UNSIGNED */

  function automatic logic [2:0] nbytes(input size_e s);
    return (s == SZ_B) ? 3'd1 : (s == SZ_W) ? 3'd2 : 3'd4;
  endfunction

  // the bytes of an access within the long l, right-justified
  function automatic logic [31:0] extract(input logic [31:0] l, input logic [1:0] off, input size_e s);
    logic [31:0] v;
    v = l << (8 * off);
    return (s == SZ_B) ? {24'd0, v[31:24]} : (s == SZ_W) ? {16'd0, v[31:16]} : v;
  endfunction

  // the long l with an access's bytes written in
  function automatic logic [31:0] merge(input logic [31:0] l, input logic [1:0] off, input size_e s,
                                        input logic [31:0] d);
    logic [31:0] m, v;
    m = ((s == SZ_B) ? 32'hFF000000 : (s == SZ_W) ? 32'hFFFF0000 : 32'hFFFFFFFF) >> (8 * off);
    v = ((s == SZ_B) ? {d[7:0], 24'd0} : (s == SZ_W) ? {d[15:0], 16'd0} : d) >> (8 * off);
    return (l & ~m) | (v & m);
  endfunction

  // the write buffer, oldest at 0; the head stays until the bus has it
  logic        wq_v [WBN];
  logic [31:0] wq_a [WBN], wq_d [WBN];
  size_e       wq_s [WBN];
  logic [2:0]  wq_fc [WBN];
  logic        wq_out;                  // the head is on the bus
  assign wb_empty = !wq_v[0];

  // an access taken, looked up on the next enabled edge
  logic        s1_v, s1_we, s1_in;        // s1_in: within one aligned long
  logic        s1_direct;                 // it goes to the bus as it is
  logic [31:0] s1_addr, s1_wdata;
  size_e       s1_size;
  logic [2:0]  s1_fc;
  logic [31:0] q_data;
  logic [19:0] q_tag;
  logic        s1_tag_hit, s1_rd_hit, s1_miss, s1_wr;
  assign s1_tag_hit = valid[s1_addr[11:4]] && q_tag == s1_addr[31:12];
  assign s1_rd_hit = s1_v && !s1_direct && !s1_we && s1_tag_hit;
  assign s1_miss = s1_v && !s1_direct && !s1_we && !s1_tag_hit;
  assign s1_wr = s1_v && !s1_direct && s1_we;

  typedef enum logic [1:0] { ST_IDLE, ST_FILL, ST_BUS } st_e;
  st_e         st;
  logic [31:0] f_addr, f_wdata;
  size_e       f_size;
  logic        f_we;
  logic [2:0]  f_fc;
  logic [1:0]  f_next, f_got;
  logic [2:0]  f_left;
  logic        f_wait, f_bad;              // f_wait: an access straight through on the bus
  logic [2:0]  f_out;                      // a fill's longs asked for, not answered yet

  // what an access is: buffered (a write the cache keeps), straight
  // through (an access it does not keep, a read across a long), or a read
  // looked up
  logic c_buf, c_direct, c_free, fill_crit;
  assign c_buf = c_we && cacheable(c_addr);
  assign c_direct = !c_buf && (c_we || !cacheable(c_addr) || {1'b0, c_addr[1:0]} + nbytes(c_size) > 3'd4);
  // free for a new access, also in the cycle the last one is answered
  logic bus_resp;
  assign bus_resp = st == ST_BUS && f_wait && b_rvalid;
  assign c_free = (st == ST_IDLE && !s1_miss && !(s1_v && s1_direct)) || bus_resp;
  assign c_gnt = c_req && c_free && !wq_v[WBN - 1];   // (acted on at enabled edges only)
  // the long asked for of a fill, answered as it comes
  assign fill_crit = st == ST_FILL && f_out != 3'd0 && b_rvalid && f_got == f_addr[3:2];
  assign c_rvalid = (st == ST_IDLE && (s1_rd_hit || s1_wr)) || bus_resp || fill_crit;
  assign c_err = (bus_resp || fill_crit) && b_err;
  assign c_rdata = (st == ST_BUS) ? b_rdata : fill_crit ? extract(b_rdata, f_addr[1:0], f_size) :
                   extract(q_data, s1_addr[1:0], s1_size);

  // the bus interface, all from registers: the write buffer's head first,
  // then a fill or an access straight through (both wait for the buffer)
  always_comb begin
    b_req = 1'b0; b_we = 1'b0; b_addr = f_addr; b_size = f_size; b_wdata = f_wdata; b_fc = f_fc;
    if (wq_v[0]) begin
      b_req = !wq_out;
      b_we = 1'b1; b_addr = wq_a[0]; b_size = wq_s[0]; b_wdata = wq_d[0]; b_fc = wq_fc[0];
    end else if (st == ST_FILL) begin
      b_req = f_left != 3'd0;            // (asked for one after the other, answered in order)
      b_addr = {f_addr[31:4], f_next, 2'b00}; b_size = SZ_L;
    end else if (st == ST_BUS) begin
      b_req = !f_wait;
      b_we = f_we;
    end
  end

  // the RAM writes: a long of a fill, a write that hits
  logic        fill_wr, fill_end, hit_wr;
  assign fill_wr = ce && st == ST_FILL && !wq_v[0] && b_rvalid && f_out != 3'd0;
  assign fill_end = fill_wr && f_left == 3'd0 && f_out == 3'd1;
  assign hit_wr = ce && s1_wr && s1_in && s1_tag_hit;

  always_ff @(posedge clk) begin
    if (ce) begin
      q_data <= data_ram[c_addr[11:2]];
      q_tag <= tag_ram[c_addr[11:4]];
    end
    if (fill_wr) data_ram[{f_addr[11:4], f_got}] <= b_rdata;
    else if (hit_wr) data_ram[s1_addr[11:2]] <= merge(q_data, s1_addr[1:0], s1_size, s1_wdata);
    if (fill_end) tag_ram[f_addr[11:4]] <= f_addr[31:12];
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      s1_v <= 1'b0;
      st <= ST_IDLE;
      f_wait <= 1'b0;
      f_out <= 3'd0;
      wq_out <= 1'b0;
      for (int i = 0; i < WBN; i++) wq_v[i] <= 1'b0;
      for (int i = 0; i < LINES; i++) valid[i] <= 1'b0;
    end else if (ce) begin
      // the write buffer: the head leaves when the bus has written it, a
      // write taken enters behind the others
      begin
        logic        nv [WBN];
        logic [31:0] na [WBN], nd [WBN];
        size_e       ns [WBN];
        logic [2:0]  nf [WBN];
        logic        put;
        for (int i = 0; i < WBN; i++) begin
          nv[i] = wq_v[i]; na[i] = wq_a[i]; nd[i] = wq_d[i]; ns[i] = wq_s[i]; nf[i] = wq_fc[i];
        end
        if (wq_out && b_rvalid) begin
          for (int i = 0; i < WBN - 1; i++) begin
            nv[i] = nv[i + 1]; na[i] = na[i + 1]; nd[i] = nd[i + 1]; ns[i] = ns[i + 1]; nf[i] = nf[i + 1];
          end
          nv[WBN - 1] = 1'b0;
        end
        put = c_gnt && c_buf;
        for (int i = 0; i < WBN; i++)
          if (put && !nv[i]) begin
            nv[i] = 1'b1; na[i] = c_addr; nd[i] = c_wdata; ns[i] = c_size; nf[i] = c_fc;
            put = 1'b0;
          end
        for (int i = 0; i < WBN; i++) begin
          wq_v[i] <= nv[i]; wq_a[i] <= na[i]; wq_d[i] <= nd[i]; wq_s[i] <= ns[i]; wq_fc[i] <= nf[i];
        end
      end
      if (wq_v[0] && b_req && b_gnt) wq_out <= 1'b1;
      if (wq_out && b_rvalid) wq_out <= 1'b0;

      // looked up on the next edge only
      s1_v <= c_gnt;
      if (c_gnt) begin
        s1_direct <= c_direct;
        s1_we <= c_we;
        s1_addr <= c_addr;
        s1_size <= c_size;
        s1_wdata <= c_wdata;
        s1_fc <= c_fc;
        s1_in <= {1'b0, c_addr[1:0]} + nbytes(c_size) <= 3'd4;
      end

      // an access straight through: to the bus from the next edge, then
      // wait for its answer
      if (bus_resp) begin st <= ST_IDLE; f_wait <= 1'b0; end
      if (st == ST_IDLE && s1_v && s1_direct) begin
        st <= ST_BUS;
        f_addr <= s1_addr; f_size <= s1_size; f_we <= s1_we; f_wdata <= s1_wdata; f_fc <= s1_fc;
        f_wait <= 1'b0;
      end
      if (st == ST_BUS && !wq_v[0] && b_req && b_gnt) f_wait <= 1'b1;
      // a write across a long: the lines of its first and last byte go
      if (s1_wr && !s1_in) begin
        valid[s1_addr[11:4]] <= 1'b0;
        valid[s1_addr[11:4] + 8'd1] <= 1'b0;
      end

      // a read miss fills the line (once the write buffer is empty)
      if (st == ST_IDLE && s1_miss) begin
        f_addr <= s1_addr;
        f_size <= s1_size;
        f_fc <= s1_fc;
        f_next <= s1_addr[3:2];
        f_got <= s1_addr[3:2];
        f_left <= 3'd4;
        f_bad <= 1'b0;
        st <= ST_FILL;
        valid[s1_addr[11:4]] <= 1'b0;
      end

      if (st == ST_FILL)
        f_out <= f_out + 3'(!wq_v[0] && b_req && b_gnt) - 3'(fill_wr);
      if (st == ST_FILL && !wq_v[0] && b_req && b_gnt) begin
        f_next <= f_next + 2'd1;
        f_left <= f_left - 3'd1;
      end
      if (fill_wr) begin
        f_got <= f_got + 2'd1;
        if (b_err) f_bad <= 1'b1;
        if (f_left == 3'd0 && f_out == 3'd1) begin
          valid[f_addr[11:4]] <= !(f_bad || b_err);
          st <= ST_IDLE;
        end
      end

      if (inval) begin
        for (int i = 0; i < LINES; i++) valid[i] <= 1'b0;
        if (st == ST_FILL) f_bad <= 1'b1;
      end
    end
  end

endmodule
