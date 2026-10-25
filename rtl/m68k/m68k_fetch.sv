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
//
// BTB: a table of the taken jumps decode redirected the fetch for, by the
// longword of their last word (bt_*). When the fetch asks for such a
// longword it asks for the jump's target next, without waiting for decode:
// the words after the jump in its longword are dropped, the target's
// first ones before it too, and a mark (mk_*) says that the queue goes on
// at the target from that word on (up to MKN marks). Decode checks it: an
// instruction that ends at the mark and that it predicts to the same
// target goes on with no redirect, q_pc becoming the target as it is
// consumed; anything else redirects as before (and bt_kill drops the
// entry), so the marks need not be right. With REG_ADDR the requests come
// from f_addr only and the table is a memory (but its valid bits), read
// with what f_addr becomes; a kill drops the entry at the key's place
// whatever its tag.

module m68k_fetch #(
  parameter bit REG_ADDR = 1'b0
) (
  input  logic        clk,
  input  logic        rst,
  input  logic        ce,             // clock enable

  input  logic        redirect,       // empty the queue, fetch from redirect_pc
  input  logic [31:0] redirect_pc,
  input  logic [3:0]  consume,        // words taken from the head by decode

  // the BTB: a taken jump decode redirected for (its last word's longword,
  // that word the longword's high one, the target), or an entry to drop
  input  logic        bt_wr,
  input  logic        bt_kill,
  input  logic [31:2] bt_key,
  input  logic        bt_hi,
  input  logic [31:0] bt_target,
  // the first mark: from word mk_pos of q the queue goes on at mk_pc
  output logic        mk_v,
  output logic [4:0]  mk_pos,
  output logic [31:0] mk_pc,

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

  // the BTB
  localparam int BTN = 16, MKN = 4;
  logic          bt_v [BTN];
  logic [31:6]   bt_tag [BTN];
  logic          bt_h [BTN];
  logic [31:1]   bt_t [BTN];
  logic [57:0]   bt_m [BTN];             // REG_ADDR: {tag, h, target}
  logic [57:0]   bt_r;                   // the entry at f_addr
  logic [31:0]   f_addr_n;               // what f_addr becomes
  // what each request's response is to give: its high word, its low word
  // (a jump's last word was the high one), and a mark after it
  logic [1:0]    rq_n;
  logic          rq_skip [2], rq_cut [2], rq_mk [2];
  logic [31:1]   rq_t [2];
  // the marks, at their words of the queue registers
  logic          mr_v [MKN];
  logic [4:0]    mr_pos [MKN];
  logic [31:1]   mr_pc [MKN];
  logic [2:0]    mr_n;

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

  // the request's BTB entry: a hit when the jump's last word is one this
  // response gives (not a high word skipped) and a mark has room
  logic       r_skip, bt_hit, rq_full;
  logic [3:0] bi;
  logic [31:1] bt_hit_t;
  assign r_skip = early ? redirect_pc[1] : (rq_skip_next);
  assign bi = i_addr[5:2];
  logic        bt_hh;                  // the entry's jump: its last word a high one
  logic [31:6] bt_ht;
  assign bt_ht = REG_ADDR ? bt_r[57:32] : bt_tag[bi];
  assign bt_hh = REG_ADDR ? bt_r[31] : bt_h[bi];
  assign bt_hit = bt_v[bi] && bt_ht == i_addr[31:6] && !(bt_hh && r_skip) &&
                  32'(mk_out) < MKN;
  assign bt_hit_t = REG_ADDR ? bt_r[30:0] : bt_t[bi];

  logic take, fill;                    // a response for the queue this cycle, marked words
  assign take = i_rvalid && discard == 2'd0;
  // the response's request
  logic t_skip, t_cut, t_mk;
  logic [31:1] t_t;
  assign t_skip = rq_skip[0]; assign t_cut = rq_cut[0]; assign t_mk = rq_mk[0]; assign t_t = rq_t[0];
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
      if (t_skip) begin
        qa[qr_count[3:0]] = i_rdata[15:0];
        qfa[qr_count[3:0]] = faulted ? fcode : i_err;
        qa_count = qr_count + 5'd1;
      end else if (t_cut) begin
        qa[qr_count[3:0]] = i_rdata[31:16];
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

  // the marks with this cycle's (at the end of the words it gives), and
  // the first one, as decode sees it
  logic          ma_v [MKN];
  logic [4:0]    ma_pos [MKN];
  logic [31:1]   ma_pc [MKN];
  logic [2:0]    mk_out;               // marks, and requests that will make one
  always_comb begin
    for (int i = 0; i < MKN; i++) begin ma_v[i] = mr_v[i]; ma_pos[i] = mr_pos[i]; ma_pc[i] = mr_pc[i]; end
    if (take && t_mk && 32'(mr_n) < MKN) begin
      ma_v[mr_n[1:0]] = 1'b1; ma_pos[mr_n[1:0]] = qa_count; ma_pc[mr_n[1:0]] = t_t;
    end
    mk_out = mr_n + 3'(rq_mk[0] && rq_n != 2'd0) + 3'(rq_mk[1] && rq_n == 2'd2);
  end
  assign mk_v = REG_ADDR ? mr_v[0] : ma_v[0];
  assign mk_pos = REG_ADDR ? mr_pos[0] : ma_pos[0];
  assign mk_pc = {REG_ADDR ? mr_pc[0] : ma_pc[0], 1'b0};

  // q_pc after each amount decode may take (the sums off its paths)
  logic [31:0] q_pc_n [16];
  always_comb
    for (int k = 0; k < 16; k++) q_pc_n[k] = q_pc + 32'(2 * k);

  // whether the next request from f_addr skips its high word (a jump's
  // target, or a redirect's, at an odd word)
  logic rq_skip_next;

  always_comb begin
    f_addr_n = f_addr;
    if (i_req && i_gnt) f_addr_n = bt_hit ? {bt_hit_t[31:2], 2'b00} : i_addr + 32'd4;
    if (redirect && !(early && i_req && i_gnt && bt_hit))
      f_addr_n = {redirect_pc[31:2], 2'b00} + ((early && i_req && i_gnt) ? 32'd4 : 32'd0);
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      running <= 1'b0;
      f_addr  <= '0;
      pending <= '0;
      discard <= '0;
      rq_skip_next <= 1'b0;
      rq_n    <= '0;
      mr_n    <= '0;
      for (int i = 0; i < MKN; i++) mr_v[i] <= 1'b0;
      qr_count <= '0;
      q_pc    <= '0;
      faulted <= 1'b0;
    end else if (ce) begin
      logic [1:0] pend_n;
      logic       push;
      pend_n = pending + 2'(i_req && i_gnt) - 2'(i_rvalid);
      pending <= pend_n;
      push = i_req && i_gnt;
      if (i_rvalid && discard != 2'd0)
        discard <= discard - 2'd1;
      f_addr <= f_addr_n;
      if (push) begin
        rq_skip_next <= bt_hit && bt_hit_t[1];
      end

      // the requests' FIFO: in at a grant, out as the response is taken
      begin
        logic [1:0] n;
        logic       s [2], c [2], m [2];
        logic [31:1] t [2];
        n = rq_n;
        for (int i = 0; i < 2; i++) begin s[i] = rq_skip[i]; c[i] = rq_cut[i]; m[i] = rq_mk[i]; t[i] = rq_t[i]; end
        if (redirect) n = 2'd0;
        else if (take && n != 2'd0) begin
          s[0] = s[1]; c[0] = c[1]; m[0] = m[1]; t[0] = t[1];
          n = n - 2'd1;
        end
        if (push && (!redirect || early)) begin
          s[n[0]] = r_skip; c[n[0]] = bt_hit && bt_hh; m[n[0]] = bt_hit; t[n[0]] = bt_hit_t;
          n = n + 2'd1;
        end
        rq_n <= n;
        for (int i = 0; i < 2; i++) begin rq_skip[i] <= s[i]; rq_cut[i] <= c[i]; rq_mk[i] <= m[i]; rq_t[i] <= t[i]; end
      end

      if (redirect) begin
        running <= 1'b1;
        // every response still to come from before is stale (one returning
        // now is dropped); the target's, if requested now, is not
        discard <= pend_n - 2'(early && push);
        if (!(early && push)) rq_skip_next <= redirect_pc[1];
        faulted <= 1'b0;
        qr_count <= '0;
        q_pc    <= {redirect_pc[31:1], 1'b0};
        mr_n <= '0;
        for (int i = 0; i < MKN; i++) mr_v[i] <= 1'b0;
      end else begin
        logic          nv [MKN];
        logic [4:0]    np [MKN];
        logic [31:1]   nc [MKN];
        logic [2:0]    nn;
        logic          at_mark;
        for (int i = 0; i < 16; i++) begin
          qr[i] <= (i + int'(consume) < 16) ? qa[i + int'(consume)] : 16'h0000;
          qfr[i] <= (i + int'(consume) < 16) ? qfa[i + int'(consume)] : 2'b00;
        end
        if (take && i_err[1] && !faulted) begin faulted <= 1'b1; fcode <= i_err; end
        qr_count <= qa_count - 5'(consume);
        // the marks move with the head; at the first one q_pc is its target
        nn = mr_n + 3'(take && t_mk && 32'(mr_n) < MKN);
        for (int i = 0; i < MKN; i++) begin nv[i] = ma_v[i]; np[i] = ma_pos[i]; nc[i] = ma_pc[i]; end
        at_mark = ma_v[0] && consume != 4'd0 && ma_pos[0] == 5'(consume);
        if (at_mark) begin
          for (int i = 0; i < MKN - 1; i++) begin nv[i] = nv[i + 1]; np[i] = np[i + 1]; nc[i] = nc[i + 1]; end
          nv[MKN - 1] = 1'b0;
          nn = nn - 3'd1;
          q_pc <= {ma_pc[0], 1'b0};
        end else
          q_pc <= q_pc_n[consume];
        for (int i = 0; i < MKN; i++) begin
          mr_v[i] <= nv[i]; mr_pos[i] <= np[i] - 5'(consume); mr_pc[i] <= nc[i];
        end
        mr_n <= nn;
      end
    end
  end

  // the BTB: decode's taken jumps, written a clock after decode gives them
  // (off decode's paths). Written on every clock, not on enabled edges
  // only: what decode gives changes on enabled edges, so a write made again
  // before the next one is the same write (and clkena_in, which the
  // wrappers make from their memory's answer, stays off these registers)
  logic        bw_q, bk_q, bh_q;
  logic [31:2] bkey_q;
  logic [31:1] bt_q;
  always_ff @(posedge clk) begin
    bw_q <= bt_wr; bk_q <= bt_kill; bh_q <= bt_hi; bkey_q <= bt_key; bt_q <= bt_target[31:1];
    if (rst) begin
      bw_q <= 1'b0; bk_q <= 1'b0;
      for (int i = 0; i < BTN; i++) bt_v[i] <= 1'b0;
    end else begin
      if (bw_q) begin
        bt_v[bkey_q[5:2]] <= 1'b1;
        bt_tag[bkey_q[5:2]] <= bkey_q[31:6];
        bt_h[bkey_q[5:2]] <= bh_q;
        bt_t[bkey_q[5:2]] <= bt_q;
      end
      if (bk_q && (REG_ADDR || bt_tag[bkey_q[5:2]] == bkey_q[31:6])) bt_v[bkey_q[5:2]] <= 1'b0;
    end
  end
  // REG_ADDR: the memory (no reset, the valid bits are)
  always_ff @(posedge clk) begin
    if (bw_q) bt_m[bkey_q[5:2]] <= {bkey_q[31:6], bh_q, bt_q};
    if (ce) bt_r <= bt_m[f_addr_n[5:2]];
  end

`ifdef DEBUG_FETCH
  always_ff @(posedge clk)
    if (!rst && (redirect || (i_req && i_gnt) || i_rvalid))
      $display("fetch t=%0t redir=%b pc=%h req=%b addr=%h rvalid=%b data=%h discard=%0d pending=%0d qpc=%h qc=%0d consume=%0d",
               $time, redirect, redirect_pc, i_req && i_gnt, i_addr, i_rvalid, i_rdata, discard, pending, q_pc, qr_count, consume);
`endif

endmodule
