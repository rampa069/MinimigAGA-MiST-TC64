// SPDX-License-Identifier: LGPL-3.0-or-later
// Instruction cache between the core's instruction port and the bus
// interface: 4 Kbytes as the 68040's, direct mapped, 16-byte lines.
//
// A fetch (an aligned long) is looked up on the enabled edge that takes it
// and answered on the next one when it hits. A miss fills the line through
// the bus interface, the long asked for first (it answers as it comes) and
// the others after it, wrapping; the line becomes valid once all four are
// in. Fetches the cache does not keep go straight to the bus: CACR IE clear,
// or an address in one of the windows never cached (NC0, NC1: memory that
// something else than this core writes, as the Amiga's chip RAM, and
// registers).
//
// The core's own writes (the data port) invalidate the line they hit, also
// one being filled, so code written by the program is fetched again (a
// 68040 needs CPUSH for that; TG68K.C has no cache). CINV and CPUSH of the
// instruction cache invalidate all of it. Writes by DMA are not seen: what
// they write must be in a window never cached. Fetches from the bus wait
// for the data cache's write buffer to empty.

module m68k_icache
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
  input  logic        enable,         // CACR IE
  input  logic        inval,          // CINV/CPUSH of this cache (with ce)

  // the core's instruction port
  input  logic        c_req,
  input  logic [31:0] c_addr,
  input  logic [2:0]  c_fc,
  output logic        c_gnt,
  output logic        c_rvalid,
  output logic        c_err,
  output logic [31:0] c_rdata,

  // the core's writes, to invalidate (with ce: a write taken)
  input  logic        snoop,
  input  logic [31:0] snoop_addr,
  input  logic        wb_empty,       // the data cache's write buffer is empty: memory is up to date

  // to the bus interface
  output logic        b_req,
  output logic [31:0] b_addr,
  output logic [2:0]  b_fc,
  input  logic        b_gnt,
  input  logic        b_rvalid,
  input  logic        b_err,
  input  logic [31:0] b_rdata
);

  localparam int LINES = 256;

  logic [31:0] data_ram [LINES * 4];
  logic [19:0] tag_ram [LINES];
  logic        valid [LINES];

  /* verilator lint_off UNSIGNED */      // (a window from 0)
  function automatic logic cacheable(input logic [31:0] a);
    return enable && !(a >= NC0_LO && a < NC0_HI) && !(a >= NC1_LO && a < NC1_HI);
  endfunction
  /* verilator lint_on UNSIGNED */

  // the lookup: taken on one enabled edge, answered on the next
  logic        s1_v, s1_c;
  logic [31:0] s1_addr;
  logic [2:0]  s1_fc;
  logic [31:0] q_data;
  logic [19:0] q_tag;
  logic        s1_hit;
  assign s1_hit = s1_v && s1_c && valid[s1_addr[11:4]] && q_tag == s1_addr[31:12];

  // a fill or a fetch the cache does not keep
  typedef enum logic [1:0] { ST_IDLE, ST_FILL, ST_BYPASS } st_e;
  st_e         st;
  logic [31:0] f_addr;                  // the long asked for
  logic [2:0]  f_fc;
  logic [1:0]  f_next;                  // the long of the line to ask for next
  logic [2:0]  f_left;                  // longs not asked for yet
  logic        f_wait;                  // one asked for, not answered yet
  logic [1:0]  f_got;                   // the long being answered
  logic        f_bad;                   // the line will not be valid (an error, a write to it)
  logic        resp_v, resp_err;
  logic [31:0] resp_d;

  assign c_gnt = c_req && st == ST_IDLE && (!s1_v || s1_hit);   // (acted on at enabled edges only)
  assign c_rvalid = (s1_hit && st == ST_IDLE) || resp_v;
  assign c_err = resp_v && resp_err;
  assign c_rdata = resp_v ? resp_d : q_data;

  // (a fetch waits for the data cache's buffered writes: they may be code)
  assign b_req = wb_empty && ((st == ST_FILL && f_left != 3'd0 && !f_wait) || (st == ST_BYPASS && !f_wait));
  assign b_addr = st == ST_BYPASS ? f_addr : {f_addr[31:4], f_next, 2'b00};
  assign b_fc = f_fc;

  // the tags of the core's writes, read on a second port
  logic        sn_v;
  logic [31:0] sn_addr;
  logic [19:0] sn_tag;

  // a write to the line being filled
  logic sn_fill;
  assign sn_fill = st == ST_FILL && snoop && snoop_addr[31:4] == f_addr[31:4];

  // a long of the fill comes in; the last one writes the tag
  logic fill_wr, fill_end;
  assign fill_wr = ce && st == ST_FILL && b_rvalid && f_wait;
  assign fill_end = fill_wr && f_left == 3'd0;

  always_ff @(posedge clk) begin
    if (ce) begin
      q_data <= data_ram[c_addr[11:2]];
      q_tag <= tag_ram[c_addr[11:4]];
      sn_tag <= tag_ram[snoop_addr[11:4]];
    end
    if (fill_wr) data_ram[{f_addr[11:4], f_got}] <= b_rdata;
    if (fill_end) tag_ram[f_addr[11:4]] <= f_addr[31:12];
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      s1_v <= 1'b0;
      st <= ST_IDLE;
      resp_v <= 1'b0;
      sn_v <= 1'b0;
      f_wait <= 1'b0;
      for (int i = 0; i < LINES; i++) valid[i] <= 1'b0;
    end else if (ce) begin
      resp_v <= 1'b0;

      // a new lookup, or the one in s1 answered
      if (c_gnt) begin
        s1_v <= 1'b1;
        s1_addr <= c_addr;
        s1_fc <= c_fc;
        s1_c <= cacheable(c_addr);
      end else if (s1_v && (s1_hit || st == ST_IDLE))
        s1_v <= 1'b0;

      // a miss: fill the line, or fetch it alone
      if (st == ST_IDLE && s1_v && !s1_hit) begin
        f_addr <= s1_addr;
        f_fc <= s1_fc;
        f_next <= s1_addr[3:2];
        f_left <= 3'd4;
        f_bad <= 1'b0;
        f_wait <= 1'b0;
        st <= s1_c ? ST_FILL : ST_BYPASS;
        if (s1_c) valid[s1_addr[11:4]] <= 1'b0;
      end

      if (b_req && b_gnt) begin
        f_wait <= 1'b1;
        f_got <= f_next;
        f_next <= f_next + 2'd1;
        if (st == ST_FILL) f_left <= f_left - 3'd1;
      end
      if (b_rvalid && f_wait) begin
        f_wait <= 1'b0;
        if (st == ST_BYPASS) begin
          resp_v <= 1'b1; resp_err <= b_err; resp_d <= b_rdata;
          st <= ST_IDLE;
        end else begin
          if (f_got == f_addr[3:2]) begin
            resp_v <= 1'b1; resp_err <= b_err; resp_d <= b_rdata;
          end
          if (b_err) f_bad <= 1'b1;
          if (f_left == 3'd0) begin
            // the line is in: valid unless an error or a write spoilt it
            valid[f_addr[11:4]] <= !(f_bad || b_err || sn_fill);
            st <= ST_IDLE;
          end
        end
      end

      // the core's writes: the tag is read on this edge, compared on the next
      sn_v <= snoop;
      sn_addr <= snoop_addr;
      if (sn_v && sn_tag == sn_addr[31:12]) valid[sn_addr[11:4]] <= 1'b0;
      if (sn_fill) f_bad <= 1'b1;

      if (inval) begin
        for (int i = 0; i < LINES; i++) valid[i] <= 1'b0;
        if (st == ST_FILL) f_bad <= 1'b1;
      end
    end
  end

endmodule
