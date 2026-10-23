// SPDX-License-Identifier: LGPL-3.0-or-later
// The caches' requests to the bus interface across two clock domains: the
// core, its caches and the line port unit on clk_c (the core's own clock),
// m68k_biu on clk_b with the wrapper's clock enable (MinimigAGA's 114 MHz
// and TG68K.vhd's clkena), so everything the machine around does on that
// bus stays as it is.
//
// One access at a time, the data port's first (as m68k_biu takes them):
//   - clk_c: a request is granted when none is in flight; it is held in
//     registers and req_t toggles
//   - clk_b: req_t, through two flip-flops, starts the access on m68k_biu's
//     port (taken on an enabled edge); its answer is held in registers and
//     ack_t toggles
//   - clk_c: ack_t, through two flip-flops, gives rvalid with that answer
// The request and the answer are stable two clocks of the other side
// before it looks at them (the SDC makes those paths false).

module m68k_xport
  import m68k_pkg::*;
(
  // the core's side
  input  logic        clk_c,
  input  logic        rst_c,
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

  // the bus interface's side
  input  logic        clk_b,
  input  logic        rst_b,
  input  logic        ce_b,           // its clock enable
  output logic        bi_req,
  output logic [31:0] bi_addr,
  output logic [2:0]  bi_fc,
  input  logic        bi_gnt,
  input  logic        bi_rvalid,
  input  logic        bi_err,
  input  logic [31:0] bi_rdata,
  output logic        bd_req,
  output logic        bd_we,
  output logic [31:0] bd_addr,
  output size_e       bd_size,
  output logic [31:0] bd_wdata,
  output logic [2:0]  bd_fc,
  input  logic        bd_gnt,
  input  logic        bd_rvalid,
  input  logic        bd_err,
  input  logic [31:0] bd_rdata
);

  // ------------------------------------------------------------ clk_c

  logic        busy, req_t;
  logic        r_fetch, r_we;
  logic [31:0] r_addr, r_wdata;
  size_e       r_size;
  logic [2:0]  r_fc;
  logic        ack_s1, ack_s2, ack_s3;
  logic        b_ack_t;                 // (clk_b)
  logic        b_err;
  logic [31:0] b_rdata;

  assign d_gnt = d_req && !busy;
  assign i_gnt = i_req && !d_req && !busy;

  always_ff @(posedge clk_c) begin
    ack_s1 <= b_ack_t;
    ack_s2 <= ack_s1;
    ack_s3 <= ack_s2;
    i_rvalid <= 1'b0;
    d_rvalid <= 1'b0;
    if (rst_c) begin
      busy <= 1'b0;
      req_t <= 1'b0;
      ack_s1 <= 1'b0; ack_s2 <= 1'b0; ack_s3 <= 1'b0;
    end else begin
      if (d_gnt || i_gnt) begin
        busy <= 1'b1;
        req_t <= !req_t;
        r_fetch <= !d_req;
        r_we <= d_req && d_we;
        r_addr <= d_req ? d_addr : i_addr;
        r_size <= d_req ? d_size : SZ_L;
        r_wdata <= d_wdata;
        r_fc <= d_req ? d_fc : i_fc;
      end
      if (ack_s2 != ack_s3) begin
        busy <= 1'b0;
        if (r_fetch) begin i_rvalid <= 1'b1; i_err <= b_err; i_rdata <= b_rdata; end
        else         begin d_rvalid <= 1'b1; d_err <= b_err; d_rdata <= b_rdata; end
      end
    end
  end

  // ------------------------------------------------------------ clk_b

  logic req_s1, req_s2, req_s3;
  logic pend, waiting;

  assign bi_req = pend && r_fetch;
  assign bi_addr = r_addr;
  assign bi_fc = r_fc;
  assign bd_req = pend && !r_fetch;
  assign bd_we = r_we;
  assign bd_addr = r_addr;
  assign bd_size = r_size;
  assign bd_wdata = r_wdata;
  assign bd_fc = r_fc;

  always_ff @(posedge clk_b) begin
    req_s1 <= req_t;
    req_s2 <= req_s1;
    req_s3 <= req_s2;
    if (rst_b) begin
      pend <= 1'b0;
      waiting <= 1'b0;
      b_ack_t <= 1'b0;
      req_s1 <= 1'b0; req_s2 <= 1'b0; req_s3 <= 1'b0;
    end else begin
      if (req_s2 != req_s3) pend <= 1'b1;
      // taken by m68k_biu on an enabled edge
      if (ce_b && pend && (r_fetch ? bi_gnt : bd_gnt)) begin
        pend <= 1'b0;
        waiting <= 1'b1;
      end
      // its answer (held from an enabled edge to the next)
      if (waiting && (r_fetch ? bi_rvalid : bd_rvalid)) begin
        waiting <= 1'b0;
        b_err <= r_fetch ? bi_err : bd_err;
        b_rdata <= r_fetch ? bi_rdata : bd_rdata;
        b_ack_t <= !b_ack_t;
      end
    end
  end

endmodule
