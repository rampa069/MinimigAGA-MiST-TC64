// SPDX-License-Identifier: LGPL-3.0-or-later
// Bus interface: the core's instruction and data ports onto the bus of
// TG68KdotC_Kernel, so the core drops into the wrappers made for it
// (MinimigAGA, MiSTer's cpu_wrapper).
//
// The bus is TG68K.C's: one 16-bit transfer per clkena_in, the outputs
// changing only on an enabled edge, data_in and berr taken on the enabled
// edge that ends the cycle; busstate 00 fetch, 10 read, 11 write, 01 none.
// One access is in flight: the data port's first, then the instruction
// port's. An access is cut into the cycles TG68K.C makes:
//   - a byte, or a word at an even address: one cycle
//   - a long at an even address: two words, longword set on the first
//     (MinimigAGA completes such a write with its low word, MiSTer holds and
//     merges it); at an address a multiple of 4, one cycle with long_req if
//     the memory answers long_ack
//   - an odd word or long: a byte, then words, then a byte
//   - a fetch (an aligned long): two words, no longword; newpc on the first
//     one that is not the word after the last fetched (MinimigAGA's
//     prefetch counts on it)
// Everything here moves on enabled edges only (phase 1: the core, its
// caches and this unit all run on the wrapper's clock enable, as TG68K.C):
// an access is taken and answered on an enabled edge.
// berr on a cycle ends the access there with a bus error (the 68040's TEA):
// as in TG68K.C, a long write that faults on its first word writes nothing
// more.

module m68k_biu
  import m68k_pkg::*;
