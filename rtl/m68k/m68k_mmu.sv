// SPDX-License-Identifier: LGPL-3.0-or-later
// 68040 MMU. A SystemVerilog translation of TG68K.C's TG68K_MMU.vhd
// (branch bus32), cycle for cycle.
//
// Address translation for the 68040 mode (M68040 User's Manual, section 3):
// the transparent translation registers ITT0/ITT1 (instruction fetches) and
// DTT0/DTT1 (data), and with TC E set the three-level tables from URP or
// SRP, 4 or 8 Kbyte pages, indirect page descriptors, write and supervisor
// protection and the U and M bits (table 3-1, by a read and a write, as the
// core has no LOCK). An 8-entry address translation cache serves both
// instruction and data accesses.
//
// The core's bus request (act, laddr, wr, fc) goes through here: on a hit,
// a transparent match or with E clear, paddr is the physical address at
// once; otherwise stall holds the core while the table search runs on the
// bus (bus_*), and the access goes on once the entry is in the cache. A
// fault (invalid descriptor, write or supervisor violation) sets fault and
// lets the access through untranslated without a bus cycle (quiet); the
// core takes it as an access error (format $7 frame).
//
// PTEST searches the tables for ptest_addr with the function code in
// ptest_fc, loads the cache and returns the MMU status register value;
// PFLUSH variants flush the cache (UM 3.7.2): pflush_all keeps no global
// entry (PFLUSHA, PFLUSH (An)), else the global ones stay (PFLUSHAN,
// PFLUSHN (An)); pflush_page limits it to the entries of the page of
// pflush_addr with the S bit pflush_s (DFC), as PFLUSH (An) and PFLUSHN
// (An) do.
//
// REG_XLATE: the translation goes to the bus from two registered entries
// (the last page of the fetches and of the data), so the 8-entry search is
// off the address path: a page change holds the core one cycle (stall)
// while the entry is loaded from the ATC.
//
// MC68060 (not in TG68K_MMU.vhd): why a translation faults, for the
// 68060's fault status long word (UM 8.4.4.3): why, with fault, and
// ptest_why, with ptest_done, are {PTA, PTB, IL, PF, SP, WP}; and an invalid
// translation is not kept in the cache (UM 11.1.2.2.3: it is dropped as its
// fault is reported, so a handler that fixes the tables needs no PFLUSH);
// hold_walk keeps a table search from starting while older writes (a
// descriptor a handler fixed) are on their way.
// With MC68060 0 the unit is the VHDL's.
//
// Copyright (c) 2026 Ramon Martinez. LGPL-3.0-or-later, as TG68K.C.

