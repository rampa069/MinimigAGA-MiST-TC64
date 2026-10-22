// SPDX-License-Identifier: LGPL-3.0-or-later
// Fetch: aligned longwords from the instruction port into a queue of
// 16 words whose head is the next instruction to decode. The queue decode
// sees (q, q_count) includes the words arriving in this cycle, so a target
// fetched by a redirect is decoded as it comes. A fetch that faults (i_err:
// the MMU or a bus error) gives words marked in qf, and the queue fills on
// with marked words, without fetching, until the next redirect: decode
// takes the access error only for an instruction that needs one of them.
// REG_ADDR: the request comes from registers only (a redirect fetches its
// target from the next cycle on), and decode sees the queue registers only
// (words are decoded from the cycle after they arrive), so the paths
// through the instruction port and decode are apart.

module m68k_fetch #(
  parameter bit REG_ADDR = 1'b0
) (
  input  logic        clk,
  input  logic        rst,
  input  logic        ce,             // clock enable

  input  logic        redirect,       // empty the queue, fetch from redirect_pc
  input  logic [31:0] redirect_pc,
  input  logic [3:0]  consume,        // words taken from the head by decode

  output logic [15:0] q [16],          // the queue with this cycle's words
  output logic [1:0]  qf [16],         // the word's fetch faulted {fault, by the MMU (else a bus error)}
  output logic [4:0]  q_count,
  output logic [31:0] q_pc,           // address of q[0]

  output logic        i_req,
  output logic [31:0] i_addr,
  input  logic        i_gnt,
  input  logic        i_rvalid,
  input  logic [1:0]  i_err,          // with i_rvalid: {fault, by the MMU}
  input  logic [31:0] i_rdata
);

  logic        running;               // a first redirect gave the start address
  logic [31:0] f_addr;                // next longword to request
  logic [1:0]  pending;               // requests granted, responses not back
  logic [1:0]  discard;               // responses of before the last redirect
  logic        skip_hi;               // the target was the low word of its longword

  logic [15:0] qr [16];                // the queue registers
  logic [1:0]  qfr [16];
  logic        faulted;               // a fetch faulted: marked words from now on
  logic [1:0]  fcode;                 // its fault
  logic [4:0]  qr_count;
  logic [4:0]  space_needed;
  assign space_needed = 5'(qr_count) + 5'({pending, 1'b0}) + 5'd2;
  // a redirect requests its target in the same cycle (the queue empties),
  // or with REG_ADDR from the next one
  logic early;
  assign early = !REG_ADDR && redirect;
  assign i_req  = (running || early) && pending != 2'd2 && (early || (space_needed <= 5'd16 && !faulted));
  assign i_addr = early ? {redirect_pc[31:2], 2'b00} : {f_addr[31:2], 2'b00};

  logic take, fill;                    // a response for the queue this cycle, marked words
  assign take = i_rvalid && discard == 2'd0;
  assign fill = faulted && !take && qr_count <= 5'd14;

  // the queue with this cycle's words (qa), and what decode sees: the same,
  // or with REG_ADDR the registers only
  logic [15:0] qa [16];
  logic [1:0]  qfa [16];
  logic [4:0]  qa_count;
  always_comb begin
    for (int i = 0; i < 16; i++) begin
      q[i] = REG_ADDR ? qr[i] : qa[i];
      qf[i] = REG_ADDR ? qfr[i] : qfa[i];
    end
    q_count = REG_ADDR ? qr_count : qa_count;
  end

  always_comb begin
    for (int i = 0; i < 16; i++) begin qa[i] = qr[i]; qfa[i] = qfr[i]; end
    qa_count = qr_count;
    if (take) begin
      if (skip_hi) begin
        qa[qr_count[3:0]] = i_rdata[15:0];
        qfa[qr_count[3:0]] = faulted ? fcode : i_err;
        qa_count = qr_count + 5'd1;
      end else begin
        qa[qr_count[3:0]] = i_rdata[31:16];
        qa[4'(qr_count + 5'd1)] = i_rdata[15:0];
        qfa[qr_count[3:0]] = faulted ? fcode : i_err;
        qfa[4'(qr_count + 5'd1)] = faulted ? fcode : i_err;
        qa_count = qr_count + 5'd2;
      end
    end else if (fill) begin
      qa[qr_count[3:0]] = 16'h0000;
      qa[4'(qr_count + 5'd1)] = 16'h0000;
      qfa[qr_count[3:0]] = fcode;
      qfa[4'(qr_count + 5'd1)] = fcode;
      qa_count = qr_count + 5'd2;
    end
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      running <= 1'b0;
      f_addr  <= '0;
      pending <= '0;
      discard <= '0;
      skip_hi <= 1'b0;
      qr_count <= '0;
      q_pc    <= '0;
      faulted <= 1'b0;
    end else if (ce) begin
      logic [1:0] pend_n;
      pend_n = pending + 2'(i_req && i_gnt) - 2'(i_rvalid);
      pending <= pend_n;
      if (i_rvalid && discard != 2'd0)
        discard <= discard - 2'd1;
      if (i_req && i_gnt)
        f_addr <= f_addr + 32'd4;

      if (redirect) begin
        running <= 1'b1;
        f_addr  <= {redirect_pc[31:2], 2'b00} + ((early && i_req && i_gnt) ? 32'd4 : 32'd0);
        // every response still to come from before is stale (one returning
        // now is dropped); the target's, if requested now, is not
        discard <= pend_n - 2'(early && i_req && i_gnt);
        skip_hi <= redirect_pc[1];
        faulted <= 1'b0;
        qr_count <= '0;
        q_pc    <= {redirect_pc[31:1], 1'b0};
      end else begin
        for (int i = 0; i < 16; i++) begin
          qr[i] <= (i + int'(consume) < 16) ? qa[i + int'(consume)] : 16'h0000;
          qfr[i] <= (i + int'(consume) < 16) ? qfa[i + int'(consume)] : 2'b00;
        end
        if (take) skip_hi <= 1'b0;
        if (take && i_err[1] && !faulted) begin faulted <= 1'b1; fcode <= i_err; end
        qr_count <= qa_count - 5'(consume);
        q_pc    <= q_pc + {27'd0, consume, 1'b0};
      end
    end
  end

`ifdef DEBUG_FETCH
  always_ff @(posedge clk)
    if (!rst && (redirect || (i_req && i_gnt) || i_rvalid))
      $display("fetch t=%0t redir=%b pc=%h req=%b addr=%h rvalid=%b data=%h discard=%0d pending=%0d qpc=%h qc=%0d consume=%0d",
               $time, redirect, redirect_pc, i_req && i_gnt, i_addr, i_rvalid, i_rdata, discard, pending, q_pc, qr_count, consume);
`endif

endmodule
