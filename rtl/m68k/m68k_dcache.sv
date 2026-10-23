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
//
// COPYBACK: the 68040's copyback mode for everything the cache keeps, with
// write allocate. A write within a long looked up as a read is: a hit
// updates the line and marks it dirty, a miss fills the line first (the
// write merged into the long asked for). A dirty line goes to the bus,
// four longs through the write buffer, before its place is filled; an
// access straight through that the cache keeps (across a long) first
// pushes and drops the lines it touches; CINV and CPUSH push every dirty
// line, then drop it (CINV too: nothing on the Amiga writes behind the
// cache what it keeps). wb_empty stays low while dirty data is on its way.

module m68k_dcache
  import m68k_pkg::*;
#(
  parameter logic [31:0] NC0_LO = 32'h00000000,
  parameter logic [31:0] NC0_HI = 32'h00000000,
  parameter logic [31:0] NC1_LO = 32'h00000000,
  parameter logic [31:0] NC1_HI = 32'h00000000,
  parameter bit          COPYBACK = 1'b0,
  parameter int          LINES_LOG2 = 8      // 256 lines of 16 bytes: 4 Kbytes
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

  output logic        wb_empty,       // no buffered write left (COPYBACK: nor dirty data for i_line)
  input  logic        i_want,         // the instruction cache reads memory for i_line
  input  logic [31:4] i_line,

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

  localparam int LINES = 1 << LINES_LOG2;
  localparam int IB = LINES_LOG2 + 3;   // the index's last address bit
  localparam int TW = 28 - LINES_LOG2;  // tag bits
  localparam int WBN = 4;               // write buffer entries

  // the data in four banks, a long of each line in each: the whole line is
  // read at once, so an access anywhere within it is one lookup
  logic [31:0] bank0 [LINES], bank1 [LINES], bank2 [LINES], bank3 [LINES];
  logic [TW-1:0] tag_ram [LINES];
  logic        valid [LINES];
  logic        dirty [LINES];

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

  // the bytes of an access within the line l, right-justified
  function automatic logic [31:0] from_line(input logic [127:0] l, input logic [3:0] off, input size_e s);
    logic [127:0] v;
    v = l << (8 * off);
    return (s == SZ_B) ? {24'd0, v[127:120]} : (s == SZ_W) ? {16'd0, v[127:112]} : v[127:96];
  endfunction

  // the line l with an access's bytes written in, and the longs it touches
  function automatic logic [127:0] line_merge(input logic [127:0] l, input logic [3:0] off, input size_e s,
                                              input logic [31:0] d);
    logic [127:0] m, v;
    m = {(s == SZ_B) ? 32'hFF000000 : (s == SZ_W) ? 32'hFFFF0000 : 32'hFFFFFFFF, 96'd0} >> (8 * off);
    v = {(s == SZ_B) ? {d[7:0], 24'd0} : (s == SZ_W) ? {d[15:0], 16'd0} : d, 96'd0} >> (8 * off);
    return (l & ~m) | (v & m);
  endfunction
  function automatic logic [3:0] line_longs(input logic [3:0] off, input size_e s);
    logic [3:0] m;
    logic [1:0] last;
    last = 2'(({1'b0, off} + {2'b00, nbytes(s)} - 5'd1) >> 2);
    for (int k = 0; k < 4; k++) m[3 - k] = 2'(k) >= off[3:2] && 2'(k) <= last;
    return m;
  endfunction

  // the write buffer, oldest at 0; the head stays until the bus has it
  logic        wq_v [WBN];
  logic [31:0] wq_a [WBN], wq_d [WBN];
  size_e       wq_s [WBN];
  logic [2:0]  wq_fc [WBN];
  logic        wq_out;                  // the head is on the bus

  // an access taken, looked up on the next enabled edge
  logic        s1_v, s1_we, s1_in;        // s1_in: within one line
  logic        s1_direct;                 // it goes to the bus as it is
  logic [31:0] s1_addr, s1_wdata;
  size_e       s1_size;
  logic [2:0]  s1_fc;
  logic [127:0] q_line;
  logic [TW-1:0] q_tag;
  logic        s1_tag_hit, s1_rd_hit, s1_miss, s1_wr, s1_wmiss;
  assign s1_tag_hit = valid[s1_addr[IB:4]] && q_tag == s1_addr[31:IB+1];
  assign s1_rd_hit = s1_v && !s1_direct && !s1_we && s1_tag_hit;
  assign s1_miss = s1_v && !s1_direct && !s1_we && !s1_tag_hit;
  assign s1_wr = s1_v && !s1_direct && s1_we;
  assign s1_wmiss = COPYBACK && s1_wr && !s1_tag_hit;   // write allocate

  typedef enum logic [2:0] { ST_IDLE, ST_FILL, ST_BUS, ST_EVICT, ST_DCHK, ST_FLUSH } st_e;
  st_e         st;
  logic [31:0] f_addr, f_wdata;
  size_e       f_size;
  logic        f_we, f_inv, f_xl;          // f_xl: the access spans two longs
  logic [127:0] f_line;                      // the fill's longs so far
  logic [2:0]  f_fc;
  logic [1:0]  f_next, f_got;
  logic [2:0]  f_left;
  logic        f_wait, f_bad;              // f_wait: an access straight through on the bus
  logic [2:0]  f_out;                      // a fill's longs asked for, not answered yet

  // COPYBACK: a dirty line pushed (ev_*), then on to ev_ret; the lines an
  // access straight through touches (f_l1, f_l2, dck); CINV/CPUSH (fl_*)
  logic [LINES_LOG2-1:0] ev_idx, f_l1, f_l2, fl_idx;
  logic [2:0]  ev_k;
  logic        ev_inv, dck, fl_pend;
  st_e         ev_ret;
  logic [127:0] ev_ql;
  logic [TW-1:0] ev_tq;
  logic        ev_put;
  logic [31:0] ev_pa;
  assign ev_put = COPYBACK && st == ST_EVICT && ev_k != 3'd0;     // long ev_k - 1, read on the edge before
  assign ev_pa = {ev_tq, ev_idx, ev_k[1:0] - 2'd1, 2'b00};
  logic [31:0] ev_q;
  logic [1:0]  ev_li;                      // the long pushed: ev_k - 1
  assign ev_li = ev_k[1:0] - 2'd1;
  assign ev_q = ev_ql[127 - 32 * int'(ev_li) -: 32];
  // the instruction cache's line, looked up in the tags on a third port:
  // dirty here, it is pushed before the instruction cache reads it
  logic [31:4] isn_a;
  logic [TW-1:0] isn_tq;
  logic        isn_ok, isn_hit;
  assign isn_ok = isn_a == i_line;
  assign isn_hit = COPYBACK && i_want && isn_ok && valid[i_line[IB:4]] && dirty[i_line[IB:4]] &&
                   isn_tq == i_line[31:IB+1];
  assign wb_empty = !wq_v[0] &&
                    !(COPYBACK && (st == ST_EVICT || st == ST_FLUSH || fl_pend || (i_want && (!isn_ok || isn_hit))));

  // what an access is: buffered (a write the cache keeps), straight
  // through (an access it does not keep, a read across a long), or a read
  // looked up
  logic c_buf, c_cbw, c_direct, c_free, fill_crit, c_inl;
  assign c_inl = {1'b0, c_addr[3:0]} + {2'b00, nbytes(c_size)} <= 5'd16;
  assign c_cbw = COPYBACK && c_we && cacheable(c_addr) && c_inl;
  assign c_buf = c_we && cacheable(c_addr) && !COPYBACK;
  assign c_direct = !c_buf && !c_cbw && (c_we || !cacheable(c_addr) || !c_inl);
  // free for a new access, also in the cycle the last one is answered
  logic bus_resp;
  assign bus_resp = st == ST_BUS && f_wait && b_rvalid;
  assign c_free = (st == ST_IDLE && !s1_miss && !s1_wmiss && !(s1_v && s1_direct) &&
                   !(COPYBACK && (fl_pend || isn_hit))) || bus_resp;
  assign c_gnt = c_req && c_free && !wq_v[WBN - 1];   // (acted on at enabled edges only)
  // the long asked for of a fill, answered as it comes
  // (one across two longs: once the line is in)
  logic fill_xl_end;
  logic [127:0] f_line_in;
  assign fill_crit = st == ST_FILL && f_out != 3'd0 && b_rvalid && f_got == f_addr[3:2] && !f_xl;
  assign c_rvalid = (st == ST_IDLE && (s1_rd_hit || (s1_wr && !s1_wmiss))) || bus_resp || fill_crit || fill_xl_end;
  assign c_err = (bus_resp || fill_crit) && b_err || (fill_xl_end && (f_bad || b_err));
  assign c_rdata = (st == ST_BUS) ? b_rdata : fill_crit ? extract(b_rdata, f_addr[1:0], f_size) :
                   fill_xl_end ? from_line(f_line_in, f_addr[3:0], f_size) :
                   from_line(q_line, s1_addr[3:0], s1_size);

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
  assign hit_wr = ce && st == ST_IDLE && s1_wr && s1_in && s1_tag_hit;
  // (without ce, as fill_crit: the answer reaches the core, clkena_in stays
  // off its paths)
  assign fill_xl_end = st == ST_FILL && !wq_v[0] && b_rvalid && f_out == 3'd1 && f_left == 3'd0 && f_xl;
  // the line as filled so far with this long in
  always_comb begin
    f_line_in = f_line;
    f_line_in[127 - 32 * int'(f_got) -: 32] = b_rdata;
  end

  // the banks' writes: a long of a fill (a write allocated merged in), the
  // longs a write that hits touches
  logic [LINES_LOG2-1:0] w_idx;
  logic [3:0]   w_en;
  logic [127:0] w_line;
  always_comb begin
    w_idx = s1_addr[IB:4];
    w_en = 4'd0;
    w_line = line_merge(q_line, s1_addr[3:0], s1_size, s1_wdata);
    if (fill_wr) begin
      w_idx = f_addr[IB:4];
      w_en = 4'b1000 >> f_got;
      w_line = {4{b_rdata}};
      if (f_we) w_line = line_merge(w_line, f_addr[3:0], f_size, f_wdata);
    end else if (hit_wr)
      w_en = line_longs(s1_addr[3:0], s1_size);
  end

  always_ff @(posedge clk) begin
    if (ce) begin
      q_line <= {bank0[c_addr[IB:4]], bank1[c_addr[IB:4]], bank2[c_addr[IB:4]], bank3[c_addr[IB:4]]};
      q_tag <= tag_ram[c_addr[IB:4]];
      if (COPYBACK) begin
        ev_ql <= {bank0[ev_idx], bank1[ev_idx], bank2[ev_idx], bank3[ev_idx]};
        ev_tq <= tag_ram[ev_idx];
        isn_tq <= tag_ram[i_line[IB:4]];
        isn_a <= i_line;
      end
    end
    if (w_en[3]) bank0[w_idx] <= w_line[127:96];
    if (w_en[2]) bank1[w_idx] <= w_line[95:64];
    if (w_en[1]) bank2[w_idx] <= w_line[63:32];
    if (w_en[0]) bank3[w_idx] <= w_line[31:0];
    if (fill_end) tag_ram[f_addr[IB:4]] <= f_addr[31:IB+1];
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      s1_v <= 1'b0;
      st <= ST_IDLE;
      f_wait <= 1'b0;
      f_out <= 3'd0;
      wq_out <= 1'b0;
      for (int i = 0; i < WBN; i++) wq_v[i] <= 1'b0;
      for (int i = 0; i < LINES; i++) begin valid[i] <= 1'b0; dirty[i] <= 1'b0; end
      fl_pend <= 1'b0;
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
        // a dirty line's long, pushed
        put = ev_put;
        for (int i = 0; i < WBN; i++)
          if (put && !nv[i]) begin
            nv[i] = 1'b1; na[i] = ev_pa; nd[i] = ev_q; ns[i] = SZ_L; nf[i] = 3'd5;
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
        s1_in <= c_inl;
      end

      // an access straight through: to the bus from the next edge, then
      // wait for its answer
      if (bus_resp) begin st <= ST_IDLE; f_wait <= 1'b0; end
      if (st == ST_IDLE && s1_v && s1_direct) begin
        st <= (COPYBACK && cacheable(s1_addr)) ? ST_DCHK : ST_BUS;
        f_addr <= s1_addr; f_size <= s1_size; f_we <= s1_we; f_wdata <= s1_wdata; f_fc <= s1_fc;
        f_wait <= 1'b0;
        f_l1 <= s1_addr[IB:4];
        f_l2 <= LINES_LOG2'(({1'b0, s1_addr[IB:0]} + (IB+2)'(nbytes(s1_size)) - (IB+2)'(1)) >> 4);
        dck <= 1'b0;
      end
      if (st == ST_BUS && !wq_v[0] && b_req && b_gnt) f_wait <= 1'b1;
      // a write across a line: the lines of its first and last byte go
      if (!COPYBACK && s1_wr && !s1_in) begin
        valid[s1_addr[IB:4]] <= 1'b0;
        valid[s1_addr[IB:4] + LINES_LOG2'(1)] <= 1'b0;
      end

      // a read miss fills the line (once the write buffer is empty), and
      // so does a write miss with COPYBACK, after the line's dirty data
      if (st == ST_IDLE && (s1_miss || s1_wmiss)) begin
        f_addr <= s1_addr;
        f_size <= s1_size;
        f_fc <= s1_fc;
        f_we <= s1_wmiss;
        f_wdata <= s1_wdata;
        f_xl <= {1'b0, s1_addr[1:0]} + nbytes(s1_size) > 3'd4;
        f_next <= s1_addr[3:2];
        f_got <= s1_addr[3:2];
        f_left <= 3'd4;
        f_bad <= 1'b0;
        f_inv <= 1'b0;
        if (COPYBACK && valid[s1_addr[IB:4]] && dirty[s1_addr[IB:4]]) begin
          st <= ST_EVICT;
          ev_idx <= s1_addr[IB:4]; ev_k <= 3'd0; ev_inv <= 1'b0; ev_ret <= ST_FILL;
        end else
          st <= ST_FILL;
        valid[s1_addr[IB:4]] <= COPYBACK && valid[s1_addr[IB:4]] && dirty[s1_addr[IB:4]];
      end
      if (COPYBACK && hit_wr) dirty[s1_addr[IB:4]] <= 1'b1;

      if (COPYBACK) begin
        // a dirty line to the write buffer: once it is empty, a long a clock
        // (each read from the RAM on the edge before)
        if (st == ST_EVICT && !(ev_k == 3'd0 && wq_v[0])) begin
          ev_k <= ev_k + 3'd1;
          if (ev_k == 3'd4) begin
            dirty[ev_idx] <= 1'b0;
            valid[ev_idx] <= !ev_inv && ev_ret != ST_FILL;
            st <= ev_ret;
            ev_k <= 3'd0;
          end
        end
        // the lines an access straight through touches: pushed and dropped
        if (st == ST_DCHK) begin
          logic [LINES_LOG2-1:0] l;
          l = dck ? f_l2 : f_l1;
          if (valid[l] && dirty[l]) begin
            st <= ST_EVICT;
            ev_idx <= l; ev_k <= 3'd0; ev_inv <= 1'b1; ev_ret <= ST_DCHK;
          end else begin
            valid[l] <= 1'b0;
            if (dck || f_l1 == f_l2) st <= ST_BUS;
            else dck <= 1'b1;
          end
        end
        // the instruction cache's line, dirty here: pushed, kept
        if (st == ST_IDLE && isn_hit && !s1_v && !fl_pend) begin
          st <= ST_EVICT;
          ev_idx <= i_line[IB:4]; ev_k <= 3'd0; ev_inv <= 1'b0; ev_ret <= ST_IDLE;
        end
        // CINV, CPUSH: every dirty line pushed, every line dropped
        if (inval) fl_pend <= 1'b1;
        if (st == ST_IDLE && fl_pend && !s1_v) begin
          st <= ST_FLUSH;
          fl_idx <= '0;
        end
        if (st == ST_FLUSH) begin
          if (valid[fl_idx] && dirty[fl_idx]) begin
            st <= ST_EVICT;
            ev_idx <= fl_idx; ev_k <= 3'd0; ev_inv <= 1'b1; ev_ret <= ST_FLUSH;
          end else begin
            valid[fl_idx] <= 1'b0;
            fl_idx <= fl_idx + LINES_LOG2'(1);
            if (fl_idx == LINES_LOG2'(LINES - 1)) begin
              st <= ST_IDLE;
              fl_pend <= 1'b0;
            end
          end
        end
      end

      if (st == ST_FILL)
        f_out <= f_out + 3'(!wq_v[0] && b_req && b_gnt) - 3'(fill_wr);
      if (st == ST_FILL && !wq_v[0] && b_req && b_gnt) begin
        f_next <= f_next + 2'd1;
        f_left <= f_left - 3'd1;
      end
      if (fill_wr) begin
        f_got <= f_got + 2'd1;
        f_line <= f_line_in;
        if (b_err) f_bad <= 1'b1;
        if (f_left == 3'd0 && f_out == 3'd1) begin
          // (a write merged in stays, dirty, whatever CINV did meanwhile)
          valid[f_addr[IB:4]] <= !(f_bad || b_err) && !(f_inv && !f_we);
          if (COPYBACK) dirty[f_addr[IB:4]] <= f_we && !(f_bad || b_err);
          st <= ST_IDLE;
        end
      end

      if (inval && !COPYBACK) begin
        for (int i = 0; i < LINES; i++) valid[i] <= 1'b0;
        if (st == ST_FILL) f_bad <= 1'b1;
      end
      if (inval && COPYBACK && st == ST_FILL) f_inv <= 1'b1;
    end
  end

endmodule