module m68k_mmu #(
  parameter bit REG_XLATE = 1'b0,
  parameter bit MC68060 = 1'b0
) (
  input  logic        clk,
  input  logic        reset,
  input  logic        clkena,
  // registers
  input  logic        tc_e, tc_p,
  input  logic [31:0] urp, srp,
  input  logic [31:0] itt0, itt1, dtt0, dtt1,
  // the core's access
  input  logic        act,
  input  logic [31:0] laddr,
  input  logic        wr,
  input  logic [2:0]  fc,
  output logic [31:0] paddr,
  output logic        stall,
  output logic        quiet,          // no bus cycle for this access (faulted)
  output logic        fault,          // pulse
  output logic [5:0]  why,            // with fault: {PTA, PTB, IL, PF, SP, WP}
  input  logic        hold_walk,      // (MC68060) older writes pending: no table search starts
  // table search bus cycles
  output logic        bus_act,
  output logic [31:0] bus_addr,
  output logic        bus_wr,
  output logic [15:0] bus_wdata,
  input  logic [15:0] data_in,
  // PTEST and PFLUSH
  input  logic        ptest,
  input  logic [31:0] ptest_addr,
  input  logic [2:0]  ptest_fc,
  input  logic        ptest_wr,
  output logic        ptest_done,
  output logic [31:0] mmusr,
  output logic [5:0]  ptest_why,      // with ptest_done, as why (SP, WP as for an access)
  input  logic        pflush,
  input  logic        pflush_all,
  input  logic        pflush_page,
  input  logic [31:0] pflush_addr,
  input  logic        pflush_s,
  // (not in TG68K_MMU.vhd) no table search running, for a core that
  // starts PTEST only then
  output logic        idle_o,
  // (REG_XLATE, not in TG68K_MMU.vhd) the fetches' registered entry looked
  // at on its own: f_hit when it translates f_laddr (supervisor f_super)
  // with no fault, f_paddr then its physical address, whatever the access
  // on act is
  input  logic [31:0] f_laddr,
  input  logic        f_super,
  output logic        f_hit,
  output logic [31:0] f_paddr
);

  localparam int N = 8;

  // power-up values, as the VHDL's signal defaults
  /* verilator lint_off PROCASSINIT */

  logic [N-1:0] e_valid = '0, e_super = '0, e_w = '0, e_m = '0, e_s = '0, e_g = '0, e_inv = '0;
  logic [19:0]  e_lp [N];
  logic [19:0]  e_pp [N];
  logic [2:0]   victim = 3'd0;
  logic [3:0]   e_why [N];            // an invalid one: {PTA, PTB, IL, PF}

  typedef enum logic [2:0] {W_IDLE, W_RD_H, W_RD_L, W_CHECK, W_UPD, W_FILL, W_DONE} wstate_e;
  wstate_e ws = W_IDLE;
  logic [1:0]  lvl;                   // 0 root, 1 pointer, 2 page, 3 indirect page
  logic [31:0] w_addr;                // descriptor address
  logic [31:0] next_addr;             // the next level's descriptor
  logic        upd_table;             // the update is for a table descriptor
  logic [31:0] desc;
  logic [31:0] w_la;
  logic        w_super, w_wr, w_test;
  logic        wp, invalid, sviol;
  logic [15:0] upd_data;
  logic        fault_r = 1'b0, done_r = 1'b0;
  logic [31:0] mmusr_r = '0;
  logic [5:0]  why_r = '0, ptwhy_r = '0;
  logic        il;                    // the walk met a second indirect descriptor

  // lookup results
  logic        tt_hit, atc_hit, atc_need_m, atc_fault, need_walk;
  logic [19:0] hit_pp;
  logic [2:0]  hit_idx;

  // REG_XLATE: the entries the bus uses, 0 data, 1 fetches
  logic [1:0]  u_v = '0, u_super = '0, u_w = '0, u_m = '0, u_s = '0, u_inv = '0;
  logic [19:0] u_lp [2];
  logic [3:0]  u_why [2];
  logic [19:0] u_pp [2];
  logic        u_sel;
  logic        u_hit, u_fault, u_need_m, u_miss, u_walk;
  logic [19:0] u_pg;
  logic [128:0] u_regs;               // TT registers and P the entries were loaded with
  /* verilator lint_on PROCASSINIT */

  function automatic logic tt_match(input logic [31:0] tt, input logic [31:0] a, input logic s);
    logic m;
    m = 1'b1;
    if (!tt[15]) return 1'b0;
    for (int i = 0; i < 8; i++)
      if (!tt[16 + i] && tt[24 + i] != a[24 + i]) m = 1'b0;
    // S field: 00 user only, 01 supervisor only, 1x both
    if (!tt[14] && tt[13] != s) m = 1'b0;
    return m;
  endfunction

  function automatic logic [19:0] page_of(input logic [31:0] a, input logic p);
    return p ? {a[31:13], 1'b0} : a[31:12];   // 8 or 4 Kbyte pages
  endfunction

  // lookup of the core's access
  always_comb begin
    logic       hit;
    logic [2:0] idx;
    logic [19:0] pg;
    tt_hit = 1'b0;
    if (fc[1:0] == 2'b10) begin
      if (tt_match(itt0, laddr, fc[2]) || tt_match(itt1, laddr, fc[2])) tt_hit = 1'b1;
    end else begin
      if (tt_match(dtt0, laddr, fc[2]) || tt_match(dtt1, laddr, fc[2])) tt_hit = 1'b1;
    end
    pg = page_of(laddr, tc_p);
    hit = 1'b0;
    idx = 3'd0;
    for (int i = 0; i < N; i++)
      if (e_valid[i] && e_super[i] == fc[2] && e_lp[i] == pg) begin
        hit = 1'b1;
        idx = 3'(i);
      end
    atc_hit = hit;
    hit_idx = idx;
    hit_pp = e_pp[idx];
    // a write to a page whose M bit is clear goes through the tables
    atc_need_m = wr && !e_m[idx] && !e_w[idx] && !e_inv[idx];
    atc_fault = e_inv[idx] || (wr && e_w[idx]) || (e_s[idx] && !fc[2]);
  end

  // REG_XLATE: the fetches' entry for f_laddr, apart from the shared lookup
  logic [19:0] f_pg;
  assign f_pg = page_of(f_laddr, tc_p);
  assign f_hit = REG_XLATE && u_v[1] && u_super[1] == f_super && u_lp[1] == f_pg && !u_inv[1] &&
                 !(u_s[1] && !f_super);
  assign f_paddr = tc_p ? {u_pp[1][19:1], f_laddr[12:0]} : {u_pp[1], f_laddr[11:0]};

  // REG_XLATE: the registered entry of this access, and what it says
  assign u_sel = fc[1:0] == 2'b10;
  assign u_pg = page_of(laddr, tc_p);
  assign u_hit = u_v[u_sel] && u_super[u_sel] == fc[2] && u_lp[u_sel] == u_pg;
  assign u_fault = u_inv[u_sel] || (wr && u_w[u_sel]) || (u_s[u_sel] && !fc[2]);
  assign u_need_m = wr && !u_m[u_sel] && !u_w[u_sel] && !u_inv[u_sel];
  // not in the registered entry: one cycle to load it from a transparent
  // translation or the ATC, or the table search when both miss. A
  // transparent page is held in the entry too (as itself), so with
  // translation on the physical page always comes from the entry and no
  // compare of this access's address is on the address path
  assign u_miss = act && tc_e && !u_hit;
  assign u_walk = act && tc_e && u_hit && u_need_m && !u_fault;

  assign need_walk = REG_XLATE ? ((u_miss && !tt_hit && !atc_hit) || u_walk)
                               : (act && tc_e && !tt_hit && (!atc_hit || (atc_need_m && !atc_fault)));
  assign stall = (REG_XLATE && (u_miss || u_walk)) || (!REG_XLATE && need_walk) ||
                 (ws != W_IDLE && !w_test);
  assign quiet = act && tc_e &&
                 ((REG_XLATE && u_hit && u_fault) ||
                  (!REG_XLATE && !tt_hit && atc_hit && atc_fault));

  always_comb
    if (!tc_e)                    paddr = laddr;
    else if (REG_XLATE && tc_p)   paddr = {u_pp[u_sel][19:1], laddr[12:0]};
    else if (REG_XLATE)           paddr = {u_pp[u_sel], laddr[11:0]};
    else if (tt_hit)              paddr = laddr;
    else if (tc_p)                paddr = {hit_pp[19:1], laddr[12:0]};
    else                          paddr = {hit_pp, laddr[11:0]};

  assign fault = fault_r;
  assign why = why_r;
  assign ptest_why = ptwhy_r;
  assign ptest_done = done_r;
  assign mmusr = mmusr_r;
  assign idle_o = ws == W_IDLE;

  assign bus_act = ws == W_RD_H || ws == W_RD_L || ws == W_UPD;
  assign bus_addr = (ws == W_RD_L || ws == W_UPD) ? w_addr + 32'd2 : w_addr;
  assign bus_wr = ws == W_UPD;
  assign bus_wdata = upd_data;

  always_ff @(posedge clk) begin
    logic [31:0] d;
    logic [15:0] nu;
    logic        wrp;
    if (reset) begin
      ws <= W_IDLE;
      e_valid <= '0;
      u_v <= 2'b00;
      fault_r <= 1'b0;
      done_r <= 1'b0;
      w_test <= 1'b0;
    end else if (clkena) begin
      fault_r <= 1'b0;
      done_r <= 1'b0;
      if (pflush)
        for (int i = 0; i < N; i++)
          if ((pflush_all || !e_g[i]) &&
              (!pflush_page || (e_lp[i] == page_of(pflush_addr, tc_p) && e_super[i] == pflush_s)))
            e_valid[i] <= 1'b0;
      // an access that hits a faulting entry
      if (act && tc_e && ws == W_IDLE &&
          ((REG_XLATE && u_hit && u_fault) ||
           (!REG_XLATE && !tt_hit && atc_hit && atc_fault))) begin
        fault_r <= 1'b1;
        if (MC68060) begin
          logic inv, s_, w_;
          logic [3:0] wy;
          inv = REG_XLATE ? u_inv[u_sel] : e_inv[hit_idx];
          wy = REG_XLATE ? u_why[u_sel] : e_why[hit_idx];
          s_ = (REG_XLATE ? u_s[u_sel] : e_s[hit_idx]) && !fc[2];
          w_ = wr && (REG_XLATE ? u_w[u_sel] : e_w[hit_idx]);
          why_r <= inv ? {wy, 2'b00} : {4'd0, s_, w_ && !s_};
          // (the 68060 keeps no invalid translation)
          if (inv) begin
            if (REG_XLATE) u_v[u_sel] <= 1'b0;
            for (int i = 0; i < N; i++)
              if (e_valid[i] && e_super[i] == fc[2] && e_lp[i] == page_of(laddr, tc_p))
                e_valid[i] <= 1'b0;
          end
        end
      end
      // REG_XLATE: load the registered entry from the ATC; drop both
      // when the ATC changes or translation is off
      if (REG_XLATE) begin
        if (u_miss && tt_hit && ws == W_IDLE) begin
          u_v[u_sel] <= 1'b1;                     // transparent: the page as itself
          u_super[u_sel] <= fc[2];
          u_lp[u_sel] <= u_pg;
          u_pp[u_sel] <= u_pg;
          u_w[u_sel] <= 1'b0;
          u_m[u_sel] <= 1'b1;
          u_s[u_sel] <= 1'b0;
          u_inv[u_sel] <= 1'b0;
          u_why[u_sel] <= 4'd0;
        end else if (u_miss && atc_hit && ws == W_IDLE) begin
          u_v[u_sel] <= 1'b1;
          u_super[u_sel] <= fc[2];
          u_lp[u_sel] <= u_pg;
          u_pp[u_sel] <= e_pp[hit_idx];
          u_w[u_sel] <= e_w[hit_idx];
          u_m[u_sel] <= e_m[hit_idx];
          u_s[u_sel] <= e_s[hit_idx];
          u_inv[u_sel] <= e_inv[hit_idx];
          u_why[u_sel] <= e_why[hit_idx];
        end
        u_regs <= {tc_p, itt0, itt1, dtt0, dtt1};
        if (pflush || ws == W_FILL || !tc_e || u_regs != {tc_p, itt0, itt1, dtt0, dtt1})
          u_v <= 2'b00;
      end
      case (ws)
        W_IDLE:
          if (ptest) begin
            w_la <= ptest_addr; w_super <= ptest_fc[2]; w_wr <= ptest_wr; w_test <= 1'b1;
            if ((ptest_fc[1:0] == 2'b10 && (tt_match(itt0, ptest_addr, ptest_fc[2]) ||
                                            tt_match(itt1, ptest_addr, ptest_fc[2]))) ||
                (ptest_fc[1:0] != 2'b10 && (tt_match(dtt0, ptest_addr, ptest_fc[2]) ||
                                            tt_match(dtt1, ptest_addr, ptest_fc[2])))) begin
              mmusr_r <= 32'h00000003;               // T and R (3.1.4)
              done_r <= 1'b1;
            end else begin
              d = ptest_fc[2] ? srp : urp;
              w_addr <= {d[31:9], ptest_addr[31:25], 2'b00};
              lvl <= 2'd0; wp <= 1'b0; invalid <= 1'b0; sviol <= 1'b0; il <= 1'b0;
              ws <= W_RD_H;
            end
          end else if (need_walk && !(MC68060 && hold_walk)) begin
            w_la <= laddr; w_super <= fc[2]; w_wr <= wr; w_test <= 1'b0;
            d = fc[2] ? srp : urp;
            w_addr <= {d[31:9], laddr[31:25], 2'b00};
            lvl <= 2'd0; wp <= 1'b0; invalid <= 1'b0; sviol <= 1'b0; il <= 1'b0;
            ws <= W_RD_H;
          end
        W_RD_H: begin
          desc[31:16] <= data_in;
          ws <= W_RD_L;
        end
        W_RD_L: begin
          desc[15:0] <= data_in;
          ws <= W_CHECK;
        end
        W_CHECK: begin
          d = desc;
          if (lvl < 2'd2) begin
            // root or pointer table descriptor: UDT 1x resident
            if (!d[1]) begin
              invalid <= 1'b1;
              ws <= W_FILL;
            end else begin
              wp <= wp | d[2];
              if (lvl == 2'd0)  next_addr <= {d[31:9], w_la[24:18], 2'b00};
              else if (tc_p)    next_addr <= {d[31:7], w_la[17:13], 2'b00};
              else              next_addr <= {d[31:8], w_la[17:12], 2'b00};
              lvl <= lvl + 2'd1;
              if (!d[3] && !w_test) begin
                // set U in this descriptor, then read the next level
                upd_data <= {d[15:4], 1'b1, d[2:0]};
                upd_table <= 1'b1;
                ws <= W_UPD;
              end else begin
                if (lvl == 2'd0)  w_addr <= {d[31:9], w_la[24:18], 2'b00};
                else if (tc_p)    w_addr <= {d[31:7], w_la[17:13], 2'b00};
                else              w_addr <= {d[31:8], w_la[17:12], 2'b00};
                ws <= W_RD_H;
              end
            end
          end else begin
            // page descriptor: PDT 00 invalid, 10 indirect, else resident
            if (d[1:0] == 2'b00) begin
              invalid <= 1'b1;
              ws <= W_FILL;
            end else if (d[1:0] == 2'b10 && lvl == 2'd2) begin
              w_addr <= {d[31:2], 2'b00};
              lvl <= 2'd3;
              ws <= W_RD_H;
            end else if (d[1:0] == 2'b10) begin
              invalid <= 1'b1;                      // indirect to indirect
              il <= 1'b1;
              ws <= W_FILL;
            end else begin
              wrp = wp | d[2];
              wp <= wrp;
              if (d[7] && !w_super) sviol <= 1'b1;
              // table 3-1: set U, and M for a write that is allowed
              nu = d[15:0];
              nu[3] = 1'b1;
              if (w_wr && !wrp && !(d[7] && !w_super)) nu[4] = 1'b1;
              if (nu != d[15:0] && !w_test) begin
                upd_data <= nu;
                upd_table <= 1'b0;
                desc[15:0] <= nu;
                ws <= W_UPD;
              end else
                ws <= W_FILL;
            end
          end
        end
        W_UPD:
          // the low word of the descriptor is written back
          if (upd_table) begin
            w_addr <= next_addr;
            ws <= W_RD_H;
          end else
            ws <= W_FILL;
        W_FILL: begin
          // load the cache; a faulting translation is cached too, so the
          // access completes quietly and reports the fault
          d = desc;
          // one entry per page: an older one (a write that set M) goes
          for (int i = 0; i < N; i++)
            if (e_lp[i] == page_of(w_la, tc_p) && e_super[i] == w_super)
              e_valid[i] <= 1'b0;
          e_valid[victim] <= 1'b1;
          e_super[victim] <= w_super;
          e_lp[victim] <= page_of(w_la, tc_p);
          e_pp[victim] <= d[31:12];
          e_w[victim] <= wp;
          e_m[victim] <= d[4];
          e_s[victim] <= d[7];
          e_g[victim] <= d[10];
          e_inv[victim] <= invalid;
          // why it is invalid: the level of the descriptor
          e_why[victim] <= !invalid ? 4'd0 : il ? 4'b0010 :
                           (lvl == 2'd0) ? 4'b1000 : (lvl == 2'd1) ? 4'b0100 : 4'b0001;
          if (w_test)
            ptwhy_r <= invalid ? {(lvl == 2'd0), (lvl == 2'd1), il, !il && lvl[1], 2'b00}
                               : {4'd0, sviol, w_wr && wp && !sviol};
          victim <= (victim == 3'(N - 1)) ? 3'd0 : victim + 3'd1;
          if (w_test) begin
            if (invalid)
              mmusr_r <= {29'd0, wp, 2'b00};
            else
              mmusr_r <= {d[31:12], 1'b0, d[10], d[9], d[8], d[7], d[6], d[5],
                          d[4], 1'b0, wp, 1'b0, 1'b1};
            done_r <= 1'b1;
          end
          ws <= W_DONE;
        end
        W_DONE: begin
          w_test <= 1'b0;
          ws <= W_IDLE;
        end
        default:
          ws <= W_IDLE;
      endcase
    end
  end

endmodule