(
  input  logic        clk,
  input  logic        rst,

  // the core's ports (as m68k_core's)
  input  logic        i_req,
  input  logic [31:0] i_addr,
  input  logic [2:0]  i_fc,
  output logic        i_gnt,
  output logic        i_rvalid,
  output logic        i_err,
  output logic [31:0] i_rdata,

  input  logic        d_req,
  input  logic        d_we,
  input  logic [31:0] d_addr,
  input  size_e       d_size,
  input  logic [31:0] d_wdata,
  input  logic [2:0]  d_fc,
  output logic        d_gnt,
  output logic        d_rvalid,
  output logic        d_err,
  output logic [31:0] d_rdata,

  // the TG68KdotC_Kernel bus
  input  logic        clkena_in,
  input  logic [15:0] data_in,
  input  logic        berr,
  input  logic        long_ack,
  input  logic [15:0] data_in_lo,
  output logic [31:0] addr_out,
  output logic [15:0] data_write,
  output logic [15:0] data_write_lo,
  output logic        nWr,
  output logic        nUDS,
  output logic        nLDS,
  output logic [1:0]  busstate,
  output logic        longword,
  output logic        long_req,
  output logic [2:0]  FC,
  output logic        newpc
);

  // the access: what is left of it from addr on
  logic        act;                     // an access accepted
  logic        on_bus;                  // one of its cycles is on the bus
  logic        a_fetch, a_we;
  logic [31:0] a_addr;                  // the next byte
  logic [2:0]  a_left;                  // bytes left (1-4)
  logic [2:0]  a_n;                     // bytes of the cycle on the bus
  logic [31:0] a_wdata;                 // write data, left-justified as it goes
  logic [31:0] a_rdata;                 // read data, shifted in
  logic [2:0]  a_fc;
  logic [31:0] next_fetch;              // the word after the last fetched

  // a new access is taken when none is left once this edge is through
  // (the grants leave clkena_in out: everything here and in the core acts
  // on enabled edges only, and clkena_in, which the wrappers make from
  // their memory's answer, stays off long paths)
  logic done_now, take_d, take_i;
  assign done_now = on_bus && (berr || a_left == a_n || (long_req && long_ack));
  assign take_d = d_req && (!act || done_now);
  assign take_i = i_req && !d_req && (!act || done_now);
  assign d_gnt = take_d;
  assign i_gnt = take_i;

  function automatic logic [2:0] nbytes(input size_e s);
    return (s == SZ_B) ? 3'd1 : (s == SZ_W) ? 3'd2 : 3'd4;
  endfunction

  // the cycle for left bytes from a: a byte at an odd address or for the
  // last one; else a word (or a long in one cycle, with long_req)
  function automatic logic [2:0] cycle_n(input logic [31:0] a, input logic [2:0] left);
    return (a[0] || left == 3'd1) ? 3'd1 : 3'd2;
  endfunction

  // the outputs of a bus cycle
  typedef struct packed {
    logic        on_bus;
    logic [2:0]  n;                     // its bytes
    logic [31:0] addr;
    logic [2:0]  fc;
    logic [1:0]  busstate;
    logic        nwr, nuds, nlds, lw, lreq, newpc;
    logic [15:0] dw, dwlo;
  } cyc_t;

  // the cycle for (a, left, wdata), or none
  function automatic cyc_t cyc(input logic go, input logic fetch, input logic we, input logic [31:0] a,
                               input logic [2:0] left, input logic [31:0] wd, input logic [2:0] fc,
                               input logic first, input logic [31:0] nf, input logic [31:0] old_a);
    cyc_t c;
    c = '0;
    c.addr = old_a;                     // (kept while no cycle is on the bus)
    c.fc = fc;
    c.busstate = 2'b01;
    c.nwr = 1'b1; c.nuds = 1'b1; c.nlds = 1'b1;
    if (go) begin
      c.on_bus = 1'b1;
      c.n = cycle_n(a, left);
      c.addr = a;
      c.busstate = fetch ? 2'b00 : we ? 2'b11 : 2'b10;
      c.nwr = !we;
      if (c.n == 3'd1) begin
        c.nuds = a[0]; c.nlds = !a[0];
        c.dw = {wd[31:24], wd[31:24]};
      end else begin
        c.nuds = 1'b0; c.nlds = 1'b0;
        c.dw = wd[31:16];
      end
      c.dwlo = wd[15:0];
      c.lw = !fetch && left == 3'd4 && !a[0];
      c.lreq = !fetch && left == 3'd4 && a[1:0] == 2'b00;
      c.newpc = fetch && first && a != nf;
    end
    return c;
  endfunction

  always_ff @(posedge clk) begin
    if (rst) begin
      i_rvalid <= 1'b0;
      d_rvalid <= 1'b0;
      act <= 1'b0;
      on_bus <= 1'b0;
      addr_out <= 32'd0;
      data_write <= 16'd0;
      data_write_lo <= 16'd0;
      FC <= 3'd6;
      busstate <= 2'b01;
      nUDS <= 1'b1;
      nLDS <= 1'b1;
      nWr <= 1'b1;
      longword <= 1'b0;
      long_req <= 1'b0;
      newpc <= 1'b0;
      next_fetch <= 32'hFFFFFFFF;
      i_err <= 1'b0;
      d_err <= 1'b0;
    end else if (clkena_in) begin
      logic [31:0] rd, na, nw;
      logic [2:0]  nl, got;
      logic        fin;
      rd = a_rdata; na = a_addr; nl = a_left; nw = a_wdata; fin = 1'b0;
      i_rvalid <= 1'b0;
      d_rvalid <= 1'b0;

      // the cycle on the bus ends
      if (on_bus) begin
        got = (a_n == 3'd2 && long_req && long_ack) ? 3'd4 : a_n;
        if (got == 3'd4)      rd = {data_in, data_in_lo};
        else if (got == 3'd2) rd = {rd[15:0], data_in};
        else                  rd = {rd[23:0], a_addr[0] ? data_in[7:0] : data_in[15:8]};
        na = a_addr + {29'd0, got};
        nl = a_left - got;
        nw = a_wdata << (8 * got);
        a_rdata <= rd; a_addr <= na; a_left <= nl; a_wdata <= nw;
        if (berr || nl == 3'd0) begin
          fin = 1'b1;
          act <= 1'b0;
          if (a_fetch) begin i_rvalid <= 1'b1; i_err <= berr; i_rdata <= rd; end
          else         begin d_rvalid <= 1'b1; d_err <= berr; d_rdata <= rd; end
        end
      end

      begin
        // what goes on the bus from this edge: a new access (at once if the
        // edge is enabled), the next cycle of this one, or none
        cyc_t        c;
        logic        f, w;
        logic [31:0] a, wd;
        logic [2:0]  l, fc;
        f = a_fetch; w = a_we; a = na; l = nl; wd = nw; fc = a_fc;
        if (take_d || take_i) begin
          f = take_i;
          w = take_d && d_we;
          a = take_i ? i_addr : d_addr;
          l = take_i ? 3'd4 : nbytes(d_size);
          // the write data left-justified: the first byte in 31-24
          wd = (l == 3'd1) ? {d_wdata[7:0], 24'd0} : (l == 3'd2) ? {d_wdata[15:0], 16'd0} : d_wdata;
          fc = take_i ? i_fc : d_fc;
          act <= 1'b1;
          a_fetch <= f; a_we <= w; a_addr <= a; a_left <= l; a_wdata <= wd; a_fc <= fc;
          a_rdata <= 32'd0;
        end
        c = cyc((take_d || take_i) || (act && !fin), f, w, a, l, wd, fc,
                (take_d || take_i) || !on_bus, next_fetch, addr_out);
        on_bus <= c.on_bus; a_n <= c.n; addr_out <= c.addr; FC <= c.fc; busstate <= c.busstate;
        nWr <= c.nwr; nUDS <= c.nuds; nLDS <= c.nlds; data_write <= c.dw; data_write_lo <= c.dwlo;
        longword <= c.lw; long_req <= c.lreq; newpc <= c.newpc;
        if (c.on_bus && f) next_fetch <= a + 32'd2;
      end
    end
  end

endmodule
