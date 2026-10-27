// SPDX-License-Identifier: LGPL-3.0-or-later
// Pipelined 68k core, single issue: F, D, AG, OF, EX, WB
// (docs/architecture.md).

module m68k_core
  import m68k_pkg::*;
#(
  // loads in [IO_LO, IO_HI) have side effects (Amiga: the CIAs, the custom
  // chips, the clock, Gayle's IDE data port): they are made from OF only,
  // once nothing older is left in flight (EX, WB, the store buffer), so a
  // flush cannot make them again (an interrupt taken by an older
  // instruction) and they come after every older store (a command written,
  // then the status read). Other loads may go early.
  parameter logic [31:0] IO_LO = 32'h00A00000,
  parameter logic [31:0] IO_HI = 32'h00F00000,
  // stores from SYNC_LO up are made from WB, before the instruction retires,
  // so that a bus error on them is taken as the 68040 does (TG68K.C's
  // testbench ends the accesses to $F1xxxxxx with one)
  parameter logic [31:0] SYNC_LO = 32'hF0000000,
  // the FPU's arithmetic unit: 1 the fast one (m68k_fpu_alu_fast), 0
  // TG68K.C's (more cycles an operation, shorter paths)
  parameter bit FPU_FAST = 1'b1,
  // (m68k_fpu's ALU_REG) the arithmetic unit's answer into registers first
  parameter bit FPU_REG = 1'b0,
  // the MMU's REG_XLATE: 1 registered translations (the last page of the
  // fetches and of the data, one stall cycle a page change), shorter paths
  parameter bit MMU_REG = 1'b0,
  // m68k_fetch's REG_ADDR: fetch requests from registers only
  parameter bit FETCH_REG = 1'b0,
  // a load goes to the data port from AG, as its uop moves to OF (1), or
  // from OF only (0: the address calculation is off the paths through the
  // MMU and the data port)
  parameter bit AG_LOAD = 1'b1,
  // OF's check of a load against the older stores from registers: made as
  // the uop enters OF (AG's) and again each cycle it waits, used a clock
  // later (a store it waits for lets it go a clock later)
  parameter bit OF_SCREG = 1'b0,
  // a skid buffer of one uop between decode and AG: decode goes on while
  // the skid is empty, not as AG moves (the pipeline's stalls stay off
  // decode and the fetch)
  parameter bit SKID = 1'b0,
  // a store retires into a full store buffer the clock after its first
  // entry leaves, not in the same one (the data port's answer off retire)
  parameter bit SB_REG = 1'b0,
  // decode's redirects of the fetch (a jump it predicts, an instruction
  // across the fetch's mark or one at it that does not take it) a clock
  // later, from registers; decode waits for it (decode off the fetch's
  // paths, a clock more each)
  parameter bit DREDIR_REG = 1'b0,
  // bit field operations and MULx.L in two cycles in EX: from their
  // operands in registers (the forwarding off the multiplier and the field
  // extraction)
  parameter bit EX_SLOW = 1'b0,
  // the instruction's length from a register, an early decode as the
  // 68060's IED: a second decode finds the length of the instruction after
  // the one at the queue's head (of the head itself after a redirect), and
  // decode's valid, the fetch's consume and its marks take it from there
  // (the length off the queue's shift and the fetch; a clock more after
  // each redirect)
  parameter bit PRELEN = 1'b0,
  // (with OF_SCREG and AG_LOAD 0) a load goes from OF without waiting for
  // its check against the older stores, which OF makes on its registered
  // address meanwhile: if a store overlaps it, its data is dropped and it
  // goes again once checked (the check off AG; a load behind a store to
  // its bytes a clock more)
  parameter bit LD_SPEC = 1'b0,
  // shifts and rotates in two cycles in EX: the shifter's output into a
  // register first, the result, its select and the flags from there
  parameter bit SH_SLOW = 1'b0,
  // MULU.W and MULS.W the same: the product into a register first
  parameter bit MUL_SLOW = 1'b0,
  // (with MMU_REG) a fetch goes to the port only by the fetches' registered
  // page (mmu_fhit): one that misses it is translated by the MMU, which
  // loads that page, and goes the next clock; one whose translation
  // faults is answered from a register (the data side's lookup off the
  // fetch's grant)
  parameter bit FXL_REG = 1'b0,
  // EX's operands that are not registers (an immediate, the EA, a control
  // register, the load's data) chosen as the uop enters EX, into a register:
  // EX selects only between it, the forwarded register and the CCR
  parameter bit EX_PRESEL = 1'b0,
  // the data port taken for a new access only once the last one has been
  // answered (with m68k_dcache's GNT_REG: the cache's hit off the next
  // access's choice, its address and the MMU's lookup)
  parameter bit DP_REG = 1'b0,
  // the early value of a uop in OF and EX (a MOVE's whose result is known
  // before EX, given to the address calculation of the next ones) chosen
  // as it enters the stage, into a register (AG's forwarding off the
  // stages' operand selects; one waiting for a register takes it a clock
  // after it comes)
  parameter bit EARLY_REG = 1'b0,
  // a memory indirect pointer into a register first, the address from it
  // a clock later (the data port's answer off the address's add)
  parameter bit IND_REG = 1'b0,
  // a mispredict found in EX empties the stages behind it a clock later,
  // from a register, and drops the uop that entered EX meanwhile (EX's
  // compare off the enables of OF, AG, decode and the fetch; a mispredict
  // costs a clock more)
  parameter bit FLUSH_REG = 1'b0,
  // Z and N (and V's result bit) of the adds and subtracts from their
  // operands and the adder, not from the result's select: a + b + c is 0
  // at the size when (a ^ b) == ((a | b) << 1 | c) there
  parameter bit EX_FASTCC = 1'b0,
  // the 68060 (else the 68040): its control registers (PCR, BUSCR, its
  // CACR and TC bits), one supervisor stack (M kept but not used, cleared by
  // an interrupt), RTE of formats $0 $2 $3 $4, interrupts only after the
  // first instruction of a handler, the unimplemented integer instructions
  // (vector 61, decode)
  parameter bit MC68060 = 1'b0
)
(
  input  logic        clk,
  input  logic        rst,
  input  logic        ce,             // clock enable: the core moves on enabled edges only
  input  logic [2:0]  ipl,            // interrupt level requested (autovectored)

  // instruction port: aligned longwords
  output logic        i_req,
  output logic [31:0] i_addr,
  output logic [2:0]  i_fc,           // function code (2 user, 6 supervisor program)
  input  logic        i_gnt,
  input  logic        i_rvalid,
  input  logic        i_err,          // with i_rvalid: a bus error
  input  logic [31:0] i_rdata,

  // data port: one access at a time, read data right-justified
  output logic        d_req,
  output logic        d_we,
  output logic [31:0] d_addr,
  output size_e       d_size,
  output logic [31:0] d_wdata,
  output logic [2:0]  d_fc,           // function code (1 user, 5 supervisor data)
  input  logic        d_gnt,
  input  logic        d_rvalid,
  input  logic        d_err,          // with d_rvalid: a bus error (TEA)
  input  logic [31:0] d_rdata,

  // control registers the machine around the core sees (TG68K.C's
  // CACR_out, VBR_out, MMU_on_out)
  output logic [1:0]  ctl_cacr,       // DE, IE
  output logic [31:0] ctl_vbr,
  output logic        ctl_tc_e,
  output logic        ctl_cinv,       // CINV/CPUSH runs (an enabled edge): the caches it names
  output logic [1:0]  ctl_cinv_c,     // {instruction, data} (the opcode's bits 7-6)
  output logic        ctl_reset,      // RESET retires (an enabled edge): reset what is outside

  // retirement, for the testbench trace
  output logic        dbg_retire,
  output logic        dbg_first,
  output logic        dbg_last,
  output logic [31:0] dbg_pc,
  output logic [15:0] dbg_op,
  output logic [31:0] dbg_npc,
  output logic        dbg_unimpl,
  output logic [31:0] dbg_regs [16],
  output logic [15:0] dbg_sr,
  output logic        dbg_st,         // with dbg_retire: the uop stores (into the store buffer)
  output logic [31:0] dbg_st_addr,
  output size_e       dbg_st_size,
  output logic [31:0] dbg_st_data,
  output logic        dbg_fwr,        // an FPU write goes to memory now
  output logic [31:0] dbg_fwr_addr,
  output size_e       dbg_fwr_size,
  output logic [31:0] dbg_fwr_data,
  output logic        dbg_mwr,        // a descriptor write of the MMU's table search
  output logic [31:0] dbg_mwr_addr,
  output logic [15:0] dbg_mwr_data,
  output logic        dbg_mwr_fetch,  // the search is a fetch's (else dbg_mwr_pc's data access)
  output logic [31:0] dbg_mwr_pc
);

  // ------------------------------------------------------------------ state

  logic [31:0] rf [NREGS];
  logic [4:0]  ccr_arch, ccr_spec;     // X N Z V C
  logic [7:0]  sr_hi;                   // T1 T0 S M 0 I2 I1 I0

  // MOVEC control registers (the stack pointers are in rf)
  logic [2:0]  sfc, dfc;
  logic [1:0]  cacr;                    // DE, IE
  logic        tc_e, tc_p;
  // the 68060's: its other CACR and TC bits, PCR's EDEBUG DFP ESS, BUSCR's
  // L SL LE SLE
  logic [31:0] cacr_x;
  logic [13:0] tc_x;
  logic [7:0]  pcr;
  logic [3:0]  buscr;
  logic [31:0] itt0, itt1, dtt0, dtt1, mmusr, urp, srp, vbr;
  // the data accesses go through the MMU: translation on, or (the 68060) a
  // data TTR that write-protects, which acts with TC E clear too (UM 4.1.3)
  logic        dxl;
  assign dxl = tc_e || (MC68060 && ((dtt0[15] && dtt0[2]) || (dtt1[15] && dtt1[2])));

  typedef enum logic [1:0] {RS_SSP, RS_PC, RS_RUN} rs_e;
  rs_e rs_state;

  typedef struct packed {
    logic [31:0] v;
    logic        rdy;
    logic [2:0]  tag;
  } opnd_t;

  logic        ag_v;  uop_t ag_u;  logic [2:0] ag_tag;
  logic        sk_v;  uop_t sk_u;       // SKID: the uop decode gave while AG was full

  logic        of_v;  uop_t of_u;  logic [2:0] of_tag;
  logic [31:0] of_ea, of_anv;  logic of_an;
  opnd_t       of_a, of_b;
  logic [31:0] of_ev, ex_ev;            // EARLY_REG: the uop's early value; it is there
  logic        of_evr, ex_evr;
  logic        of_ld_issued, of_ld_have;
  logic [31:0] of_ld_data;
  logic        of_ind_issued, of_ind_done;   // memory indirect: the pointer read
  logic [31:0] of_ptr;                  // IND_REG: the pointer read; the address comes next
  logic        of_ptr_v;
  // an access error of the uop's read: by the MMU (atc) or a bus error, at fa
  logic        of_af, of_afatc, ex_af, ex_afatc, wb_af, wb_afatc;
  logic [5:0]  of_afwhy, ex_afwhy, wb_afwhy;   // the 68060's: why the MMU faulted it
  logic [31:0] of_affa, ex_affa, wb_affa;
  size_e       of_afsz, ex_afsz, wb_afsz;
  logic [31:0] of_xv;                        // the scaled index, post-indexed

  logic        ex_v;  uop_t ex_u;  logic [2:0] ex_tag;
  logic [31:0] ex_ea, ex_anv;  logic ex_an;
  opnd_t       ex_a, ex_b;
  logic [31:0] ex_mem;

  logic        wb_v;  uop_t wb_u;  logic [2:0] wb_tag;
  logic [31:0] wb_ea, wb_anv;  logic wb_an;
  logic [31:0] wb_res, wb_npc;
  logic [4:0]  wb_ccr;
  logic        wb_exc;                  // the uop takes its exception
  logic        wb_cont;                 // RTE of a format $1 frame: it runs again
  logic        wb_aerr;                 // a jump to an odd address: address error
  logic        ex_aerr;
  // the exception a uop takes: vector, frame format ($0, $2, $3), stacked
  // PC and the address field of formats $2 and $3
  logic [7:0]  ex_xvec, wb_xvec;
  logic [3:0]  ex_xfmt, wb_xfmt;
  logic [31:0] ex_xpc, wb_xpc, ex_xaddr, wb_xaddr;
  logic [15:0] wb_sr;                   // setsr: the new SR
  logic        wb_bk_en;                // setsr: A7 saved into the stack pointer of the old mode
  logic [4:0]  wb_bk_idx;
  logic [31:0] wb_bk_val;

  // (the 68060) the An updates of the instruction's uops that retired, with
  // the values before them: an access error of a later uop restarts the
  // instruction, which gives them back (MOVE (A0)+,(A1)+, ADDX -(A0),-(A1))
  logic        ul_v [2];
  logic [4:0]  ul_r [2];
  logic [31:0] ul_d [2];

  // MULx.L/DIVx.L: the high long of a product, the remainder or the high
  // long of a dividend, for the uop after; md_ovf: that division overflowed
  logic [31:0] mdhi;
  logic        md_ovf;

  // bit fields: the offset, the BFINS source, the five bytes at the field
  // and what they become, and how many of them the field covers
  logic [31:0] bf_off, bf_ins;
  logic [39:0] bf_data, bf_new;
  logic [2:0]  bf_nb;
  logic        cas_eq1, cas_eq;          // CAS/CAS2: the compares were equal

  // the divider: |dividend| / |divisor|, one quotient bit a cycle
  logic        dv_busy, dv_done;
  logic [6:0]  dv_cnt;
  logic [63:0] dv_q;
  logic [32:0] dv_r;
  logic [31:0] dv_d;

  // store buffer: retired stores on their way to the data port, oldest at 0
  localparam int SBN = 2;
  logic        sb_v [SBN];
  logic [31:0] sb_pa [SBN];             // physical (sb_a: logical, for the loads)
  logic [31:0] sb_a [SBN];
  size_e       sb_sz [SBN];
  logic [31:0] sb_d [SBN];
  logic        sb_s [SBN];              // the S of the store (it may change before it drains)
  logic        wb_s;                    // the S of the store in WB (MOVES: of DFC)
  assign wb_s = wb_u.moves ? dfc[2] : sr_hi[5];
  logic        sb_issued;
  // (the 68060) a table search waits for the older writes: a descriptor
  // fixed by a handler is read as written. walk_blk: one waits (registered)
  logic        walk_hold, walk_blk, sb_first;

  // data port: who owns the access in flight
  typedef enum logic [2:0] {DO_OF, DO_SB, DO_RST, DO_FPU, DO_MMU, DO_WB} downer_e;
  logic    d_busy;
  downer_e d_owner;
  size_e   d_size_last;                 // the size of the access in flight

  // exception entry: the uops the injector issues in place of decode
  logic        inj_active;
  logic [4:0]  inj_step;
  logic [7:0]  inj_vec;
  logic [3:0]  inj_fmt;
  logic [31:0] inj_pc;                  // stacked PC
  logic [31:0] inj_addr;                // the instruction
  logic [31:0] inj_faddr;               // format $2: its address field
  logic [15:0] inj_op;
  logic        inj_int;                 // an interrupt: the mask to its level
  logic [2:0]  inj_lvl;
  logic        inj_throw;               // M was set: then the format $1 frame on the ISP

  // interrupts, STOP, RTE of a format $1 frame
  logic        stopped;                 // after STOP, until an interrupt
  logic [31:0] stop_npc;
  logic        lvl7_taken;              // level 7 is taken on its rising edge
  logic        rte_cont;                // the RTE runs again: not a new instruction

  // ------------------------------------------------------------------- FPU

  // m68k_fpu runs an FPU uop in EX once everything older has retired and
  // the store buffer is empty. Its word accesses go to the data port with
  // its clock enable held until they answer; its integer register writes
  // wait in fpw until the uop retires (it reads them back meanwhile).
  logic        fpu_start, fpu_ce, fpu_done;
  logic        fpu_unimp, fpu_unsupp, fpu_upost, fpu_ftrap, fpu_brt, fpu_xexc, fpu_xpost, fpu_xhere, fpu_ferr;
  logic        fpu_xpend, fpu_nan, fpu_bsun_en, fpu_pred_true;
  logic [3:0]  fpu_fpcc;
  logic        fpu_busy, fpu_bg;
  logic [2:0]  fpu_xvec, fpu_xpvec;
  logic [31:0] fpu_ea_out, fpu_br_target;
  logic [3:0]  fpu_rd_idx, fpu_wr_idx;
  logic [31:0] fpu_rd_data, fpu_wr_data;
  logic        fpu_wr_en;
  logic [1:0]  fpu_wr_size;
  logic        fpu_bus_act, fpu_bus_wr, fpu_uds_n, fpu_lds_n;
  logic [31:0] fpu_bus_addr;
  logic [15:0] fpu_bus_wdata, fpu_data_in;
  logic        fpu_pred_bsun, fpu_set_bsun;
  logic        fpu_running;             // started, done not seen
  logic        fpu_acc_issued;          // its bus cycle is in flight
  logic        fpu_req;
  // the result of the FPU uop in EX, kept from done until it leaves
  logic        fx_done, fx_unimp, fx_unsupp, fx_upost, fx_ftrap, fx_br, fx_xexc, fx_xpost, fx_xhere, fx_ferr;
  logic        fx_af, fx_afatc, fx_afwr;  // its access faulted (the FPU is aborted)
  logic [5:0]  fx_afwhy;
  logic [31:0] fx_affa;
  logic        fpu_abort;
  logic [2:0]  fx_xvec;
  logic [31:0] fx_ea, fx_brt;
  // its integer register writes, until it retires
  logic        fpw_v [2];
  logic [3:0]  fpw_idx [2];
  logic [1:0]  fpw_size [2];
  logic [31:0] fpw_data [2];

  function automatic logic [31:0] wmerge(input logic [31:0] old, input logic [1:0] sz, input logic [31:0] d);
    return (sz == 2'b00) ? {old[31:8], d[7:0]} : (sz == 2'b01) ? {old[31:16], d[15:0]} : d;
  endfunction

  always_comb begin
    fpu_rd_data = rf[{1'b0, fpu_rd_idx}];
    for (int i = 0; i < 2; i++)
      if (fpw_v[i] && fpw_idx[i] == fpu_rd_idx) fpu_rd_data = wmerge(fpu_rd_data, fpw_size[i], fpw_data[i]);
  end

  // (the 68060's: what the M68060SP would emulate of what it has is done
  // here, FPSP 0)
  m68k_fpu #(.FPSP(MC68060 ? 0 : 1), .FAST_ALU(FPU_FAST), .MC68060(MC68060), .ALU_REG(FPU_REG)) fpu (
    .clk, .reset(rst), .clkena(fpu_ce),
    .start(fpu_start), .abort_in(fpu_abort), .opcode(ex_u.opcode), .cmd(ex_u.imm[15:0]), .ea(ex_ea),
    .iaddr(ex_u.pc), .done(fpu_done), .unimp(fpu_unimp), .unsupp(fpu_unsupp), .upost(fpu_upost), .ferr(fpu_ferr),
    .ea_out(fpu_ea_out), .ftrap(fpu_ftrap), .br_take(fpu_brt), .br_target(fpu_br_target),
    .rd_idx(fpu_rd_idx), .rd_data(fpu_rd_data), .wr_en(fpu_wr_en), .wr_idx(fpu_wr_idx),
    .wr_data(fpu_wr_data), .wr_size(fpu_wr_size),
    .bus_act(fpu_bus_act), .bus_addr(fpu_bus_addr), .bus_wr(fpu_bus_wr), .bus_uds_n(fpu_uds_n),
    .bus_lds_n(fpu_lds_n), .bus_wdata(fpu_bus_wdata), .data_in(fpu_data_in),
    .pred(wb_u.opcode[5:0]), .pred_true(fpu_pred_true), .pred_bsun(fpu_pred_bsun),
    .xexc(fpu_xexc), .xvec(fpu_xvec), .xpost(fpu_xpost), .xhere_o(fpu_xhere), .xpend_o(fpu_xpend),
    .xpend_vec(fpu_xpvec), .fpcc_nan(fpu_nan), .fp_bsun_en(fpu_bsun_en), .set_bsun(fpu_set_bsun),
    .fpcc_o(fpu_fpcc), .busy_o(fpu_busy), .bg_o(fpu_bg)
  );

  // FBcc's predicate (PRM table 3-23) on N Z NAN of the FPCC, for the uop
  // in EX (the FPU's predicate port is the retiring FBcc's, for BSUN)
  function automatic logic fpred(input logic [5:0] p, input logic [3:0] cc);
    logic n, z, nan;
    n = cc[3]; z = cc[2]; nan = cc[0];
    case (p[3:0])
      4'b0000: return 1'b0;
      4'b0001: return z;
      4'b0010: return !(nan || z || n);
      4'b0011: return z || !(nan || n);
      4'b0100: return n && !(nan || z);
      4'b0101: return z || (n && !nan);
      4'b0110: return !(nan || z);
      4'b0111: return !nan;
      4'b1000: return nan;
      4'b1001: return nan || z;
      4'b1010: return nan || !(n || z);
      4'b1011: return nan || z || !n;
      4'b1100: return nan || (n && !z);
      4'b1101: return nan || z || n;
      4'b1110: return !z;
      default: return 1'b1;
    endcase
  endfunction

  // ------------------------------------------------------------- front end

  logic [15:0] q [16];
  logic [1:0]  qf [16];
  logic [4:0]  q_count;
  logic [31:0] q_pc;
  logic [4:0]  dec_step;
  logic        dec_valid;
  uop_t        dec_u;
  logic [3:0]  dec_len;
  logic [2:0]  tag_ctr;

  logic        f_redirect;
  logic [31:0] f_redirect_pc;
  logic [3:0]  f_consume;
  // the fetch's BTB (m68k_fetch): what decode teaches it, its first mark
  logic        bt_wr, bt_kill, bt_hi;
  logic [31:2] bt_key;
  logic [31:0] bt_target;
  logic        mk_v;
  logic [4:0]  mk_pos;
  logic [31:0] mk_pc;

  m68k_fetch #(.REG_ADDR(FETCH_REG)) fetch (
    .clk, .rst, .ce,
    .redirect(f_redirect), .redirect_pc(f_redirect_pc), .consume(f_consume),
    .bt_wr, .bt_kill, .bt_key, .bt_hi, .bt_target, .mk_v, .mk_pos, .mk_pc,
    .q, .qf, .q_count, .q_pc,
    .i_req(fi_req), .i_addr(fi_addr), .i_gnt(fi_gnt), .i_rvalid(fi_rvalid), .i_err(fi_err), .i_rdata
  );

  // PRELEN: MOVEM's registers still to move (its list at the first uop;
  // each uop that moves one drops the lowest)
  logic [15:0] mv_rem, mv_in;
  assign mv_in = (dec_step == 5'd0) ? q[1] : mv_rem;
  logic        dec_valid_c;             // decode's own valid and length
  logic [3:0]  dec_len_c, dec_nv_c, dec_snw_c, dec_len_x;
  logic [4:0]  dec_nst_c;               // (decode's own: only checked against the early decode's)
  br_e         dec_lbr_c;
  logic        dec_lpred_c;
  logic [3:0]  pl_nv, pl_snw, pl_cnv, pl_csnw;  // PRELEN: the head's, found by the second decode
  logic [4:0]  pl_nst, pl_cnst;         // its uops
  logic        pl_bhit;                 // the BTB's entry for the head's PC, looked up a clock before
  logic [31:0] pl_btgt;
  br_e         pl_ilbr;                 // m68k_ilen's jump, target, prediction
  logic [31:0] pl_itgt;
  logic        pl_ilpred;
  br_e         pl_lbr, pl_clbr;         // its last uop's jump, and prediction
  logic        pl_lpred, pl_clpred;
  m68k_decode #(.MC68060(MC68060)) decode (
    .q, .qf, .q_count, .q_pc, .step(dec_step), .sup(sr_hi[5]), .msp_m(sr_hi[4]),
    .pre_en(PRELEN), .pre_nv(pl_nv), .pre_snw(pl_snw), .pre_len(pl_len), .pre_mrem(mv_in),
    .valid(dec_valid_c), .u(dec_u), .len(dec_len_x), .len_own(dec_len_c), .nwait(dec_nv_c), .snw(dec_snw_c),
    .nst(dec_nst_c), .lbr(dec_lbr_c), .lpred(dec_lpred_c)
  );

  // PRELEN: the length of the head's instruction in pl_len (pl_v), and the
  // second decode on the words after it (on the head's while pl_v is clear)
  logic        pl_v, pl_cv, pl_dv;
  logic [3:0]  pl_dlen, pl_dlen_own;    // (the second decode's own: not used)
  logic [3:0]  pl_len, pl_clen, pl_off;
  logic [1:0]  pl_sm;                   // the S and M it was found with (privileged ones: one word)
  logic [15:0] pq [16];
  logic [1:0]  pqf [16];
  uop_t        pl_u;                    // (only its length and jump target are used)
  logic [31:0] pl_pc, pl_tgt;           // the second decode's PC; the head's jump target
  logic [4:0]  pq_count;
  logic        pl_ok;                   // pl_v, with the S and M of now
  // (S and M matter at an instruction's first uop: RTE's later ones run in
  // the new mode, as decode makes them)
  assign pl_ok = pl_v && (pl_sm == sr_hi[5:4] || dec_step != 5'd0);
  // (from pl_v alone: the S and M check is off the second decode's path; a
  // length found with the old ones is dropped below and found again)
  assign pl_off = pl_v ? pl_len : 4'd0;
  always_comb begin
    for (int i = 0; i < 16; i++) begin
      pq[i] = (i + int'(pl_off) < 16) ? q[i + int'(pl_off)] : 16'd0;
      pqf[i] = (i + int'(pl_off) < 16) ? qf[i + int'(pl_off)] : 2'd0;
    end
    pq_count = (q_count > {1'b0, pl_off}) ? q_count - {1'b0, pl_off} : 5'd0;
    // (from the fetch's mark on, the words are its target's)
    pl_pc = (pl_v && mk_v && mk_pos == {1'b0, pl_off}) ? mk_pc : q_pc + {27'd0, pl_off, 1'b0};
  end
  generate if (PRELEN) begin : g_prelen
    m68k_decode #(.MC68060(MC68060)) pdecode (
      .q(pq), .qf(pqf), .q_count(pq_count), .q_pc(pl_pc), .step(5'd0), .sup(sr_hi[5]), .msp_m(sr_hi[4]),
      .pre_en(1'b0), .pre_nv(4'd0), .pre_snw(4'd0), .pre_len(4'd0), .pre_mrem(16'd0),
      .valid(pl_dv), .u(pl_u), .len(pl_dlen), .len_own(pl_dlen_own), .nwait(pl_cnv), .snw(pl_csnw),
      .nst(pl_cnst), .lbr(pl_clbr), .lpred(pl_clpred)
    );
    // the length, and so the next one's place, from m68k_ilen: flat, off
    // the second decode (which gives the rest, into registers too)
    logic [3:0] il_len;
    m68k_ilen #(.MC68060(MC68060)) ilen (.w(pq), .pc(pl_pc), .len(il_len), .lbr(pl_ilbr), .tgt(pl_itgt),
                                         .lpred(pl_ilpred));
    assign pl_clen = il_len;
    assign pl_cv = pq_count != 5'd0 && pq_count >= {1'b0, il_len};
    assign dec_valid = pl_ok;
    assign dec_len = pl_len;
  end else begin : g_len
    assign pl_cv = 1'b0;
    assign pl_clen = 4'd0;
    assign pl_dv = 1'b0;
    assign pl_dlen = 4'd0;
    assign pl_dlen_own = 4'd0;
    assign pl_ilbr = BR_NONE;
    assign pl_itgt = 32'd0;
    assign pl_ilpred = 1'b0;
    assign pl_u = '0;
    assign pl_cnv = 4'd0;
    assign pl_csnw = 4'd0;
    assign pl_cnst = 5'd0;
    assign pl_clbr = BR_NONE;
    assign pl_clpred = 1'b0;
    assign dec_valid = dec_valid_c;
    assign dec_len = dec_len_c;
  end endgenerate

  // The exception entry sequence: save SR in T1, enter supervisor mode,
  // stack the format $2 address, the format/vector word, the PC and SR,
  // then the vector and a jump to it (M68040 UM 8.4)
  uop_t inj_u;
  always_comb begin
    inj_u = '0;
    inj_u.pc = inj_addr;
    inj_u.opcode = inj_op;
    inj_u.next_pc = inj_pc;
    inj_u.alu = ALU_MOVE;
    inj_u.size = SZ_L;
    inj_u.cc = CC_NONE;
    inj_u.br = BR_NONE;
    inj_u.ea_mode = EAM_PREDEC;
    inj_u.base = R_A7;
    inj_u.noaf = 1'b1;                  // exception processing reports no fault
    case (inj_step)
      5'd0: begin
        inj_u.a_sel = OP_SR;
        inj_u.dst_en = 1'b1; inj_u.dst = R_T1;
        inj_u.first = inj_rec;          // a held write's: a record of its own
      end
      5'd1: begin
        inj_u.a_sel = OP_REG; inj_u.a_reg = R_T1;
        inj_u.imm = {28'd0, inj_int, inj_lvl};
        inj_u.alu = ALU_ENTER;
        inj_u.size = SZ_W;
        inj_u.setsr = 1'b1;
        inj_u.sys = 1'b1;
      end
      5'd7: begin                       // M cleared: A7 is the ISP
        inj_u.a_sel = OP_IMM; inj_u.imm = 32'h0000EFFF;
        inj_u.b_sel = OP_SR;
        inj_u.alu = ALU_AND;
        inj_u.size = SZ_W;
        inj_u.setsr = 1'b1;
        inj_u.sys = 1'b1;
      end
      5'd6: begin
        inj_u.ea_en = 1'b1; inj_u.ea_mode = EAM_PLAIN;
        inj_u.disp = vbr + {22'd0, inj_vec, 2'b00};
        inj_u.load = 1'b1; inj_u.msize = SZ_L;
        inj_u.b_sel = OP_MEM;
        inj_u.br = BR_JMP;
        inj_u.redir = 1'b1;
        inj_u.last = 1'b1;
      end
      default: begin                    // the pushes
        inj_u.ea_en = 1'b1; inj_u.base_en = 1'b1;
        inj_u.store = 1'b1;
        case (inj_step)
          5'd2:    begin inj_u.a_sel = OP_IMM; inj_u.imm = inj_faddr; inj_u.msize = SZ_L; inj_u.step = 3'd4; end
          5'd3:    begin inj_u.a_sel = OP_IMM; inj_u.imm = {16'd0, inj_fmt, 2'b00, inj_vec, 2'b00};
                         inj_u.msize = SZ_W; inj_u.step = 3'd2; end
          5'd8:    begin inj_u.a_sel = OP_IMM; inj_u.imm = {16'd0, 4'h1, 2'b00, inj_vec, 2'b00};
                         inj_u.msize = SZ_W; inj_u.step = 3'd2; end
          5'd4, 5'd9: begin inj_u.a_sel = OP_IMM; inj_u.imm = inj_pc; inj_u.msize = SZ_L; inj_u.step = 3'd4; end
          5'd5, 5'd10: begin inj_u.a_sel = OP_REG; inj_u.a_reg = R_T1; inj_u.msize = SZ_W; inj_u.step = 3'd2; end
          default: begin                // 11-23: the format $7 longs, SP+$38 down to SP+$08; 24-25 $4's
            inj_u.a_sel = OP_IMM; inj_u.msize = SZ_L; inj_u.step = 3'd4;
            // (the 68060 stacks no format $7: only its $4's, so the frame
            // registers of the $7 are left out of its build)
            if (MC68060)
              inj_u.imm = (inj_step == 5'd24) ? fr_fslw : fr_fa;
            else
            case (inj_step)
              5'd11:   inj_u.imm = fr_pd3;
              5'd12:   inj_u.imm = fr_pd2;
              5'd13:   inj_u.imm = fr_pd1;
              5'd14:   inj_u.imm = fr_wb1d;
              5'd15:   inj_u.imm = fr_wb1a;
              5'd16:   inj_u.imm = fr_wb2d;
              5'd17:   inj_u.imm = fr_wb2a;
              5'd18:   inj_u.imm = 32'd0;           // WB3D
              5'd19:   inj_u.imm = 32'd0;           // WB3A
              5'd20:   inj_u.imm = fr_fa;
              5'd21:   inj_u.imm = {8'd0, fr_wb2s, 8'd0, fr_wb1s};
              5'd22:   inj_u.imm = {fr_ssw, 16'd0};  // and WB3S
              5'd24:   inj_u.imm = fr_fslw;          // the 68060's format $4: FSLW, FA
              5'd25:   inj_u.imm = fr_fa;
              default: inj_u.imm = fr_ea;
            endcase
          end
        endcase
      end
    endcase
  end

  // Prediction of the jumps whose target decode does not know: RTS from a
  // stack of return addresses (BSR and JSR push), JMP and JSR through a
  // register from a table of their last targets, by address. EX checks.
  localparam int RASN = 8, BTBN = 16;
  logic [31:0] ras [RASN];
  logic [2:0]  ras_top;                 // the entry of the next push
  logic [3:0]  ras_n;
  logic        btb_v [BTBN];
  logic [31:0] btb_pc [BTBN], btb_t [BTBN];
  logic        dec_is_rts, dec_is_call;
  uop_t        dec_up;                  // dec_u with the prediction
  always_comb begin
    logic [3:0] bi;
    logic       dyn;                    // a jump whose target decode does not know
    dec_up = dec_u;
    // (PRELEN: the prediction from the early decode's registers, the uop's
    // jump itself from decode)
    if (PRELEN) begin
      dec_up.br_target = pl_tgt;
      dec_up.last = dec_step == pl_nst - 5'd1;
      dec_up.br_pred = dec_up.last && pl_lpred;
      dyn = dec_up.last && pl_lbr == BR_JMP && !pl_lpred;
    end else
      dyn = dec_u.br == BR_JMP && !dec_u.br_pred;
    if (rte_cont) dec_up.first = 1'b0;
    dec_is_rts = dec_u.opcode == 16'h4E75;
    dec_is_call = dec_up.last && (dec_u.opcode[15:8] == 8'h61 || dec_u.opcode[15:6] == 10'b0100111010);
    bi = dec_u.pc[4:1];
    if (dyn) begin
      if (dec_is_rts && ras_n != 4'd0) begin
        dec_up.br_pred = 1'b1;
        dec_up.br_target = ras[ras_top - 3'd1];
      end else if (!dec_is_rts && (PRELEN ? pl_bhit : (btb_v[bi] && btb_pc[bi] == dec_u.pc))) begin
        dec_up.br_pred = 1'b1;
        dec_up.br_target = PRELEN ? pl_btgt : btb_t[bi];
      end
    end
  end

  // what enters AG: the injector, or decode
  uop_t src_u;
  logic src_valid;
  assign src_u = inj_active ? inj_u : dec_up;
  assign src_valid = inj_active || dec_valid;

  // ------------------------------------------------- register read at AG

  // A uop whose result is a long it already has before EX (a MOVE of its
  // EA, an immediate, a register read at AG or, in EX, the data it loaded:
  // LEA, MOVEA, MOVE.L to An) gives it to later uops from there.
  function automatic logic early(input uop_t u);
    return u.alu == ALU_MOVE && !u.setsr && !u.ctrl_wr && u.exc == EXC_NONE &&
           (u.dst >= 5'd8 || u.size == SZ_L);
  endfunction
  function automatic logic [31:0] sext_of(input uop_t u, input logic [31:0] v);
    return u.a_sext_w ? sext16(v[15:0]) : v;
  endfunction

  // The youngest in-flight value of register r: the ALU result of an
  // older uop is ready only in WB (or earlier, above), its An update from
  // OF on
  function automatic opnd_t rd(input logic [4:0] r);
    opnd_t o;
    opnd_t ea_;
    o.v = rf[r]; o.rdy = 1'b1; o.tag = 3'd0;
    if (wb_v && wb_an && wb_u.base == r) o.v = wb_anv;
    if (wb_v && wb_u.dst_en && wb_u.dst == r) o.v = wb_res;
    if (ex_v && ex_an && ex_u.base == r) begin o.v = ex_anv; o.rdy = 1'b1; end
    if (ex_v && ex_u.dst_en && ex_u.dst == r) begin
      o.rdy = 1'b0; o.tag = ex_tag;
      if (EARLY_REG) begin
        if (ex_evr) begin o.v = ex_ev; o.rdy = 1'b1; end
      end else if (early(ex_u)) begin
        ea_ = snoop(ex_a);
        case (ex_u.a_sel)
          OP_EA:  begin o.v = ex_ea; o.rdy = 1'b1; end
          OP_IMM: begin o.v = sext_of(ex_u, ex_u.imm); o.rdy = 1'b1; end
          OP_MEM: begin o.v = sext_of(ex_u, ex_mem); o.rdy = 1'b1; end
          OP_REG: if (ea_.rdy) begin o.v = sext_of(ex_u, ea_.v); o.rdy = 1'b1; end
          default: ;
        endcase
      end
    end
    if (of_v && of_an && of_u.base == r) begin o.v = of_anv; o.rdy = 1'b1; end
    if (of_v && of_u.dst_en && of_u.dst == r) begin
      o.rdy = 1'b0; o.tag = of_tag;
      if (EARLY_REG) begin
        if (of_evr) begin o.v = of_ev; o.rdy = 1'b1; end
      end else if (early(of_u)) begin
        ea_ = snoop(of_a);
        case (of_u.a_sel)
          OP_EA:  if (!of_need_ind) begin o.v = of_ea; o.rdy = 1'b1; end
          OP_IMM: begin o.v = sext_of(of_u, of_u.imm); o.rdy = 1'b1; end
          OP_REG: if (ea_.rdy) begin o.v = sext_of(of_u, ea_.v); o.rdy = 1'b1; end
          default: ;
        endcase
      end
    end
    return o;
  endfunction

  // a value not ready at AG arrives with its producer in WB
  function automatic opnd_t snoop(input opnd_t o);
    opnd_t n;
    n = o;
    if (!o.rdy && wb_v && wb_tag == o.tag) begin n.v = wb_res; n.rdy = 1'b1; end
    return n;
  endfunction
  opnd_t       of_as, ex_as;            // (EARLY_REG) of_a and ex_a snooped
  assign of_as = snoop(of_a);
  assign ex_as = snoop(ex_a);

  opnd_t       ag_base, ag_idx, ag_a, ag_b;
  logic        ag_stall;
  logic [31:0] ag_ea, ag_anv, ag_xv;
  logic        ag_an;

  always_comb begin
    logic [31:0] bv, xv;
    ag_base = rd(ag_u.base);
    ag_idx  = rd(ag_u.idx);
    ag_a    = rd(ag_u.a_reg);
    ag_b    = rd(ag_u.b_reg);
    if (ag_u.a_sel != OP_REG) ag_a = '{v: 32'd0, rdy: 1'b1, tag: 3'd0};
    if (ag_u.b_sel != OP_REG) ag_b = '{v: 32'd0, rdy: 1'b1, tag: 3'd0};
    ag_stall = ag_u.ea_en && ((ag_u.base_en && !ag_base.rdy) || (ag_u.idx_en && !ag_idx.rdy));

    bv = ag_u.base_en ? ag_base.v : 32'd0;
    if (ag_u.al16) bv = {bv[31:4], 4'd0};
    xv = ag_u.idx_l ? ag_idx.v : sext16(ag_idx.v[15:0]);
    xv = ag_u.idx_en ? (xv << ag_u.scale) : 32'd0;
    ag_xv = xv;
    if (ag_u.ind && ag_u.ind_post) xv = 32'd0;   // added after the pointer
    ag_an = ag_u.ea_en && ag_u.ea_mode != EAM_PLAIN;
    case (ag_u.ea_mode)
      EAM_POSTINC: begin ag_ea = bv; ag_anv = bv + {29'd0, ag_u.step}; end
      EAM_PREDEC:  begin ag_ea = bv - {29'd0, ag_u.step}; ag_anv = ag_ea; end
      default:     begin ag_ea = bv + xv + ag_u.disp; ag_anv = 32'd0; end
    endcase
  end

  // -------------------------------------------------------------------- EX

  function automatic logic msb(input size_e s, input logic [31:0] v);
    return (s == SZ_B) ? v[7] : (s == SZ_W) ? v[15] : v[31];
  endfunction

  function automatic logic [31:0] szmask(input size_e s);
    return (s == SZ_B) ? 32'h000000FF : (s == SZ_W) ? 32'h0000FFFF : 32'hFFFFFFFF;
  endfunction

  // ROXL and ROXR: the count modulo the size + 1 as a rotation right
  // (ROXL by k: by the size + 1 - k), constant tables
  function automatic logic [5:0] rox_r(input logic [5:0] cnt, input size_e sz, input logic left);
    logic [5:0] t9 [128], t17 [128], t33 [128];
    for (int i = 0; i < 64; i++) begin
      t9[i] = 6'(i % 9); t17[i] = 6'(i % 17); t33[i] = 6'(i % 33);
      t9[64 + i] = 6'((9 - i % 9) % 9); t17[64 + i] = 6'((17 - i % 17) % 17); t33[64 + i] = 6'((33 - i % 33) % 33);
    end
    return (sz == SZ_B) ? t9[{left, cnt}] : (sz == SZ_W) ? t17[{left, cnt}] : t33[{left, cnt}];
  endfunction

  // Shifts and rotates of b by cnt (0-63) at size sz, x the X flag in:
  // {X out, C, V, result}. AS and LS: C and X the last bit out, X kept
  // and C clear for a count of 0, V of ASL set when the most significant
  // bit changed at any time; RO: C the last bit out, X kept; ROX: through
  // X, modulo the size + 1 (M68000 PRM 4). One funnel for all: 65 bits
  // shifted right by 0-31, o[32:1] the result and o[0] the last bit out to
  // the right, o[w + 1] the one to the left (and ROX's new X): the left
  // shifts by 31 - cnt from the operand at the top, the rotates and ROX
  // from the operand repeated (ROXL as ROXR by the size + 1 - cnt).
  function automatic logic [34:0] shifter(input alu_e op, input size_e sz, input logic [5:0] cnt,
                                          input logic [31:0] b, input logic x);
    logic [31:0] m, bm, res, sx, rr, vm;
    logic [64:0] f;
    logic [32:0] y;
    logic [33:0] o;
    logic [5:0] k;
    logic [4:0] s;
    logic big, c, v, xn, cw;
    m = (sz == SZ_B) ? 32'hFF : (sz == SZ_W) ? 32'hFFFF : 32'hFFFFFFFF;
    bm = b & m;
    sx = (sz == SZ_B) ? sext8(bm[7:0]) : (sz == SZ_W) ? sext16(bm[15:0]) : bm;
    rr = (sz == SZ_B) ? {4{bm[7:0]}} : (sz == SZ_W) ? {2{bm[15:0]}} : bm;
    k = rox_r(cnt, sz, op == ALU_ROXL);
    y = (sz == SZ_B) ? {24'd0, x, bm[7:0]} : (sz == SZ_W) ? {16'd0, x, bm[15:0]} : {x, bm};
    big = cnt[5];
    f[64] = 1'b0;
    case (op)
      ALU_ASL, ALU_LSL: begin f[63:0] = {bm, 32'd0}; s = ~cnt[4:0]; end
      ALU_LSR:          begin f[63:0] = {31'd0, bm, 1'b0}; s = cnt[4:0]; end
      ALU_ASR:          begin f[63:0] = {{31{sx[31]}}, sx, 1'b0}; s = cnt[4:0]; end
      ALU_ROL:          begin f[63:0] = {rr, rr}; s = ~cnt[4:0]; end
      ALU_ROR:          begin f[63:0] = {rr[30:0], rr, rr[31]}; s = cnt[4:0]; end
      default: begin                    // ROX: y repeated, f[i] = y[(i - 1) mod (w + 1)]
        for (int i = 0; i < 65; i++)
          f[i] = (sz == SZ_B) ? y[(i + 8) % 9] : (sz == SZ_W) ? y[(i + 16) % 17] : y[(i + 32) % 33];
        s = k[4:0];
      end
    endcase
    o = 34'(f >> s);
    res = o[32:1] & m;
    cw = (sz == SZ_B) ? o[9] : (sz == SZ_W) ? o[17] : o[33];
    c = 1'b0; v = 1'b0; xn = x;
    case (op)
      ALU_ASL, ALU_LSL: begin
        c = cnt != 6'd0 && cw;
        if (big) begin res = 32'd0; c = cnt == 6'd32 && sz == SZ_L && bm[0]; end
        if (op == ALU_ASL) begin
          // the bits the most significant one runs through: all equal
          vm = m & ~((m >> 1) >> cnt);
          v = (bm & vm) != 32'd0 && ((bm & vm) != vm || (m >> cnt) == 32'd0);
        end
        if (cnt != 6'd0) xn = c;
      end
      ALU_LSR, ALU_ASR: begin
        c = cnt != 6'd0 && o[0];
        if (big) begin
          res = (op == ALU_ASR && sx[31]) ? m : 32'd0;
          c = op == ALU_ASR ? sx[31] : cnt == 6'd32 && bm[31];
        end
        if (cnt != 6'd0) xn = c;
      end
      ALU_ROL, ALU_ROR:
        c = cnt != 6'd0 && (op == ALU_ROL ? res[0] : ((sz == SZ_B) ? res[7] : (sz == SZ_W) ? res[15] : res[31]));
      default: begin
        if (k[5]) begin                 // by 32 of 33 bits: one to the left
          res = {bm[30:0], x}; xn = bm[31];
        end else
          xn = cw;
        c = xn;
      end
    endcase
    return {xn, c, v, res};
  endfunction

  // ABCD, SBCD, NBCD as TG68K.C computes them, invalid digits included:
  // the binary sum or difference with X, then +-6 per digit from the
  // digit carries (and, adding, from digits above 9). {carry, result}
  function automatic logic [8:0] bcd(input logic sub, input logic [7:0] d, input logic [7:0] s,
                                     input logic x);
    logic [8:0] sm, kor, res;
    logic [9:0] pur;
    logic       hc;
    sm = sub ? {1'b0, d} - {1'b0, s} - {8'd0, x} : {1'b0, d} + {1'b0, s} + {8'd0, x};
    pur = {sm, 1'b0};
    hc = d[4] ^ s[4] ^ pur[5];
    kor = 9'd0;
    if (hc) kor[3:0] = 4'd6;
    if (pur[9]) kor[7:4] = 4'd6;
    if (!sub) begin
      if (pur[4] && (pur[3] || pur[2])) kor[3:0] = 4'd6;
      if (pur[8] && (pur[7] || pur[6] || (pur[5] && pur[4] && (pur[3] || pur[2])))) kor[7:4] = 4'd6;
      res = pur[9:1] + kor;
    end else
      res = pur[9:1] - kor;
    return {pur[9] | res[8], res[7:0]};
  endfunction

  // a transparent translation register matches (the MMU's tt_match)
  function automatic logic tt_hit_of(input logic [31:0] tt, input logic [31:0] a, input logic s);
    logic m;
    m = tt[15];
    for (int i = 0; i < 8; i++)
      if (!tt[16 + i] && tt[24 + i] != a[24 + i]) m = 1'b0;
    if (!tt[14] && tt[13] != s) m = 1'b0;
    return m;
  endfunction

  // the stack pointer register of a mode
  // (the 68060 has one supervisor stack)
  function automatic logic [4:0] sp_of(input logic s, input logic m);
    return !s ? R_USP : (m && !MC68060) ? R_MSP : R_ISP;
  endfunction

  // MOVEC read (TG68K.C's movec_data in the 68040 mode; the 68060's
  // registers are zero in it)
  function automatic logic [31:0] ctrl_rd(input logic [11:0] c);
    case (c)
      12'h000: return {29'd0, sfc};
      12'h001: return {29'd0, dfc};
      12'h002: return {cacr[1], 15'd0, cacr[0], 15'd0} | cacr_x;
      12'h003: return {16'd0, tc_e, tc_p, tc_x};
      12'h008: return {buscr, 28'd0};
      12'h808: return {16'h0430, 8'h06, pcr};      // an MC68060, revision 6
      12'h004: return itt0;
      12'h005: return itt1;
      12'h006: return dtt0;
      12'h007: return dtt1;
      12'h801: return vbr;
      12'h805: return mmusr;
      12'h806: return urp;
      12'h807: return srp;
      default: return 32'd0;
    endcase
  endfunction

  logic [31:0] ex_av, ex_bv, ex_res, ex_npc;
  logic [4:0]  ex_ccr;
  logic        ex_mispredict, ex_exc;
  logic [15:0] ex_sr;
  logic        ex_bk_en;
  logic [4:0]  ex_bk_idx;
  logic [31:0] ex_bk_val;
  logic [4:0]  ex_dst;
  logic        ex_dst_en;
  logic        ex_wait;                 // a division still running
  logic        ex_slow, ex_s2;          // EX_SLOW: a two-cycle operation; in its second
  // the bit field unit (m68k_bfu): started as a BFOP uop is in EX, which
  // waits for it
  logic        bf_go, bf_started, bf_have, bfu_done, bfu_n, bfu_z;
  logic [31:0] bfu_res;
  logic [39:0] bfu_newd;
  logic [31:0] ex_aq, ex_bq;            // EX_SLOW: the operands of the last cycle
  logic        ex_isdiv;
  logic        ex_dsgn;                 // signed division
  logic [63:0] ex_dvnd;                 // dividend
  logic [31:0] ex_dvsr;                 // divisor
  logic [31:0] ex_mdhi;
  logic        ex_mdovf;
  logic [39:0] ex_bfnew;
  logic [2:0]  ex_bfnb;
  logic        ex_st_en;                // BFST: the field covers the byte

  // EX_PRESEL: the operands that are not registers, chosen in OF
  logic [31:0] ex_ap, ex_bp;
  function automatic logic [31:0] presel(input opsel_e sel, input uop_t u, input logic [31:0] ea,
                                         input logic [31:0] mem, input logic a);
    case (sel)
      OP_IMM:  return u.imm;
      OP_MEM:  return mem;
      OP_EA:   return ea;
      OP_CTRL: return a ? ctrl_rd(u.imm[11:0]) : 32'd0;
      default: return 32'd0;
    endcase
  endfunction

  // the operands of the uop in EX
  always_comb begin
    opnd_t fa, fb;
    fa = snoop(ex_a);
    fb = snoop(ex_b);
    if (EX_PRESEL) begin
      case (ex_u.a_sel)
        OP_REG:  ex_av = fa.v;
        OP_SR:   ex_av = {16'd0, sr_hi, 3'd0, ccr_spec};
        OP_CCR:  ex_av = {27'd0, ccr_spec};
        default: ex_av = ex_ap;
      endcase
      if (ex_u.a_sext_w) ex_av = sext16(ex_av[15:0]);
      case (ex_u.b_sel)
        OP_REG:  ex_bv = fb.v;
        OP_SR:   ex_bv = {16'd0, sr_hi, 3'd0, ccr_spec};
        default: ex_bv = ex_bp;
      endcase
    end else begin
    case (ex_u.a_sel)
      OP_REG:  ex_av = fa.v;
      OP_IMM:  ex_av = ex_u.imm;
      OP_MEM:  ex_av = ex_mem;
      OP_EA:   ex_av = ex_ea;
      OP_SR:   ex_av = {16'd0, sr_hi, 3'd0, ccr_spec};
      OP_CCR:  ex_av = {27'd0, ccr_spec};
      OP_CTRL: ex_av = ctrl_rd(ex_u.imm[11:0]);
      default: ex_av = 32'd0;
    endcase
    if (ex_u.a_sext_w) ex_av = sext16(ex_av[15:0]);
    case (ex_u.b_sel)
      OP_REG:  ex_bv = fb.v;
      OP_IMM:  ex_bv = ex_u.imm;
      OP_MEM:  ex_bv = ex_mem;
      OP_EA:   ex_bv = ex_ea;
      OP_SR:   ex_bv = {16'd0, sr_hi, 3'd0, ccr_spec};
      default: ex_bv = 32'd0;
    endcase
    end
  end

  // PCR DFP (68060): the operand address of the floating-point instruction
  // in EX (UM 8.2.4): 0 for a register, An for (An) and (An)+, the first
  // operand of -(An) (An - 4 for extended and packed), else the core's.
  // (The registers are architectural: nothing older is left by then.)
  logic [31:0] dfp_ea;
  always_comb begin
    logic [2:0]  m, f, cl;
    logic [31:0] an;
    logic [7:0]  sz;
    m = ex_u.opcode[5:3];
    cl = ex_u.imm[15:13];
    f = ex_u.imm[12:10];
    an = rf[{2'b01, ex_u.opcode[2:0]}];
    case (f)
      3'b000, 3'b001, 3'b010, 3'b011: sz = 8'd4;
      3'b100:  sz = 8'd2;
      3'b101:  sz = 8'd8;
      default: sz = 8'd1;
    endcase
    if (cl == 3'b100 || cl == 3'b101)
      sz = 8'd4 * (8'(ex_u.imm[12]) + 8'(ex_u.imm[11]) + 8'(ex_u.imm[10]));
    if (ex_u.opcode[8:7] == 2'b10) sz = 8'd12;              // FSAVE, FRESTORE
    case (m)
      3'b010, 3'b011: dfp_ea = an;
      3'b100:         dfp_ea = an - {24'd0, sz};
      3'b101, 3'b110, 3'b111: dfp_ea = ex_ea;
      default:        dfp_ea = 32'd0;
    endcase
    if (ex_u.fbcc || (ex_u.opcode[8:6] == 3'b000 && cl == 3'b000)) dfp_ea = 32'd0;
  end

  // operands of a division in EX
  always_comb begin
    logic l;
    ex_isdiv = ex_u.alu == ALU_DIVU || ex_u.alu == ALU_DIVS || ex_u.alu == ALU_DIVUL || ex_u.alu == ALU_DIVSL;
    ex_dsgn = ex_u.alu == ALU_DIVS || ex_u.alu == ALU_DIVSL;
    l = ex_u.alu == ALU_DIVUL || ex_u.alu == ALU_DIVSL;
    if (!l)
      ex_dvsr = ex_dsgn ? sext16(ex_av[15:0]) : {16'd0, ex_av[15:0]};
    else
      ex_dvsr = ex_av;
    if (l && ex_u.md64)
      ex_dvnd = {mdhi, ex_bv};
    else
      ex_dvnd = ex_dsgn ? {{32{ex_bv[31]}}, ex_bv} : {32'd0, ex_bv};
  end
  // PTEST and PFLUSH: once nothing older is left and the MMU searches no
  // table, one cycle of ptest/pflush, then (PTEST) its done; MMUSR then.
  // The 68060's PLPA is a PTEST (mmusr keeps its result), none with TC E
  // clear (the address is the physical one)
  logic mmx_go, mmx_done, plpa_off;
  assign plpa_off = MC68060 && !tc_e;
  assign mmu_ptest_i = ex_v && ex_u.mmuop == 2'd1 && !mmx_go && !mmx_done && !wb_v && !sb_v[0] && mmu_idle && mmu_free &&
                       !plpa_off;
  assign mmu_pflush_i = ex_v && ex_u.mmuop == 2'd2 && !mmx_done && !wb_v && !sb_v[0] && mmu_idle && mmu_free;

  // (FBcc waits for the FPCC of an operation still running)
  logic        ex_shop;                 // a shift or rotate (SH_SLOW: two cycles)
  logic [34:0] ex_shq;                  // SH_SLOW: the shifter's output of the first
  logic [31:0] ex_mq;                   // MUL_SLOW: the word product of the first
  assign ex_shop = ex_u.alu == ALU_ASL || ex_u.alu == ALU_ASR || ex_u.alu == ALU_LSL || ex_u.alu == ALU_LSR ||
                   ex_u.alu == ALU_ROL || ex_u.alu == ALU_ROR || ex_u.alu == ALU_ROXL || ex_u.alu == ALU_ROXR;
  assign ex_slow = (EX_SLOW && (ex_u.alu == ALU_MULUL || ex_u.alu == ALU_MULSL)) || (SH_SLOW && ex_shop) ||
                   (MUL_SLOW && (ex_u.alu == ALU_MULU || ex_u.alu == ALU_MULS));
  assign bf_go = ex_v && ex_u.alu == ALU_BFOP && !bf_started;
  m68k_bfu bfu (
    .clk, .rst, .ena(ce), .start(bf_go), .in_reg(ex_u.cond[3]), .op(ex_u.cond[2:0]), .off(bf_off),
    .w(ex_av[4:0]), .val(ex_bv), .data(bf_data), .ins(bf_ins),
    .done(bfu_done), .res(bfu_res), .newd(bfu_newd), .n(bfu_n), .z(bfu_z)
  );
  assign ex_wait = (ex_v && ex_slow && !ex_s2) ||
                   (ex_v && ex_u.alu == ALU_BFOP && !bf_have) ||
                   (ex_v && ex_isdiv && ex_dvsr != 32'd0 && !dv_done) ||
                   (ex_v && ex_u.fpu && !fx_done && !(MC68060 && pcr[1])) ||
                   (ex_v && MC68060 && pcr[1] && (ex_u.fpu || ex_u.fbcc) && (wb_v || sb_v[0])) ||
                   (ex_v && ex_u.fbcc && fpu_busy) ||
                   (ex_v && ((ex_u.mmuop == 2'd1 && !plpa_off) || ex_u.mmuop == 2'd2) && !mmx_done) ||
                   (ex_v && ex_u.mmuop == 2'd3 && (wb_v || sb_v[0]));

  always_comb begin
    logic [31:0] r, m, s, dd, bm, a7_now, fsrc;
    logic [34:0] sh;
    logic        xin;
    logic [63:0] p64, qs;
    logic [31:0] rs;
    logic        mov, neg, dz;
    logic [8:0]  bc;
    logic [15:0] pk;
    logic [5:0]  bw;
    logic [2:0]  bo;
    logic signed [31:0] bfo8;           // the byte offset: the bit offset / 8, signed
    logic [31:0] lbm, ubm, lbx, ubx, rnx;
    logic        c_ul, c1, c2, z1, z2;
    logic [3:0]  c2f;                   // CMP2/CHK2: N Z V C as TG68K.C
    logic [32:0] t;
    logic        cnd, c, v, z, nflag;
    logic        ex_far;                // EX_FASTCC: an add or subtract, its flags from the adder
    logic [31:0] pred;
    logic [4:0]  old_sp, new_sp;
    logic [31:0] sav, sbv;              // the operands of MULx.L

    cnd = ex_u.fbcc ? fpred(ex_u.opcode[5:0], fpu_fpcc) : cond_true(ex_u.cond, ccr_spec);
    m = szmask(ex_u.size);
    s = ex_av;                       // flag operands: source, destination
    dd = ex_bv;
    t = 33'd0;
    bm = 32'd1 << (ex_av[4:0] & ((ex_u.size == SZ_L) ? 5'd31 : 5'd7));
    xin = ccr_spec[4];
    bc = 9'd0;
    pk = 16'd0;

    // bit field: the width and the first byte's bit offset, for the bytes
    // the field covers (the field itself: m68k_bfu)
    sav = EX_SLOW ? ex_aq : ex_av;
    sbv = EX_SLOW ? ex_bq : ex_bv;
    bw = (ex_av[4:0] == 5'd0) ? 6'd32 : {1'b0, ex_av[4:0]};
    bo = bf_off[2:0];
    bfo8 = $signed(bf_off) >>> 3;
    // CMP2/CHK2: the order of the bounds picks an unsigned compare (UB >= LB)
    // or a signed one; An against bounds sign-extended to a long
    lbm = ex_bv & szmask(ex_u.size);
    ubm = mdhi & szmask(ex_u.size);
    if (ex_u.a_reg >= 5'd8) begin
      lbx = (ex_u.size == SZ_B) ? sext8(lbm[7:0]) : (ex_u.size == SZ_W) ? sext16(lbm[15:0]) : lbm;
      ubx = (ex_u.size == SZ_B) ? sext8(ubm[7:0]) : (ex_u.size == SZ_W) ? sext16(ubm[15:0]) : ubm;
      rnx = ex_av;
    end else begin
      lbx = lbm; ubx = ubm; rnx = ex_av & szmask(ex_u.size);
    end
    c_ul = ubm < lbm;
    c1 = rnx < lbx; z1 = rnx == lbx;
    c2 = rnx < ubx; z2 = rnx == ubx;
    c2f = {!c_ul, z1 | z2, 1'b0,
           c_ul ? ((c1 ^ c2) & !z1 & !z2) : (c1 | (!c2 & !z2))};
    ex_bfnew = bfu_newd;
    ex_bfnb = 3'(({3'd0, bo} + bw + 6'd7) >> 3);
    // (a CAS whose compare fails writes the operand back on the 68060, UM
    // 7.7.5: "For the CAS instruction, the value read from memory is written
    // back"; CAS2 is left to the M68060SP there)
    ex_st_en = (ex_u.alu != ALU_BFST || ex_u.imm[2:0] < bf_nb) && (ex_u.alu != ALU_CASST || cas_eq || MC68060);
    sh = SH_SLOW ? ex_shq : shifter(ex_u.alu, ex_u.size, ex_av[5:0], ex_bv, xin);
    // 32 x 32 to 64
    if (ex_u.alu == ALU_MULSL) p64 = {{32{sbv[31]}}, sbv} * {{32{sav[31]}}, sav};
    else                       p64 = {32'd0, sbv} * {32'd0, sav};
    // the signed quotient and remainder, and whether the quotient fits
    // (else V and the destination unchanged)
    dz = ex_dvsr == 32'd0;
    neg = ex_dsgn && (ex_dvnd[63] ^ ex_dvsr[31]);
    qs = neg ? 64'd0 - dv_q : dv_q;
    rs = (ex_dsgn && ex_dvnd[63]) ? 32'd0 - dv_r[31:0] : dv_r[31:0];
    if (ex_u.alu == ALU_DIVU)       mov = dv_q > 64'h0000_0000_0000_FFFF;
    else if (ex_u.alu == ALU_DIVS)  mov = dv_q > (neg ? 64'h8000 : 64'h7FFF);
    else if (ex_u.alu == ALU_DIVUL) mov = dv_q > 64'h0000_0000_FFFF_FFFF;
    else                            mov = dv_q > (neg ? 64'h8000_0000 : 64'h7FFF_FFFF);
    ex_mdhi = mdhi;
    ex_mdovf = 1'b0;
    case (ex_u.alu)
      ALU_SETHI:            ex_mdhi = ex_av;
      ALU_MULUL, ALU_MULSL: ex_mdhi = p64[63:32];
      ALU_DIVUL, ALU_DIVSL: begin ex_mdhi = rs; ex_mdovf = mov; end
      default: ;
    endcase
    case (ex_u.alu)
      ALU_MOVE:  r = ex_av;
      // (EX_FASTCC: the adds and subtracts below the case, off its select)
      ALU_ADD:   begin t = EX_FASTCC ? 33'd0 : {1'b0, ex_bv & m} + {1'b0, ex_av & m}; r = EX_FASTCC ? 32'd0 : ex_bv + ex_av; end
      ALU_SUB:   begin t = EX_FASTCC ? 33'd0 : {1'b0, ex_bv & m} - {1'b0, ex_av & m}; r = EX_FASTCC ? 32'd0 : ex_bv - ex_av; end
      ALU_AND:   r = ex_bv & ex_av;
      ALU_OR:    r = ex_bv | ex_av;
      ALU_EOR:   r = ex_bv ^ ex_av;
      ALU_NEG:   begin t = 33'd0 - {1'b0, ex_bv & m}; r = 32'd0 - ex_bv; s = ex_bv; dd = 32'd0; end
      ALU_NOT:   r = ~ex_bv;
      ALU_EXTW:  r = sext8(ex_bv[7:0]);
      ALU_EXTL:  r = sext16(ex_bv[15:0]);
      ALU_EXTBL: r = sext8(ex_bv[7:0]);
      ALU_SWAP:  r = {ex_bv[15:0], ex_bv[31:16]};
      ALU_SCC:   r = cnd ? 32'hFFFFFFFF : 32'd0;
      ALU_DBCC:  r = cnd ? ex_bv : ex_bv - 32'd1;
      ALU_BTST:  r = ex_bv;
      ALU_BCHG:  r = ex_bv ^ bm;
      ALU_BCLR:  r = ex_bv & ~bm;
      ALU_BSET:  r = ex_bv | bm;
      ALU_ENTER: begin                  // S set, T clear; an interrupt sets the mask
                   r = {16'd0, (ex_av[15:0] & 16'h3FFF) | 16'h2000};
                   if (ex_u.imm[3]) r[10:8] = ex_u.imm[2:0];
                   if (ex_u.imm[3] && MC68060) r[12] = 1'b0;   // an interrupt clears M
                 end
      ALU_FRAME: r = ex_bv + ((ex_av[15:12] == 4'h2 || ex_av[15:12] == 4'h3) ? 32'd12 :
                              (ex_av[15:12] == 4'h4 && MC68060) ? 32'd16 :
                              (ex_av[15:12] == 4'h7) ? 32'd60 : 32'd8);
      ALU_ASL, ALU_ASR, ALU_LSL, ALU_LSR,
      ALU_ROL, ALU_ROR, ALU_ROXL, ALU_ROXR:
                 r = sh[31:0];
      ALU_ADDX:  begin t = EX_FASTCC ? 33'd0 : {1'b0, ex_bv & m} + {1'b0, ex_av & m} + {32'd0, xin}; r = EX_FASTCC ? 32'd0 : ex_bv + ex_av + {31'd0, xin}; end
      ALU_SUBX:  begin t = EX_FASTCC ? 33'd0 : {1'b0, ex_bv & m} - {1'b0, ex_av & m} - {32'd0, xin}; r = EX_FASTCC ? 32'd0 : ex_bv - ex_av - {31'd0, xin}; end
      ALU_NEGX:  begin t = EX_FASTCC ? 33'd0 : 33'd0 - {1'b0, ex_bv & m} - {32'd0, xin}; r = EX_FASTCC ? 32'd0 : 32'd0 - ex_bv - {31'd0, xin};
                       s = ex_bv; dd = 32'd0; end
      ALU_TAS:   r = ex_bv | 32'h80;
      ALU_CHK:   r = ex_bv;
      ALU_MULU:  r = MUL_SLOW ? ex_mq : {16'd0, ex_bv[15:0]} * {16'd0, ex_av[15:0]};
      ALU_MULS:  r = MUL_SLOW ? ex_mq : sext16(ex_bv[15:0]) * sext16(ex_av[15:0]);
      ALU_MULUL, ALU_MULSL: r = p64[31:0];
      ALU_DIVU, ALU_DIVS: r = mov ? ex_bv : {rs[15:0], qs[15:0]};
      ALU_DIVUL, ALU_DIVSL: r = mov ? ex_bv : qs[31:0];
      ALU_MDHI:  r = md_ovf ? ex_av : mdhi;
      ALU_ABCD:  begin bc = bcd(1'b0, ex_bv[7:0], ex_av[7:0], xin); r = {ex_bv[31:8], bc[7:0]}; end
      ALU_SBCD:  begin bc = bcd(1'b1, ex_bv[7:0], ex_av[7:0], xin); r = {ex_bv[31:8], bc[7:0]}; end
      ALU_NBCD:  begin bc = bcd(1'b1, 8'd0, ex_bv[7:0], xin); r = {ex_bv[31:8], bc[7:0]}; end
      ALU_PACK:  begin pk = ex_av[15:0] + ex_u.imm[15:0]; r = {ex_bv[31:8], pk[11:8], pk[3:0]}; end
      ALU_UNPK:  begin pk = {4'd0, ex_av[7:4], 4'd0, ex_av[3:0]} + ex_u.imm[15:0]; r = {ex_bv[31:16], pk}; end
      ALU_INSB:  case (ex_u.imm[1:0])
                   2'd0:    r = {ex_bv[31:8], ex_av[7:0]};
                   2'd1:    r = {ex_bv[31:16], ex_av[7:0], ex_bv[7:0]};
                   2'd2:    r = {ex_bv[31:24], ex_av[7:0], ex_bv[15:0]};
                   default: r = {ex_av[7:0], ex_bv[23:0]};
                 endcase
      ALU_EXTRB: r = ex_bv >> {ex_u.imm[1:0], 3'b000};
      ALU_BFADDR: r = ex_av + bfo8;
      ALU_BFOP:  r = 32'd0;              // (the result comes in last, below: its flags are CC_BF's)
      ALU_BFST:  r = {24'd0, bf_new[39 - 8 * int'(ex_u.imm[2:0]) -: 8]};
      ALU_CASCMP: begin t = EX_FASTCC ? 33'd0 : {1'b0, ex_bv & m} - {1'b0, ex_av & m}; r = EX_FASTCC ? 32'd0 : ex_bv - ex_av; end
      ALU_CASSEL: r = cas_eq ? ex_bv : ex_av;
      ALU_CASST:  r = (MC68060 && !cas_eq) ? ex_bv : ex_av;
      ALU_CHK2:   r = {27'd0, ccr_spec[4], c2f};
      default:   r = ex_av;
    endcase

    // PLPA: the physical address (the logical one, transparent or E clear)
    if (MC68060 && ex_u.mmuop == 2'd1)
      r = (!tc_e || mmusr[1]) ? ex_av : tc_p ? {mmusr[31:13], ex_av[12:0]} : {mmusr[31:12], ex_av[11:0]};

    // condition codes (TAS: of the operand before the bit is set)
    // (EX_FASTCC: r has no add here; the flags of the others are of it)
    fsrc = (ex_u.alu == ALU_TAS) ? ex_bv : r;
    nflag = msb(ex_u.size, fsrc);
    z = (fsrc & m) == 32'd0;
    if (EX_FASTCC)
      case (ex_u.alu)
        ALU_ADD:             begin t = {1'b0, ex_bv & m} + {1'b0, ex_av & m}; r = ex_bv + ex_av; end
        ALU_SUB, ALU_CASCMP: begin t = {1'b0, ex_bv & m} - {1'b0, ex_av & m}; r = ex_bv - ex_av; end
        ALU_ADDX:            begin t = {1'b0, ex_bv & m} + {1'b0, ex_av & m} + {32'd0, xin}; r = ex_bv + ex_av + {31'd0, xin}; end
        ALU_SUBX:            begin t = {1'b0, ex_bv & m} - {1'b0, ex_av & m} - {32'd0, xin}; r = ex_bv - ex_av - {31'd0, xin}; end
        ALU_NEGX:            begin t = 33'd0 - {1'b0, ex_bv & m} - {32'd0, xin}; r = 32'd0 - ex_bv - {31'd0, xin}; end
        default: ;
      endcase
    // (EX_FASTCC: each add or subtract as b + a' + c)
    begin
      logic [31:0] fa_, fb_;
      logic        fc_, far;
      far = 1'b1; fa_ = ex_av; fb_ = ex_bv; fc_ = 1'b0;
      case (ex_u.alu)
        ALU_ADD:             ;
        ALU_SUB, ALU_CASCMP: begin fa_ = ~ex_av; fc_ = 1'b1; end
        ALU_ADDX:            fc_ = xin;
        ALU_SUBX:            begin fa_ = ~ex_av; fc_ = !xin; end
        ALU_NEGX:            begin fa_ = ~ex_bv; fb_ = 32'd0; fc_ = !xin; end
        default:             far = 1'b0;
      endcase
      if (EX_FASTCC && far) begin
        z = ((fa_ ^ fb_) & m) == ((((fa_ | fb_) << 1) | {31'd0, fc_}) & m);
        nflag = msb(ex_u.size, t[31:0]);
      end
      ex_far = EX_FASTCC && far;
    end
    case (ex_u.size)
      SZ_B:    c = t[8];
      SZ_W:    c = t[16];
      default: c = t[32];
    endcase
    if (ex_u.alu == ALU_ADD || ex_u.alu == ALU_ADDX)
      v = (msb(ex_u.size, s) == msb(ex_u.size, dd)) && (msb(ex_u.size, ex_far ? t[31:0] : r) != msb(ex_u.size, dd));
    else
      v = (msb(ex_u.size, s) != msb(ex_u.size, dd)) && (msb(ex_u.size, ex_far ? t[31:0] : r) != msb(ex_u.size, dd));
    case (ex_u.cc)
      CC_LOGIC: ex_ccr = {ccr_spec[4], nflag, z, 1'b0, 1'b0};
      CC_ADD,
      CC_SUB:   ex_ccr = {c, nflag, z, v, c};
      CC_CMP:   ex_ccr = {ccr_spec[4], nflag, z, v, c};
      CC_SET:   ex_ccr = r[4:0];
      CC_Z:     ex_ccr = {ccr_spec[4:3], (ex_bv & bm) == 32'd0, ccr_spec[1:0]};
      CC_X:     ex_ccr = {c, nflag, z & ccr_spec[2], v, c};
      CC_SHIFT: ex_ccr = {sh[34], nflag, z, sh[32], sh[33]};
      CC_BCD:   ex_ccr = {bc[8], nflag, z & ccr_spec[2], 1'b0, bc[8]};
      CC_CAS2:  ex_ccr = cas_eq1 ? {ccr_spec[4], nflag, z, v, c} : ccr_spec;
      CC_BF:    ex_ccr = {ccr_spec[4], bfu_n, bfu_z, 2'b00};
      CC_MULL:  ex_ccr = ex_u.md64 ? {ccr_spec[4], p64[63], p64 == 64'd0, 2'b00}
                                   : {ccr_spec[4], p64[31], p64[31:0] == 32'd0,
                                      ex_u.alu == ALU_MULSL ? p64[63:32] != {32{p64[31]}} : p64[63:32] != 32'd0,
                                      1'b0};
      CC_DIV:   if (dz)       // TG68K.C in the 68040 mode: 0100, measured for every form
                  ex_ccr = {ccr_spec[4], 4'b0100};
                else if (mov) ex_ccr = {ccr_spec[4], 4'b1010};
                else if (ex_u.alu == ALU_DIVU || ex_u.alu == ALU_DIVS)
                  ex_ccr = {ccr_spec[4], qs[15], qs[15:0] == 16'd0, 2'b00};
                else
                  ex_ccr = {ccr_spec[4], qs[31], qs[31:0] == 32'd0, 2'b00};
      default:  ex_ccr = ccr_spec;
    endcase

    // a data register written as a byte or word keeps its upper part
    // (DIVx.W writes the whole register: remainder and quotient)
    ex_res = r;
    if (ex_u.dst_en && ex_u.dst < 5'd8 && ex_u.size == SZ_B) ex_res = {ex_bv[31:8], r[7:0]};
    if (ex_u.dst_en && ex_u.dst < 5'd8 && ex_u.size == SZ_W && !ex_isdiv) ex_res = {ex_bv[31:16], r[15:0]};
    // a bit field operation's result (m68k_bfu)
    if (ex_u.alu == ALU_BFOP) ex_res = bfu_res;
    ex_dst_en = ex_u.dst_en;
    ex_dst = ex_u.dst;

    // SR: a change of S or M puts A7 into the stack pointer of the old mode
    // and takes the one of the new mode. Older uops can only be in WB here
    // (decode waits behind a serialising uop), so A7 is the one in WB or
    // the register file, and the stack pointers are in the register file.
    ex_sr = r[15:0] & SR_MASK & (MC68060 ? 16'hBFFF : 16'hFFFF);   // (no T0 on the 68060)
    a7_now = rf[R_A7];
    if (wb_v && wb_an && wb_u.base == R_A7) a7_now = wb_anv;
    if (wb_v && wb_u.dst_en && wb_u.dst == R_A7) a7_now = wb_res;
    old_sp = sp_of(sr_hi[5], sr_hi[4]);
    new_sp = sp_of(ex_sr[13], ex_sr[12]);
    ex_bk_en = 1'b0;
    ex_bk_idx = old_sp;
    ex_bk_val = a7_now;
    if (ex_u.setsr) begin
      ex_ccr = ex_sr[4:0];
      if (old_sp != new_sp) begin
        ex_bk_en = 1'b1;
        ex_dst_en = 1'b1;
        ex_dst = R_A7;
        ex_res = rf[new_sp];
      end
    end

    // exceptions
    case (ex_u.exc)
      EXC_ALWAYS: ex_exc = 1'b1;
      EXC_COND:   ex_exc = cnd;
      EXC_FMT:    ex_exc = MC68060 ?
                           !(ex_av[15:12] == 4'h0 || ex_av[15:12] == 4'h2 || ex_av[15:12] == 4'h3 ||
                             ex_av[15:12] == 4'h4) :
                           !(ex_av[15:12] == 4'h0 || ex_av[15:12] == 4'h1 || ex_av[15:12] == 4'h7 ||
                             ex_av[15:12] == 4'h2 || ex_av[15:12] == 4'h3);
      EXC_MISAL:  ex_exc = (ex_u.msize == SZ_W && ex_ea[0]) || (ex_u.msize == SZ_L && ex_ea[1:0] != 2'd0);
      EXC_DIVZ:   ex_exc = dz;
      EXC_CHK2:   ex_exc = c2f[0];
      EXC_CHK:    ex_exc = (ex_u.size == SZ_W) ?
                           ($signed(ex_bv[15:0]) < 0 || $signed(ex_bv[15:0]) > $signed(ex_av[15:0])) :
                           ($signed(ex_bv) < 0 || $signed(ex_bv) > $signed(ex_av));
      default:    ex_exc = 1'b0;
    endcase

    // branches
    case (ex_u.br)
      BR_BCC:  ex_npc = cnd ? ex_u.br_target : ex_u.next_pc;
      BR_DBCC: ex_npc = (!cnd && ex_bv[15:0] != 16'd0) ? ex_u.br_target : ex_u.next_pc;
      BR_JMP:  ex_npc = (ex_u.alu == ALU_RTEJ && ex_av[15:12] == 4'h1 && !MC68060) ? ex_u.pc : ex_bv;
      default: ex_npc = (ex_u.fpu && fx_br) ? fx_brt : ex_u.next_pc;   // FDBcc
    endcase
    // the 68040 takes the address error only for an odd instruction fetch
    // (UM 8.2.2): a jump to an odd address
    ex_aerr = ex_u.br != BR_NONE && ex_npc[0];
    if (ex_aerr) ex_exc = 1'b1;
    ex_xvec = ex_aerr ? 8'd3 : ex_u.exc_vec;
    ex_xfmt = (ex_aerr || ex_u.exc_fmt2) ? 4'h2 : 4'h0;
    ex_xpc = (ex_u.exc_post && !ex_aerr) ? ex_u.next_pc : ex_u.pc;
    ex_xaddr = ex_aerr ? {ex_npc[31:1], 1'b0} : ex_u.pc;
    // the FPU's: as TG68K.C stacks them (its kernel's trap0/trap00)
    if (ex_u.fpu && fx_done) begin
      if (fx_unimp) begin                       // unimplemented: vector 11, $2
        ex_exc = 1'b1; ex_xvec = 8'd11; ex_xfmt = 4'h2; ex_xpc = ex_u.next_pc; ex_xaddr = fx_ea;
      end else if (fx_xexc) begin               // arithmetic: 48-54, $0 or $3 (post)
        ex_exc = 1'b1; ex_xvec = 8'd48 + {5'd0, fx_xvec};
        ex_xfmt = fx_xpost ? 4'h3 : 4'h0;
        ex_xpc = (fx_xpost && !fx_xhere) ? ex_u.next_pc : ex_u.pc;
        ex_xaddr = fx_ea;
      end else if (fx_unsupp) begin             // unsupported data type: 55
        ex_exc = 1'b1; ex_xvec = 8'd55; ex_xfmt = fx_upost ? 4'h3 : 4'h0;
        if (MC68060) ex_xfmt = 4'h2;            // (the 68060's: packed decimal, $2)
        ex_xpc = ex_u.next_pc; ex_xaddr = fx_ea;
      end else if (fx_ferr) begin               // FRESTORE (68060): format error
        ex_exc = 1'b1; ex_xvec = 8'd14; ex_xfmt = 4'h0; ex_xpc = ex_u.pc;
      end else if (fx_ftrap) begin              // FTRAPcc: 7, $2
        ex_exc = 1'b1; ex_xvec = 8'd7; ex_xfmt = 4'h2; ex_xpc = ex_u.next_pc; ex_xaddr = ex_u.pc;
      end
    end
    // access errors found before WB: a read's, an FPU access's, a fetch's;
    // the instruction restarts (format $7, vector 2)
    if ((ex_af && !ex_u.noaf) || (ex_u.fpu && fx_done && fx_af) || ex_u.ifault) begin
      ex_exc = 1'b1; ex_xvec = 8'd2; ex_xfmt = MC68060 ? 4'h4 : 4'h7; ex_xpc = ex_u.pc; ex_xaddr = 32'd0;
    end
    // PLPA (68060) whose translation faults: the access error, FA its An
    if (MC68060 && ex_u.mmuop == 2'd1 && tc_e && mmx_why != 6'd0) begin
      ex_exc = 1'b1; ex_xvec = 8'd2; ex_xfmt = 4'h4; ex_xpc = ex_u.pc; ex_xaddr = ex_av;
    end
    // FBcc with an exception pending, or a signaling predicate on a NaN
    // with BSUN enabled: the pre-instruction exception
    if (ex_u.fbcc && (fpu_xpend || (ex_u.opcode[4] && fpu_nan && fpu_bsun_en))) begin
      ex_exc = 1'b1; ex_xvec = 8'd48 + {5'd0, fpu_xpend ? fpu_xpvec : 3'd0};
      ex_xfmt = 4'h0; ex_xpc = ex_u.pc;
    end
    // PCR DFP (68060): the FPU disabled, every floating-point instruction
    // takes vector 11 with format $4 (its operand address, its own PC in the
    // frame, the next one stacked), once nothing older is left
    if (MC68060 && pcr[1] && (ex_u.fpu || ex_u.fbcc)) begin
      ex_exc = 1'b1; ex_xvec = 8'd11; ex_xfmt = 4'h4; ex_xpc = ex_u.next_pc; ex_xaddr = dfp_ea;
    end
    pred = ex_u.br_pred ? ex_u.br_target : ex_u.next_pc;
    // (an instruction that ends writing SR fetches again, with the new S;
    // RTE's jump always does)
    ex_mispredict = ex_v && !ex_exc && (ex_npc != pred || ex_u.redir || (ex_u.setsr && ex_u.last) ||
                                        ex_u.alu == ALU_RTEJ);
  end

  // ------------------------------------------------------- pipeline control

  logic retire, wb_ready, ex_fire, ex_ready, of_fire, of_ready, of_done;
  logic ag_fire, ag_ready, dec_fire, flush, take_exc, sys_inflight;
  logic running;

  assign running = rs_state == RS_RUN;
  assign sys_inflight = (ag_v && ag_u.sys) || (of_v && of_u.sys) || (ex_v && ex_u.sys) || (wb_v && wb_u.sys) ||
                        (SKID && sk_v && sk_u.sys);

  // data port arbitration: reset, then the store at WB, then the load at OF
  // The port takes a new access in the cycle the last one answers. A load
  // goes out from AG, as its uop moves to OF, when nothing older could
  // change what it reads (a store to the same bytes, in a stage or in the
  // store buffer) or whether it runs at all (a branch); else from OF.
  // Loads go before the store buffer, which drains when the port is free.
  // (Non-cacheable pages will need the program order, once there is an MMU.)
  function automatic logic [2:0] nbytes(input size_e s);
    return (s == SZ_B) ? 3'd1 : (s == SZ_W) ? 3'd2 : 3'd4;
  endfunction
  // (with the MMU on, two logical addresses may be one physical: only the
  // offset in the page is compared, so any alias waits). By longs, with
  // equalities only: two accesses within a long each overlap when they are
  // in the same long and share a byte; one across a long overlaps another
  // that touches either of its longs (more than needed, never less; across
  // the end of a page the offset wraps to the page's first long)
  function automatic logic [3:0] bmask(input logic [1:0] o, input size_e s);
    return ((s == SZ_B) ? 4'b1000 : (s == SZ_W) ? 4'b1100 : 4'b1111) >> o;
  endfunction
  function automatic logic ovl(input logic [31:0] a1, input size_e s1, input logic [31:0] a2, input size_e s2);
    // (a1 the load's, a2 the store's: the sums are on the store's address
    // only, from registers, and the load's is compared with them: f1 + 1 ==
    // f2 as f1 == f2 - 1)
    logic [29:0] f1, f2, l2, m2;
    logic        x1, x2;
    x1 = {1'b0, a1[1:0]} + nbytes(s1) > 3'd4;
    x2 = {1'b0, a2[1:0]} + nbytes(s2) > 3'd4;
    f1 = tc_e ? {20'd0, a1[11:2]} : a1[31:2];
    f2 = tc_e ? {20'd0, a2[11:2]} : a2[31:2];
    l2 = tc_e ? {20'd0, a2[11:2] + 10'(x2)} : a2[31:2] + 30'(x2);
    m2 = tc_e ? {20'd0, a2[11:2] - 10'd1} : a2[31:2] - 30'd1;
    if (!x1 && !x2) return f1 == f2 && (bmask(a1[1:0], s1) & bmask(a2[1:0], s2)) != 4'd0;
    // f1 == f2 || f1 == l2 || l1 == f2 || l1 == l2, with l1 = f1 + x1
    return f1 == f2 || f1 == l2 || (x1 && f1 == m2);
  endfunction
  // A load of s bytes at a and the older stores to the same bytes: the
  // youngest of them in WB or the store buffer, at the same address and of
  // the same size, gives its data (fwd); any other has to land first (wait).
  // {wait, fwd, data}
  function automatic logic [33:0] st_check(input logic [31:0] a, input size_e s, input logic from_ag);
    logic        w, f, found;
    logic [31:0] d;
    w = 1'b0; f = 1'b0; found = 1'b0; d = 32'd0;
    if (ex_v && ex_u.store && ovl(a, s, ex_ea, ex_u.msize)) w = 1'b1;
    if (from_ag && of_v && of_u.store && (of_need_ind || ovl(a, s, of_ea, of_u.msize))) w = 1'b1;
    if (wb_v && wb_u.store && !wb_exc && ovl(a, s, wb_ea, wb_u.msize)) begin
      found = 1'b1;
      if (wb_ea == a && wb_u.msize == s) begin f = 1'b1; d = wb_res; end else w = 1'b1;
    end
    for (int i = SBN - 1; i >= 0; i--)
      if (!found && sb_v[i] && ovl(a, s, sb_a[i], sb_sz[i])) begin
        found = 1'b1;
        if (sb_a[i] == a && sb_sz[i] == s) begin f = 1'b1; d = sb_d[i]; end else w = 1'b1;
      end
    if (w) f = 1'b0;
    d = d & ((s == SZ_B) ? 32'hFF : (s == SZ_W) ? 32'hFFFF : 32'hFFFFFFFF);
    return {w, f, d};
  endfunction

  function automatic logic is_io(input logic [31:0] a);
    return a >= IO_LO && a < IO_HI;
  endfunction

  logic ld_req, ag_ld_req, sb_req, of_need_ind, d_free;
  logic of_fwd, ag_fwd;                 // the load takes a store's data instead
  logic [33:0] of_sc, ag_sc, of_sc_now, of_sc_r;
  logic        of_sc_ok;                // OF_SCREG: of_sc_r is of the address in of_ea
  logic        of_spec, of_ld_pend, of_ld_bad, ld_bad;  // LD_SPEC: not tried yet; its check comes; bad
  logic [1:0] sb_count;
  size_e of_ld_size;
  logic of_want, ag_want;
  // the responses as the core sees them: the port's, or one the MMU gives a
  // translation that faults (no access is made)
  logic fk_d, fk_i;                      // a faulting translation answers now
  logic fx_flt;                          // FXL_REG: the fetch's translation faulted: it answers
  logic c_rvalid, c_err, c_atc;
  assign c_rvalid = d_rvalid || fk_d;
  assign c_err = (d_rvalid && d_err) || fk_d;
  assign c_atc = fk_d;
  assign d_free = !d_busy || (!DP_REG && c_rvalid);
  assign of_need_ind = of_u.ind && !of_ind_done;
  assign of_ld_size = of_need_ind ? SZ_L : of_u.msize;
  assign of_sc_now = st_check(of_ea, of_ld_size, 1'b0);
  // (a memory indirect uop's first access is its pointer, a long)
  assign ag_sc = st_check(ag_ea, ag_u.ind ? SZ_L : ag_u.msize, 1'b1);
  // (OF_SCREG: no new older store comes while a uop waits in OF, and the
  // ones there move on with their data, so last cycle's check holds, a
  // store left behind waited for a clock more; not once the pointer of a
  // memory indirect uop changed its address)
  assign of_sc = OF_SCREG ? of_sc_r : of_sc_now;
  // (LD_SPEC: the check of the cycle a load went is of_sc_r the next; a
  // store only moves on towards the cache, so it is kept)
  assign ld_bad = LD_SPEC && (of_ld_pend ? (of_sc_r[33] || of_sc_r[32]) : of_ld_bad);
  assign of_want = of_v && (of_need_ind ? !of_ind_issued : (of_u.load && !of_ld_issued && !of_ld_have)) &&
                   ((LD_SPEC && of_spec && !of_need_ind) ||
                    (!of_sc[33] && !(of_need_ind && of_sc[32]) &&     // (a pointer is not forwarded: it waits)
                     (!OF_SCREG || of_sc_ok))) &&
                   !(is_io(of_ea) && (ex_v || wb_v || sb_v[0]));
  assign of_fwd = of_want && of_sc[32] && !of_need_ind && !(LD_SPEC && of_spec);
  assign ld_req = of_want && !of_fwd && d_free && !ws_req && !sb_first;
  // (AG_LOAD 0: a load goes from OF only, which looks at the stores then:
  // nothing is forwarded at AG, so AG's address stays off these paths)
  assign ag_want = AG_LOAD && ag_fire && ag_u.load && !ag_u.ind && !ag_sc[33] &&
                   !is_io(ag_ea);
  assign ag_fwd = ag_want && ag_sc[32];
  assign ag_ld_req = AG_LOAD && ag_want && !ag_fwd && d_free && !ld_req && !ws_req && !sb_first;
  // a store from SYNC_LO up: made from WB once the store buffer is empty
  // a store to the code just after its instruction (fetched already,
  // maybe decoded) is made from WB too, and the instruction ends with a
  // fresh fetch of the next one (take_smc)
  // (wb_smc: found as the uop enters WB, off the store's paths)
  assign wb_sync = (dxl ? wb_pa : wb_ea) >= SYNC_LO || wb_smc;
  assign ws_req = wb_v && wb_u.store && !wb_exc && (!dxl || wb_xdone) && !wb_sfault && wb_sync &&
                  !ws_iss && !ws_done && !sb_v[0] && d_free;
  // (a table search held for the store buffer: the buffer goes first, the
  // loads wait)
  assign sb_first = walk_blk && sb_v[0] && !sb_issued;
  assign sb_req = sb_v[0] && !sb_issued && d_free &&
                  (sb_first || (!ld_req && !ag_ld_req && !fpu_req && !ws_req));
  assign fpu_req = fpu_bus_act && fpu_running && !fpu_acc_issued && d_free;
  assign sb_count = 2'(sb_v[0]) + 2'(sb_v[1]);

  // The core's data access (logical, or physical from the store buffer and
  // the reset), then the MMU's translation onto the data port
  logic        cd_req, cd_we, cd_gnt, cd_phys;
  logic [31:0] cd_addr, cd_wdata;
  logic [2:0]  cd_fc;
  size_e       cd_size;
  // MOVES: the function code of SFC or DFC, with the program spaces taken
  // as data ones (68060 UM 4.2.5; the other alternate spaces are translated
  // as data too, not used as physical addresses)
  function automatic logic [2:0] moves_fc(input logic [2:0] f);
    return (f[1:0] == 2'b10) ? {f[2], 2'b01} : f;
  endfunction
  always_comb begin
    cd_req = 1'b0; cd_we = 1'b0; cd_addr = 32'd0; cd_size = SZ_L; cd_wdata = 32'd0; cd_phys = 1'b0;
    cd_fc = {sr_hi[5], 2'b01};
    if (!running) begin
      cd_req  = !d_busy;
      cd_addr = (rs_state == RS_SSP) ? 32'd0 : 32'd4;
      cd_phys = 1'b1;
      cd_fc = 3'd5;
    end else if (sb_first && sb_req) begin
      cd_req = 1'b1; cd_we = 1'b1; cd_addr = sb_pa[0]; cd_size = sb_sz[0]; cd_wdata = sb_d[0];
      cd_phys = 1'b1; cd_fc = {sb_s[0], 2'b01};
    end else if (ws_req) begin
      cd_req = 1'b1; cd_we = 1'b1; cd_addr = dxl ? wb_pa : wb_ea; cd_size = wb_u.msize; cd_wdata = wb_res;
      cd_phys = 1'b1;
    end else if (fpu_req) begin
      // a word, or one byte: the high one at the even address, the low at the odd
      cd_req = 1'b1; cd_we = fpu_bus_wr;
      if (fpu_uds_n || fpu_lds_n) begin
        cd_size = SZ_B;
        cd_addr = fpu_bus_addr + {31'd0, fpu_uds_n};
        cd_wdata = {24'd0, fpu_uds_n ? fpu_bus_wdata[7:0] : fpu_bus_wdata[15:8]};
      end else begin
        cd_size = SZ_W; cd_addr = fpu_bus_addr; cd_wdata = {16'd0, fpu_bus_wdata};
      end
    end else if (ld_req) begin
      cd_req = 1'b1; cd_addr = of_ea; cd_size = of_need_ind ? SZ_L : of_u.msize;
      if (of_u.moves) cd_fc = moves_fc(sfc);
    end else if (ag_ld_req) begin
      cd_req = 1'b1; cd_addr = ag_ea; cd_size = ag_u.msize;
      if (ag_u.moves) cd_fc = moves_fc(sfc);
    end else if (sb_req) begin
      cd_req = 1'b1; cd_we = 1'b1; cd_addr = sb_pa[0]; cd_size = sb_sz[0]; cd_wdata = sb_d[0];
      cd_phys = 1'b1; cd_fc = {sb_s[0], 2'b01};
    end
  end

  // ------------------------------------------------------------------- MMU

  // One translation a cycle: the store in WB (before it retires, so the
  // store buffer holds physical addresses), then the core's data access,
  // then the fetch. With TC E clear all pass through. The table search
  // uses the data port, the MMU's clock enable held while it waits.
  logic        mmu_act, mmu_wr_i, mmu_stall, mmu_quiet, mmu_fault, mmu_bact, mmu_bwr, mmu_ce, mmu_free;
  logic        mmu_ptest_i, mmu_pflush_i, mmu_ptest_done, mmu_idle, mmu_acc_issued;
  logic [2:0]  mmu_fc_i;
  logic [31:0] mmu_la, mmu_pa, mmu_baddr, mmu_mmusr;
  logic [5:0]  mmu_why, mmu_ptwhy;       // (the 68060's) why a translation, a search faulted
  logic [5:0]  mmx_why, if_why;          // PLPA's search; the last fetch that faulted
  logic [15:0] mmu_bwd;
  logic        sel_wbx, sel_cd, sel_fi, xl_ok, wbx, cd_xl, fetch_s, mmu_walk_req;
  logic        wb_xdone;                // the store in WB has its physical address
  logic        wb_sfault;               // its translation faulted
  logic        wb_sync, ws_req, ws_iss, ws_done, ws_err;   // a store made from WB (from SYNC_LO up)
  logic        wb_smc, smc_pend;                           // a store into the code ahead
  logic        fx_smc, wb_fsmc;                            // the FPU's (it writes from EX)
  logic [31:0] movem_ea;
  logic        walk_fetch;
  logic [31:0] walk_pc;
  // a write that faulted and is held: the access error follows the instruction
  logic        acc_pend, acc_tea;
  logic [31:0] acc_fa, acc_data;
  size_e       acc_sz;
  logic [2:0]  acc_fc;
  // the words of the format $7 frame (68040 UM 8.4.6) of the access error
  // being taken: EA, SSW, WB2S, WB1S, FA, WB2A, WB2D, WB1A, WB1D/PD0, PD1-PD3
  logic [31:0] fr_ea, fr_fa, fr_wb2a, fr_wb2d, fr_wb1a, fr_wb1d, fr_pd1, fr_pd2, fr_pd3;
  logic [15:0] fr_ssw;
  logic [31:0] fr_fslw;                 // the 68060's fault status long word (UM 8.4.4.3)
  logic [7:0]  fr_wb2s, fr_wb1s;
  logic        take_acc;                // a held write's access error, after its instruction
  logic        inj_rec;                 // the injection makes a trace record of its own
  logic [31:0] wb_pa;
  logic        fi_req, fi_gnt;
  logic [31:0] fi_addr;
  logic [1:0]  i_out;                   // fetches in flight on the port
  logic        fi_rvalid;
  logic [1:0]  fi_err;
  assign fi_rvalid = i_rvalid || fk_i;
  assign fi_err = fk_i ? 2'b11 : {i_rvalid && i_err, 1'b0};

  // (a fetch while a uop that writes SR is in EX is on a path its redirect
  // drops: only WB's new S counts, which keeps EX off this path)
  assign fetch_s = (wb_v && wb_u.setsr) ? wb_sr[13] : sr_hi[5];
  assign wbx = dxl && wb_v && wb_u.store && !wb_exc && !wb_xdone && !wb_sfault;
  assign cd_xl = dxl && cd_req && !cd_phys;
  assign walk_hold = MC68060 && tc_e &&
                     (sb_v[0] || (!wbx && ((ex_v && ex_u.store) || (wb_v && wb_u.store && !wb_exc))));
  assign sel_wbx = wbx;
  assign sel_cd = !wbx && cd_xl;
  // (MMU_REG: a fetch whose page is the fetches' registered entry goes to
  // the port by itself, mmu_fhit, off the data side's lookup; the MMU is
  // for the others)
  logic        mmu_fhit;
  logic [31:0] mmu_fpa;
  assign sel_fi = !wbx && !cd_xl && tc_e && fi_req && !mmu_fhit;
  assign mmu_act = sel_wbx || sel_cd || sel_fi;
  assign mmu_la = sel_wbx ? wb_ea : sel_cd ? cd_addr : fi_addr;
  assign mmu_wr_i = sel_wbx || (sel_cd && cd_we);
  assign mmu_fc_i = sel_fi ? {fetch_s, 2'b10} : (sel_wbx && wb_u.moves) ? moves_fc(dfc) :
                    sel_wbx ? {sr_hi[5], 2'b01} : cd_fc;
  assign xl_ok = !mmu_stall && !mmu_quiet;
  assign mmu_walk_req = mmu_bact && !mmu_acc_issued && d_free;
  // (the MMU moves on enabled edges while its table search is not waiting;
  // mmu_free, without ce, for the requests, keeps ce off long paths)
  assign mmu_free = !(mmu_bact && !(d_rvalid && d_owner == DO_MMU));
  assign mmu_ce = ce && mmu_free;

  m68k_mmu #(.REG_XLATE(MMU_REG), .MC68060(MC68060)) mmu (
    .clk, .reset(rst), .clkena(mmu_ce), .tc_e, .tc_p, .urp, .srp, .itt0, .itt1, .dtt0, .dtt1,
    .act(mmu_act), .laddr(mmu_la), .wr(mmu_wr_i), .fc(mmu_fc_i), .paddr(mmu_pa),
    .stall(mmu_stall), .quiet(mmu_quiet), .fault(mmu_fault), .why(mmu_why), .hold_walk(walk_hold), .drop_inv(flush || take_any),
    .bus_act(mmu_bact), .bus_addr(mmu_baddr), .bus_wr(mmu_bwr), .bus_wdata(mmu_bwd),
    .data_in(d_rdata[15:0]),
    .ptest(mmu_ptest_i), .ptest_addr(ex_av), .ptest_fc(dfc),
    .ptest_wr(MC68060 ? !ex_u.opcode[6] : !ex_u.opcode[5]),     // (PLPAW, PTESTW)
    .ptest_done(mmu_ptest_done), .mmusr(mmu_mmusr), .ptest_why(mmu_ptwhy),
    .pflush(mmu_pflush_i), .pflush_all(ex_u.opcode[3]), .pflush_page(!ex_u.opcode[4]),
    .pflush_addr(ex_av), .pflush_s(dfc[2]), .idle_o(mmu_idle),
    .f_laddr(fi_addr), .f_super(fetch_s), .f_hit(mmu_fhit), .f_paddr(mmu_fpa)
  );

  // the data and instruction ports
  always_comb begin
    d_req = cd_req; d_we = cd_we; d_addr = cd_addr; d_size = cd_size; d_wdata = cd_wdata; d_fc = cd_fc;
    cd_gnt = d_gnt;
    if (mmu_bact) begin                 // the table search (supervisor data)
      d_req = mmu_walk_req; d_we = mmu_bwr; d_addr = mmu_baddr; d_size = SZ_W; d_wdata = {16'd0, mmu_bwd};
      d_fc = 3'd5;
      cd_gnt = 1'b0;
    end else if (cd_xl) begin
      d_req = cd_req && sel_cd && xl_ok;
      d_addr = mmu_pa;
      cd_gnt = (d_gnt && sel_cd && xl_ok) || (sel_cd && !mmu_stall && mmu_quiet);
    end
    i_req = fi_req; i_addr = fi_addr; fi_gnt = i_gnt; i_fc = {fetch_s, 2'b10};
    if (tc_e && mmu_fhit) begin
      i_addr = {mmu_fpa[31:2], 2'b00};
    end else if (tc_e && FXL_REG) begin
      i_req = 1'b0;
      fi_gnt = fx_flt && fi_req;
    end else if (tc_e) begin
      i_req = fi_req && sel_fi && xl_ok;
      i_addr = {mmu_pa[31:2], 2'b00};
      // a faulting one answers after the fetches in flight
      fi_gnt = (i_gnt && sel_fi && xl_ok) || (sel_fi && !mmu_stall && mmu_quiet && i_out == 2'd0 && !fk_i);
    end
  end

  logic d_done_of, d_done_sb, d_done_fpu;
  assign d_done_of = c_rvalid && d_owner == DO_OF;
  assign d_done_sb = c_rvalid && d_owner == DO_SB;
  assign d_done_fpu = c_rvalid && d_owner == DO_FPU;

  // the FPU: started with nothing older left; its clock waits for its bus cycle
  assign fpu_start = ex_v && ex_u.fpu && !fpu_running && !fx_done && !wb_v && !sb_v[0] && !fpu_busy &&
                     !(MC68060 && pcr[1]);
  assign fpu_ce = ce && !(fpu_bus_act && fpu_running && !d_done_fpu);
  assign fpu_abort = fpu_running && d_done_fpu && c_err;
  assign fpu_data_in = (d_size_last == SZ_B) ? {d_rdata[7:0], d_rdata[7:0]} : d_rdata[15:0];
  assign fpu_pred_bsun = retire && wb_u.fbcc && !wb_exc;    // FBcc: BSUN on a NaN
  assign fpu_set_bsun = take_exc && wb_u.fbcc && !fpu_xpend;

  // a store retires into the store buffer (a free entry, or one leaving now)
  // (with the MMU on, a store retires the cycle after its translation:
  // from the same cycle, the MMU's lookup would be on the path of retire)
  logic st_fault, st_hold;              // the store faulted; and is held (else restart)
  assign st_fault = wb_u.store && (wb_sfault || (ws_done && ws_err));
  // (the 68060 holds none: a write's access error restarts the instruction)
  assign st_hold = st_fault && ((wb_u.wdefer && !MC68060) || wb_u.noaf);
  assign retire   = wb_v && !wb_u.unimpl &&
                    (!wb_u.store || wb_exc || st_fault || (wb_sync ? ws_done : (sb_count < 2'd2 || (!SB_REG && d_done_sb)))) &&
                    (!(dxl && wb_u.store && !wb_exc) || wb_xdone || wb_sfault);
  logic wb_exc_now;                      // the uop's exception, found at WB too
  assign wb_exc_now = wb_exc || (st_fault && !st_hold);
  // an access error: the instruction restarts, nothing of it is kept
  logic wb_restart;
  assign wb_restart = wb_exc_now && (wb_xfmt == 4'h7 || (MC68060 && wb_xfmt == 4'h4) || st_fault);
  assign take_exc = retire && wb_exc_now;  // everything younger goes

  // An interrupt is taken at the end of an instruction (its last uop
  // retiring, with the mask it leaves) or while stopped; level 7 on its
  // rising edge. The instruction's record ends with the entry sequence.
  logic [2:0] mask_now;
  logic       int_req, take_int, take_int_stop, stop_now, take_any, take_smc;
  // Trace (T1; T0 is not done): an instruction that began with T1 and
  // completes with no exception of its own is followed by vector 9,
  // format $2 with its address, before an interrupt (UM 8.2.6); a traced
  // STOP does not stop
  logic       t_cur, take_trc;          // T1 when the instruction in WB began
  assign take_trc = retire && !wb_exc_now && wb_u.last && !inj_active && !wb_cont && !wb_u.noaf &&
                    (wb_u.first ? sr_hi[7] : t_cur) && !take_acc;
  assign mask_now = (wb_v && wb_u.setsr) ? wb_sr[10:8] : sr_hi[2:0];
  assign int_req = ipl != 3'd0 && (ipl > mask_now || (ipl == 3'd7 && !lvl7_taken));
  assign take_acc = retire && !wb_exc_now && wb_u.last && !inj_active && !wb_cont &&
                    (acc_pend || (st_hold && !wb_u.noaf));
  // (the 68060 runs the first instruction of a handler before it takes an
  // interrupt: not at the end of an exception entry)
  assign take_int = retire && !wb_exc_now && wb_u.last && !inj_active && !wb_cont && int_req && !take_acc &&
                    !(MC68060 && wb_u.noaf) && !take_trc;
  assign take_smc = retire && !wb_exc_now && wb_u.last && !inj_active && !wb_cont && !take_acc && !take_int &&
                    !take_trc && (smc_pend || wb_fsmc || (wb_u.store && wb_smc));
  assign take_int_stop = stopped && !wb_v && int_req;
  assign stop_now = retire && !wb_exc && wb_u.stop && !take_int && !take_trc;
  assign take_any = take_exc || take_int || take_int_stop || take_acc || take_smc || take_trc;
  assign wb_ready = !wb_v || retire;
  logic        flush_now, fl_q;          // FLUSH_REG: the mispredict found now; the one to make
  logic [31:0] fl_pc;
  assign ex_fire  = ex_v && wb_ready && !take_any && !ex_wait && !(FLUSH_REG && fl_q);
  assign ex_ready = !ex_v || ex_fire;
  assign of_done  = (!of_need_ind || of_af) && (!of_u.load || of_ld_have || (of_ld_issued && d_done_of && !ld_bad));
  assign flush_now = ex_fire && ex_mispredict;
  assign flush    = FLUSH_REG ? fl_q : flush_now;
  assign of_fire  = of_v && of_done && ex_ready && !flush && !take_any;
  assign of_ready = !of_v || of_fire;
  assign ag_fire  = ag_v && !ag_stall && of_ready && !flush && !take_any;
  assign ag_ready = !ag_v || ag_fire;
  logic dec_go, dec_cross, dec_at_mark, dec_take;
  logic dr_v, dr_set;                   // DREDIR_REG: decode's redirect, to make now; to make next
  logic [31:0] dr_pc, dr_set_pc;
  // (SKID: a flush or an exception drops what decode gives in that cycle,
  // dec_take, and redirects the fetch, which then takes no words; STOP
  // serialises, so stop_now needs no look)
  assign dec_go = running && src_valid && !sys_inflight && !stopped && !(DREDIR_REG && dr_v) &&
                  (SKID ? !sk_v : (ag_ready && !flush && !take_any && !stop_now));
  // the fetch's mark within the instruction: its words after it are the
  // target's, not its own (refetched); at its end: checked below
  assign dec_cross = !inj_active && dec_valid && mk_v && mk_pos < {1'b0, dec_len};
  assign dec_at_mark = mk_v && mk_pos == {1'b0, dec_len};
  assign dec_fire = dec_go && !dec_cross;
  assign dec_take = dec_fire && (!SKID || !(flush || take_any));

  always_comb begin
    logic [31:0] lw;                    // the instruction's last word
    f_redirect = 1'b0;
    f_redirect_pc = 32'd0;
    dr_set = 1'b0;
    dr_set_pc = 32'd0;
    f_consume = 4'd0;
    lw = q_pc + {27'd0, dec_len, 1'b0} - 32'd2;
    bt_wr = 1'b0;
    bt_kill = 1'b0;
    bt_key = lw[31:2];
    bt_hi = !lw[1];
    bt_target = dec_up.br_target;
    if (rs_state == RS_PC && d_rvalid) begin
      f_redirect = 1'b1;
      f_redirect_pc = d_rdata;
    end else if (take_any) begin
      // the handler's address comes with the vector; until then the
      // fetch goes on at the stacked PC
      f_redirect = 1'b1;
      f_redirect_pc = take_int_stop ? stop_npc : (take_int || take_smc || take_trc) ? wb_npc : wb_xpc;
    end else if (flush) begin
      f_redirect = 1'b1;
      f_redirect_pc = FLUSH_REG ? fl_pc : ex_npc;
    end else if (DREDIR_REG && dr_v) begin
      f_redirect = 1'b1;
      f_redirect_pc = dr_pc;
    end else if (dec_go && dec_cross) begin
      // the fetch followed a jump that is not there: from the instruction on
      dr_set = 1'b1;
      dr_set_pc = q_pc;
      bt_kill = 1'b1;
      lw = q_pc + {26'd0, mk_pos, 1'b0} - 32'd2;
      bt_key = lw[31:2];
    end else if (dec_fire && !inj_active && dec_up.last) begin
      if (!SKID) f_consume = dec_len;
      if (dec_up.br_pred) begin
        // a jump the fetch already followed goes on; else it learns it
        if (!(dec_at_mark && mk_pc == dec_up.br_target)) begin
          dr_set = 1'b1;
          dr_set_pc = dec_up.br_target;
          bt_wr = 1'b1;
        end
      end else if (dec_at_mark) begin
        dr_set = 1'b1;
        dr_set_pc = q_pc + {27'd0, dec_len, 1'b0};
        bt_kill = 1'b1;
      end
    end
    if (!DREDIR_REG && dr_set) begin
      f_redirect = 1'b1;
      f_redirect_pc = dr_set_pc;
    end
    // (the fetch takes no words as it is redirected)
    if (SKID && dec_fire && !inj_active && dec_up.last) f_consume = dec_len;
  end

  // ------------------------------------------------------------- registers

  always_ff @(posedge clk) begin
    if (rst) begin
      rs_state <= RS_SSP;
      ccr_arch <= 5'd0;
      ccr_spec <= 5'd0;
      sr_hi    <= 8'h27;
      ag_v <= 1'b0; of_v <= 1'b0; ex_v <= 1'b0; wb_v <= 1'b0; sk_v <= 1'b0; dr_v <= 1'b0; pl_v <= 1'b0; fl_q <= 1'b0;
      d_busy <= 1'b0;
      d_owner <= DO_RST;
      dec_step <= 5'd0;
      tag_ctr <= 3'd0;
      of_ld_issued <= 1'b0;
      of_ld_have <= 1'b0;
      of_ptr_v <= 1'b0;
      of_spec <= 1'b0;
      of_ld_pend <= 1'b0;
      of_ld_bad <= 1'b0;
      of_ind_issued <= 1'b0;
      of_ind_done <= 1'b0;
      inj_active <= 1'b0;
      inj_step <= 5'd0;
      stopped <= 1'b0;
      t_cur <= 1'b0;
      lvl7_taken <= 1'b0;
      rte_cont <= 1'b0;
      wb_cont <= 1'b0;
      smc_pend <= 1'b0;
      fx_smc <= 1'b0;
      wb_fsmc <= 1'b0;
      wb_aerr <= 1'b0;
      wb_af <= 1'b0; ex_af <= 1'b0; of_af <= 1'b0;
      wb_sfault <= 1'b0; ws_iss <= 1'b0; ws_done <= 1'b0; ws_err <= 1'b0;
      acc_pend <= 1'b0; inj_rec <= 1'b0;
      fk_d <= 1'b0; fk_i <= 1'b0; i_out <= 2'd0; fx_flt <= 1'b0;
      fx_af <= 1'b0;
      ul_v[0] <= 1'b0; ul_v[1] <= 1'b0;
      walk_blk <= 1'b0;
      fpu_running <= 1'b0;
      fpu_acc_issued <= 1'b0;
      mmu_acc_issued <= 1'b0;
      wb_xdone <= 1'b0;
      mmx_go <= 1'b0;
      mmx_done <= 1'b0;
      fx_done <= 1'b0;
      fpw_v[0] <= 1'b0; fpw_v[1] <= 1'b0;
      for (int i = 0; i < SBN; i++) sb_v[i] <= 1'b0;
      for (int i = 0; i < BTBN; i++) btb_v[i] <= 1'b0;
      ras_top <= 3'd0;
      ras_n <= 4'd0;
      sb_issued <= 1'b0;
      dv_busy <= 1'b0;
      dv_done <= 1'b0;
      mdhi <= '0;
      md_ovf <= 1'b0;
      for (int i = 0; i < NREGS; i++) rf[i] <= 32'd0;
      // reset clears VBR, the CACR and the E bits of TC and the TTRs
      // (68040 UM 3.1.2, 8.2.10); the rest are zero here as well
      sfc <= 3'd0; dfc <= 3'd0; cacr <= 2'd0; tc_e <= 1'b0; tc_p <= 1'b0;
      cacr_x <= '0; tc_x <= '0; pcr <= '0; buscr <= '0;
      itt0 <= '0; itt1 <= '0; dtt0 <= '0; dtt1 <= '0;
      mmusr <= '0; urp <= '0; srp <= '0; vbr <= '0;
    end else if (ce) begin
      // data port
      if ((mmu_walk_req && d_gnt) || (cd_req && cd_gnt)) begin
        d_busy  <= 1'b1;
        d_size_last <= mmu_bact ? SZ_W : cd_size;
        d_owner <= mmu_bact ? DO_MMU : !running ? DO_RST : (sb_first && sb_req) ? DO_SB : ws_req ? DO_WB : fpu_req ? DO_FPU :
                   sb_req ? DO_SB : DO_OF;
      end else if (c_rvalid)
        d_busy <= 1'b0;
      // a faulting translation: granted, answered with an error next cycle
      // (a fetch through the MMU only: one on the fetches' own entry is not
      // what mmu_quiet is about)
      fk_d <= cd_req && cd_gnt && cd_xl && mmu_quiet;
      fk_i <= fi_req && fi_gnt && (FXL_REG ? fx_flt : (sel_fi && mmu_quiet));
      // (FXL_REG: the fault of the fetch's own lookup, once the fetches in
      // flight are in; dropped with its fetch)
      fx_flt <= FXL_REG && tc_e && !f_redirect && !(fi_gnt && fx_flt) &&
                (fx_flt || (sel_fi && !mmu_stall && mmu_quiet && i_out == 2'd0 && !fk_i));
      if (i_req && i_gnt) i_out <= i_out + 2'd1 - 2'(i_rvalid);
      else if (i_rvalid)  i_out <= i_out - 2'd1;

      // reset: SSP and PC from vectors 0 and 1
      if (rs_state == RS_SSP && d_rvalid) begin
        rf[R_A7] <= d_rdata;
        rs_state <= RS_PC;
      end else if (rs_state == RS_PC && d_rvalid)
        rs_state <= RS_RUN;

      // store buffer: the head leaves when written, a retiring store enters
      begin
        logic        nv [SBN], nsu [SBN];
        logic [31:0] na [SBN], nd [SBN], np [SBN], pa;
        size_e       ns [SBN];
        for (int i = 0; i < SBN; i++) begin
          nv[i] = sb_v[i]; na[i] = sb_a[i]; nd[i] = sb_d[i]; ns[i] = sb_sz[i]; np[i] = sb_pa[i]; nsu[i] = sb_s[i];
        end
        pa = dxl ? wb_pa : wb_ea;
        if (sb_req && cd_gnt) sb_issued <= 1'b1;
        if (d_done_sb) begin
          nv[0] = nv[1]; na[0] = na[1]; nd[0] = nd[1]; ns[0] = ns[1]; np[0] = np[1]; nsu[0] = nsu[1];
          nv[1] = 1'b0;
          sb_issued <= 1'b0;
        end
        if (retire && !wb_exc_now && wb_u.store && !st_fault && !wb_sync && !(acc_pend && !wb_u.noaf)) begin
          if (!nv[0])      begin nv[0] = 1'b1; na[0] = wb_ea; nd[0] = wb_res; ns[0] = wb_u.msize; np[0] = pa; nsu[0] = wb_s; end
          else             begin nv[1] = 1'b1; na[1] = wb_ea; nd[1] = wb_res; ns[1] = wb_u.msize; np[1] = pa; nsu[1] = wb_s; end
        end
        for (int i = 0; i < SBN; i++) begin
          sb_v[i] <= nv[i]; sb_a[i] <= na[i]; sb_d[i] <= nd[i]; sb_sz[i] <= ns[i]; sb_pa[i] <= np[i];
          sb_s[i] <= nsu[i];
        end
      end

      // WB: an exception after the instruction (CHK, a division by zero)
      // keeps its (An)+ or -(An); an access error restarts it
      if (retire && wb_an && !wb_restart) rf[wb_u.base] <= wb_anv;
      if (MC68060) begin
        if (take_exc && wb_restart) begin
          if (ul_v[1]) rf[ul_r[1]] <= ul_d[1];
          if (ul_v[0]) rf[ul_r[0]] <= ul_d[0];
        end
        if (take_any || (retire && wb_u.last)) begin
          ul_v[0] <= 1'b0; ul_v[1] <= 1'b0;
        end else if (retire && wb_an && !wb_exc_now && !(ul_v[0] && ul_r[0] == wb_u.base)) begin
          if (!ul_v[0]) begin ul_v[0] <= 1'b1; ul_r[0] <= wb_u.base; ul_d[0] <= rf[wb_u.base]; end
          else          begin ul_v[1] <= 1'b1; ul_r[1] <= wb_u.base; ul_d[1] <= rf[wb_u.base]; end
        end
      end
      if (take_any || (retire && wb_u.last)) smc_pend <= 1'b0;
      else if (retire && ((wb_u.store && wb_smc) || wb_fsmc)) smc_pend <= 1'b1;
      if (retire && !wb_exc_now) begin
        if (wb_bk_en) rf[wb_bk_idx] <= wb_bk_val;
        if (wb_u.dst_en) rf[wb_u.dst] <= wb_res;
        if (wb_u.cc != CC_NONE || wb_u.setsr) ccr_arch <= wb_ccr;
        if (wb_u.setsr) sr_hi <= wb_sr[15:8];
        if (wb_u.ctrl_wr)
          case (wb_u.imm[11:0])
            12'h000: sfc <= wb_res[2:0];
            12'h001: dfc <= wb_res[2:0];
            12'h002: begin
                       cacr <= {wb_res[31], wb_res[15]};
                       if (MC68060) cacr_x <= wb_res & 32'h7880_6000;   // (CABC, CUBC read 0)
                     end
            12'h003: begin
                       tc_e <= wb_res[15]; tc_p <= wb_res[14];
                       if (MC68060) tc_x <= {wb_res[13:1], 1'b0};
                     end
            12'h008: if (MC68060) buscr <= {wb_res[31], buscr[2], wb_res[29], buscr[0]};
            12'h808: if (MC68060) pcr <= wb_res[7:0] & 8'h83;
            12'h004: itt0 <= wb_res & 32'hFFFFE364;
            12'h005: itt1 <= wb_res & 32'hFFFFE364;
            12'h006: dtt0 <= wb_res & 32'hFFFFE364;
            12'h007: dtt1 <= wb_res & 32'hFFFFE364;
            12'h801: vbr <= wb_res;
            12'h805: mmusr <= wb_res;
            12'h806: urp <= wb_res & 32'hFFFFFE00;
            12'h807: srp <= wb_res & 32'hFFFFFE00;
            default: ;
          endcase
      end
      // the format $7 frame of an access error being taken
      if (take_acc || take_exc) begin
        logic        rw, tea, held;
        logic [1:0]  sz2, tt2;
        logic [2:0]  fc;
        logic [31:0] fa, v;
        held = take_acc;
        tea = held ? (acc_pend ? acc_tea : !wb_sfault) :
              wb_af ? !wb_afatc : (wb_u.fpu && fx_af) ? !fx_afatc : wb_u.ifault ? !wb_u.cond[0] : !wb_sfault;
        rw = held ? 1'b0 : (wb_af || wb_u.ifault) ? 1'b1 : (wb_u.fpu && fx_af) ? !fx_afwr : 1'b0;
        fc = wb_u.ifault ? {sr_hi[5], 2'b10} : wb_u.moves ? moves_fc(wb_u.store ? dfc : sfc) : {sr_hi[5], 2'b01};
        fa = held ? (acc_pend ? acc_fa : wb_ea) : wb_af ? wb_affa : (wb_u.fpu && fx_af) ? fx_affa :
             wb_u.ifault ? wb_u.imm : wb_ea;
        sz2 = 2'b10;
        if (!wb_u.ifault && !(wb_u.fpu && fx_af)) begin
          size_e s;
          s = held ? (acc_pend ? acc_sz : wb_u.msize) : wb_af ? wb_afsz : wb_u.msize;
          sz2 = (s == SZ_B) ? 2'b01 : (s == SZ_W) ? 2'b10 : 2'b00;
        end
        tt2 = 2'b00;
        if (wb_u.m16) begin                 // MOVE16: the line, FA the register's address
          sz2 = 2'b11; tt2 = 2'b01;
          fa = wb_af ? rf[R_T2] : rf[R_T1];
        end
        fr_ssw <= {3'b000, wb_u.movem && !held, 1'b0, !tea, 1'b0, rw, 1'b0, sz2, tt2, fc};
        // the 68060's format $4: the FSLW (UM 8.4.4.3) and the fault address
        // (of a fetch: the instruction's; of PLPA: its An)
        if (MC68060) begin
          logic       plp, io, ma, lk, re, we, mmuf, ttr;
          logic [1:0] rw6, sz6;
          logic [2:0] tm;
          logic [5:0] wy;
          plp = wb_u.mmuop == 2'd1;
          io = wb_u.ifault;
          ma = io && wb_u.imm != wb_u.pc;               // an extension word
          lk = wb_u.opcode[15:6] == 10'b0100101011 ||    // TAS, CAS
               (wb_u.opcode[15:11] == 5'b00001 && wb_u.opcode[10:9] != 2'b00 && wb_u.opcode[8:6] == 3'b011);
          mmuf = plp || !tea;
          rw6 = plp ? (wb_u.opcode[6] ? 2'b10 : 2'b01) :
                (wb_u.load && wb_u.store) ? 2'b11 : rw ? 2'b10 : 2'b01;
          // SIZE as the 68040's SSW has it, 00 long, 01 byte, 10 word, 11
          // line (as MMULib and WinUAE read it: the UM's table is wrong)
          sz6 = io ? 2'b00 : wb_u.m16 ? 2'b11 : (wb_u.fpu && fx_af) ? 2'b10 : sz2;
          if (plp) sz6 = 2'b00;
          tm = plp ? dfc : fc;
          wy = plp ? mmx_why : io ? if_why : wb_af ? wb_afwhy : (wb_u.fpu && fx_af) ? fx_afwhy : mmu_why;
          re = !mmuf && rw;
          we = !mmuf && !rw;
          // an access a TTR maps: a bus error, or a write-protected TTR's
          // fault (the only MMU fault such an access takes)
          ttr = !plp && (io ? (tt_hit_of(itt0, wb_u.pc, sr_hi[5]) || tt_hit_of(itt1, wb_u.pc, sr_hi[5]))
                             : (tt_hit_of(dtt0, fa, fc[2]) || tt_hit_of(dtt1, fa, fc[2])));
          fr_fslw <= {4'd0, ma, 1'b0, lk, rw6, sz6, wb_u.m16 ? 2'b01 : 2'b00, tm,
                      io, 2'b00, mmuf ? wy : 6'd0, 1'b0, re, we, ttr, 3'd0};
        end
        fr_ea <= (wb_u.movem && !held) ? movem_ea : 32'd0;
        fr_fa <= (MC68060 && wb_u.mmuop == 2'd1) ? wb_xaddr : (MC68060 && wb_u.ifault) ? wb_u.pc : fa;
        fr_wb2s <= 8'd0; fr_wb1s <= 8'd0;
        fr_wb2a <= 32'd0; fr_wb2d <= 32'd0; fr_wb1a <= 32'd0; fr_wb1d <= 32'd0;
        fr_pd1 <= 32'd0; fr_pd2 <= 32'd0; fr_pd3 <= 32'd0;
        if (held) begin
          logic [31:0] d;
          size_e s;
          d = acc_pend ? acc_data : wb_res;
          s = acc_pend ? acc_sz : wb_u.msize;
          if (!tea) begin                   // WB2: the write, register aligned
            fr_wb2s <= {1'b1, sz2, 2'b00, fc};
            fr_wb2a <= fa;
            fr_wb2d <= d & szmask(s);
          end else begin                    // WB1: memory aligned (UM table 8-5)
            v = (s == SZ_B) ? {d[7:0], 24'd0} : (s == SZ_W) ? {d[15:0], 16'd0} : d;
            case (fa[1:0])
              2'd1:    v = {v[7:0], v[31:8]};
              2'd2:    v = {v[15:0], v[31:16]};
              2'd3:    v = {v[23:0], v[31:24]};
              default: ;
            endcase
            fr_wb1s <= {1'b1, sz2, 2'b00, fc};
            fr_wb1a <= fa;
            fr_wb1d <= v;
          end
        end else if (wb_u.m16 && !wb_af && !tea) begin
          // a MOVE16 write fault: the line in WB2 (not written back) and PD0-PD3
          fr_wb2s <= {1'b1, 2'b11, 2'b01, fc};
          fr_wb2a <= fa;
          fr_wb2d <= rf[R_T3];
          fr_wb1d <= rf[R_T3]; fr_pd1 <= rf[R_T3 + 5'd1]; fr_pd2 <= rf[R_T3 + 5'd2]; fr_pd3 <= rf[R_T3 + 5'd3];
        end else if (wb_u.m16 && !wb_af && tea) begin
          fr_wb1s <= {1'b1, 2'b11, 2'b01, fc};
          fr_wb1a <= fa;
        end
      end

      // PCR DFP (68060): its format $4 has the operand address and the PC of
      // the instruction in place of the fault address and the FSLW
      if (MC68060 && take_exc && wb_xvec == 8'd11 && wb_xfmt == 4'h4) begin
        fr_fslw <= wb_u.pc;
        fr_fa <= wb_xaddr;
      end
      if (take_acc) begin
        // a held write: after its instruction, a record of its own (the PC of
        // the next instruction, which has not run)
        inj_active <= 1'b1;
        inj_step <= 5'd0;
        inj_vec <= 8'd2;
        inj_fmt <= 4'h7;
        inj_int <= 1'b0;
        inj_throw <= 1'b0;
        inj_pc <= wb_npc;
        inj_addr <= wb_npc;
        inj_rec <= 1'b1;
        ccr_spec <= (wb_u.cc != CC_NONE || wb_u.setsr) ? wb_ccr : ccr_arch;
        wb_v <= 1'b0;
      end else if (take_trc) begin
        // the instruction is done (written above); the trace follows
        inj_active <= 1'b1;
        inj_step <= 5'd0;
        inj_vec <= 8'd9;
        inj_fmt <= 4'h2;
        inj_int <= 1'b0;
        inj_throw <= 1'b0;
        inj_pc <= wb_npc;
        inj_addr <= wb_u.pc; inj_op <= wb_u.opcode;
        inj_faddr <= wb_u.pc;
        inj_rec <= 1'b0;
        ccr_spec <= (wb_u.cc != CC_NONE || wb_u.setsr) ? wb_ccr : ccr_arch;
        wb_v <= 1'b0;
      end else if (take_smc) begin
        // the instruction is done; what follows is fetched again
        ccr_spec <= (wb_u.cc != CC_NONE || wb_u.setsr) ? wb_ccr : ccr_arch;
        wb_v <= 1'b0;
      end else if (take_int || take_int_stop) begin
        // the instruction is done (written above); the interrupt follows
        inj_active <= 1'b1;
        inj_step <= 5'd0;
        inj_vec <= 8'd24 + {5'd0, ipl};
        inj_fmt <= 4'h0;
        inj_int <= 1'b1;
        inj_lvl <= ipl;
        inj_throw <= !MC68060 && (take_int_stop ? sr_hi[4] : (wb_u.setsr ? wb_sr[12] : sr_hi[4]));
        inj_pc <= take_int_stop ? stop_npc : wb_npc;
        if (take_int) begin inj_addr <= wb_u.pc; inj_op <= wb_u.opcode; end
        inj_rec <= 1'b0;
        if (ipl == 3'd7) lvl7_taken <= 1'b1;
        stopped <= 1'b0;
        ccr_spec <= (take_int && (wb_u.cc != CC_NONE || wb_u.setsr)) ? wb_ccr : ccr_arch;
        wb_v <= 1'b0;
      end else if (take_exc) begin
        // nothing of the instruction is kept; the injector takes over
        inj_active <= 1'b1;
        inj_step <= 5'd0;
        inj_vec <= wb_xvec;
        inj_fmt <= wb_xfmt;
        inj_int <= 1'b0;
        inj_throw <= 1'b0;
        inj_pc <= wb_xpc;
        inj_addr <= wb_u.pc;
        inj_faddr <= wb_xaddr;
        inj_op <= wb_u.opcode;
        inj_rec <= 1'b0;
        if (st_fault && !st_hold) begin inj_vec <= 8'd2; inj_fmt <= MC68060 ? 4'h4 : 4'h7; inj_pc <= wb_u.pc; end
        // CHK and DIVx set their flags before they trap; the others keep the CCR
        if (!wb_aerr && (wb_u.exc == EXC_CHK || wb_u.exc == EXC_DIVZ || wb_u.exc == EXC_CHK2)) begin
          ccr_arch <= wb_ccr;
          ccr_spec <= wb_ccr;
        end else
          ccr_spec <= ccr_arch;
        wb_v <= 1'b0;
      end else if (ex_fire) begin
        wb_v <= 1'b1;
        wb_u <= ex_u; wb_tag <= ex_tag;
        wb_u.dst_en <= ex_dst_en; wb_u.dst <= ex_dst;
        wb_u.store <= ex_u.store && ex_st_en;
        wb_ea <= ex_ea; wb_anv <= ex_anv; wb_an <= ex_an;
        wb_smc <= ex_ea - ex_u.pc < 32'd128;
        wb_res <= ex_res; wb_ccr <= ex_ccr; wb_npc <= ex_npc;
        wb_exc <= ex_exc;
        wb_cont <= ex_u.alu == ALU_RTEJ && ex_av[15:12] == 4'h1 && !MC68060;
        wb_aerr <= ex_aerr;
        wb_fsmc <= ex_u.fpu && fx_smc;
        wb_af <= ex_af && !ex_u.noaf; wb_afatc <= ex_afatc; wb_affa <= ex_affa; wb_afsz <= ex_afsz;
        wb_afwhy <= ex_afwhy;
        wb_xvec <= ex_xvec; wb_xfmt <= ex_xfmt; wb_xpc <= ex_xpc; wb_xaddr <= ex_xaddr;
        wb_sr <= ex_sr;
        wb_bk_en <= ex_u.setsr && ex_bk_en;
        wb_bk_idx <= ex_bk_idx; wb_bk_val <= ex_bk_val;
        if ((ex_u.cc != CC_NONE || ex_u.setsr) && !ex_exc) ccr_spec <= ex_ccr;
      end else if (retire)
        wb_v <= 1'b0;

      // PTEST, PFLUSH
      if (mmu_ptest_i) mmx_go <= 1'b1;
      if (mmx_go && mmu_ptest_done && mmu_ce) begin
        mmx_go <= 1'b0; mmx_done <= 1'b1; mmusr <= mmu_mmusr; mmx_why <= mmu_ptwhy;
      end
      if (fk_i) if_why <= mmu_why;      // (the fault was reported with the answer)
      walk_blk <= walk_hold && mmu_stall && mmu_idle && !mmu_bact && sb_v[0];
      if (mmu_pflush_i) mmx_done <= 1'b1;
      if (ex_fire || take_any || flush) begin mmx_done <= 1'b0; mmx_go <= 1'b0; end

      // what the MMU's table search is for (for the trace)
      if (mmu_act && mmu_stall && mmu_idle && !mmu_bact) begin
        walk_fetch <= sel_fi;
        walk_pc <= sel_wbx ? wb_u.pc : ws_req ? wb_u.pc : fpu_req ? ex_u.pc : ld_req ? of_u.pc : ag_u.pc;
      end

      // the MMU's table search cycle, and the translation of the store in WB
      if (mmu_walk_req && d_gnt) mmu_acc_issued <= 1'b1;
      if (d_rvalid && d_owner == DO_MMU) mmu_acc_issued <= 1'b0;
      if (sel_wbx && xl_ok) begin wb_xdone <= 1'b1; wb_pa <= mmu_pa; end
      if (sel_wbx && !mmu_stall && mmu_quiet) wb_sfault <= 1'b1;
      if (ws_req && cd_gnt) ws_iss <= 1'b1;
      if (ws_iss && c_rvalid && d_owner == DO_WB) begin ws_done <= 1'b1; ws_err <= c_err; end
      if (ex_fire || retire) begin wb_xdone <= 1'b0; wb_sfault <= 1'b0; ws_iss <= 1'b0; ws_done <= 1'b0; ws_err <= 1'b0; end

      // the FPU uop in EX
      if (fpu_start) fpu_running <= 1'b1;
      if (fpu_req && cd_gnt) fpu_acc_issued <= 1'b1;
      if (fpu_req && cd_gnt && fpu_bus_wr && fpu_bus_addr - ex_u.pc < 32'd128) fx_smc <= 1'b1;
      if (ex_fire || take_any || flush) fx_smc <= 1'b0;
      if (d_done_fpu) fpu_acc_issued <= 1'b0;
      if (fpu_running && fpu_ce && fpu_wr_en) begin
        // a register the FPU wrote already is overwritten in its entry
        if (fpw_v[0] && fpw_idx[0] == fpu_wr_idx) begin
          fpw_size[0] <= (fpw_size[0] > fpu_wr_size) ? fpw_size[0] : fpu_wr_size;
          fpw_data[0] <= wmerge(fpw_data[0], fpu_wr_size, fpu_wr_data);
        end else if (!fpw_v[0]) begin
          fpw_v[0] <= 1'b1; fpw_idx[0] <= fpu_wr_idx; fpw_size[0] <= fpu_wr_size; fpw_data[0] <= fpu_wr_data;
        end else begin
          fpw_v[1] <= 1'b1; fpw_idx[1] <= fpu_wr_idx; fpw_size[1] <= fpu_wr_size; fpw_data[1] <= fpu_wr_data;
        end
      end
      // an operation to an FP register that only waits for the arithmetic
      // unit: the uop goes on, the FPU finishes alone
      if (fpu_running && fpu_ce && fpu_bg && !fpu_done) begin
        fpu_running <= 1'b0;
        fx_done <= 1'b1;
        fx_unimp <= 1'b0; fx_unsupp <= 1'b0; fx_upost <= 1'b0; fx_ftrap <= 1'b0; fx_br <= 1'b0;
        fx_xexc <= 1'b0; fx_xpost <= 1'b0; fx_xhere <= 1'b0; fx_af <= 1'b0; fx_ferr <= 1'b0;
      end
      if (fpu_abort) begin              // its access faulted: the instruction restarts
        fpu_running <= 1'b0;
        fx_done <= 1'b1;
        fx_af <= 1'b1; fx_afatc <= c_atc; fx_affa <= fpu_bus_addr + {31'd0, fpu_uds_n}; fx_afwr <= fpu_bus_wr;
        fx_afwhy <= mmu_why;
        fx_unimp <= 1'b0; fx_unsupp <= 1'b0; fx_upost <= 1'b0; fx_ftrap <= 1'b0; fx_br <= 1'b0;
        fx_xexc <= 1'b0; fx_xpost <= 1'b0; fx_xhere <= 1'b0; fx_ferr <= 1'b0;
      end else if (fpu_running && fpu_ce && fpu_done) begin
        fpu_running <= 1'b0;
        fx_done <= 1'b1;
        fx_af <= 1'b0;
        fx_unimp <= fpu_unimp; fx_unsupp <= fpu_unsupp; fx_upost <= fpu_upost; fx_ferr <= fpu_ferr;
        fx_ftrap <= fpu_ftrap; fx_br <= fpu_brt; fx_brt <= fpu_br_target;
        fx_xexc <= fpu_xexc; fx_xpost <= fpu_xpost; fx_xhere <= fpu_xhere; fx_xvec <= fpu_xvec;
        fx_ea <= fpu_ea_out;
      end
      if (ex_fire || take_any || flush) fx_done <= 1'b0;
      // the FPU uop's register writes land as it retires, or takes its
      // exception, unless an access error restarts the instruction
      if (retire && wb_u.fpu && !wb_restart) begin
        for (int i = 0; i < 2; i++)
          if (fpw_v[i]) rf[{1'b0, fpw_idx[i]}] <= wmerge(rf[{1'b0, fpw_idx[i]}], fpw_size[i], fpw_data[i]);
      end
      if (retire && wb_u.fpu) begin fpw_v[0] <= 1'b0; fpw_v[1] <= 1'b0; end

      // MDHI, and the divider of the uop in EX
      if (ex_fire) begin
        mdhi <= ex_mdhi;
        md_ovf <= ex_mdovf;
        case (ex_u.alu)
          ALU_BFSETUP: begin bf_off <= ex_bv; bf_ins <= ex_av; end
          ALU_BFLD0:   bf_data[39:8] <= ex_av;
          ALU_BFLD1:   bf_data[7:0] <= ex_av[7:0];
          ALU_BFOP:    begin bf_new <= ex_bfnew; bf_nb <= ex_bfnb; end
          ALU_CASCMP:  if (!ex_u.cond[0]) begin                  // CAS, or the first of CAS2
                         cas_eq1 <= ((ex_bv - ex_av) & szmask(ex_u.size)) == 32'd0;
                         cas_eq <= ((ex_bv - ex_av) & szmask(ex_u.size)) == 32'd0;
                       end else
                         cas_eq <= cas_eq1 && ((ex_bv - ex_av) & szmask(ex_u.size)) == 32'd0;
          default: ;
        endcase
      end
      ex_aq <= ex_av; ex_bq <= ex_bv;
      ex_shq <= shifter(ex_u.alu, ex_u.size, ex_av[5:0], ex_bv, ccr_spec[4]);
      ex_mq <= (ex_u.alu == ALU_MULS) ? sext16(ex_bv[15:0]) * sext16(ex_av[15:0])
                                      : {16'd0, ex_bv[15:0]} * {16'd0, ex_av[15:0]};
      ex_s2 <= ex_v && ex_slow && !(ex_fire || take_any || flush);
      // the bit field unit's run for the uop in EX (an answer of a dropped one does not count)
      if (ex_fire || take_any || flush || !ex_v) begin
        bf_started <= 1'b0; bf_have <= 1'b0;
      end else begin
        if (bf_go) bf_started <= 1'b1;
        if (bfu_done && bf_started) bf_have <= 1'b1;
      end
      if (ex_fire || take_any || flush || !ex_v) begin
        dv_busy <= 1'b0;
        dv_done <= 1'b0;
      end else if (ex_isdiv && !dv_done) begin
        if (!dv_busy) begin
          dv_busy <= 1'b1;
          dv_cnt <= 7'd0;
          dv_r <= 33'd0;
          dv_q <= (ex_dsgn && ex_dvnd[63]) ? 64'd0 - ex_dvnd : ex_dvnd;
          dv_d <= (ex_dsgn && ex_dvsr[31]) ? 32'd0 - ex_dvsr : ex_dvsr;
        end else begin
          logic [32:0] rr;
          rr = {dv_r[31:0], dv_q[63]};
          if (rr >= {1'b0, dv_d}) begin
            dv_r <= rr - {1'b0, dv_d};
            dv_q <= {dv_q[62:0], 1'b1};
          end else begin
            dv_r <= rr;
            dv_q <= {dv_q[62:0], 1'b0};
          end
          dv_cnt <= dv_cnt + 7'd1;
          if (dv_cnt == 7'd63) begin
            dv_busy <= 1'b0;
            dv_done <= 1'b1;
          end
        end
      end

      // EX (FLUSH_REG: what entered it with the mispredict is dropped)
      fl_q <= FLUSH_REG && flush_now;
      fl_pc <= ex_npc;
      if (take_any || (FLUSH_REG && fl_q))
        ex_v <= 1'b0;
      else if (of_fire) begin
        ex_v <= 1'b1;
        ex_u <= of_u; ex_tag <= of_tag;
        ex_ea <= of_ea; ex_anv <= of_anv; ex_an <= of_an;
        ex_a <= snoop(of_a); ex_b <= snoop(of_b);
        ex_mem <= of_ld_have ? of_ld_data : d_rdata;
        begin
          opnd_t fa;
          fa = snoop(of_a);
          case (of_u.a_sel)
            OP_EA:   begin ex_ev <= sext_of(of_u, of_ea); ex_evr <= early(of_u); end
            OP_IMM:  begin ex_ev <= sext_of(of_u, of_u.imm); ex_evr <= early(of_u); end
            OP_MEM:  begin ex_ev <= sext_of(of_u, of_ld_have ? of_ld_data : d_rdata); ex_evr <= early(of_u); end
            OP_REG:  begin ex_ev <= sext_of(of_u, fa.v); ex_evr <= early(of_u) && fa.rdy; end
            default: ex_evr <= 1'b0;
          endcase
        end
        ex_ap <= presel(of_u.a_sel, of_u, of_ea, of_ld_have ? of_ld_data : d_rdata, 1'b1);
        ex_bp <= presel(of_u.b_sel, of_u, of_ea, of_ld_have ? of_ld_data : d_rdata, 1'b0);
        ex_af <= of_af || (of_ld_issued && d_done_of && c_err);
        ex_afatc <= of_af ? of_afatc : c_atc;
        ex_afwhy <= of_af ? of_afwhy : mmu_why;
        ex_affa <= of_affa; ex_afsz <= of_afsz;
      end else if (ex_fire)
        ex_v <= 1'b0;
      else begin
        ex_a <= snoop(ex_a); ex_b <= snoop(ex_b);
        if (!ex_evr && early(ex_u) && ex_u.a_sel == OP_REG && ex_as.rdy) begin
          ex_ev <= sext_of(ex_u, ex_as.v); ex_evr <= 1'b1;
        end
      end

      // OF
      of_sc_r <= (ag_fire && !LD_SPEC) ? ag_sc : of_sc_now;
      of_sc_ok <= (ag_fire && !LD_SPEC) ||
                  (!ag_fire && !(IND_REG ? of_ptr_v : (of_need_ind && of_ind_issued && d_done_of)));
      if (of_ld_pend) begin of_ld_pend <= 1'b0; of_ld_bad <= ld_bad; end
      if (ag_fire) begin
        of_v <= 1'b1;
        of_u <= ag_u; of_tag <= ag_tag;
        of_ea <= ag_ea; of_anv <= ag_anv; of_an <= ag_an;
        of_a <= ag_a; of_b <= ag_b;
        case (ag_u.a_sel)
          OP_EA:   begin of_ev <= sext_of(ag_u, ag_ea); of_evr <= early(ag_u) && !ag_u.ind; end
          OP_IMM:  begin of_ev <= sext_of(ag_u, ag_u.imm); of_evr <= early(ag_u); end
          OP_REG:  begin of_ev <= sext_of(ag_u, ag_a.v); of_evr <= early(ag_u) && ag_a.rdy; end
          default: of_evr <= 1'b0;
        endcase
        of_ld_issued <= ag_ld_req && cd_gnt;
        of_af <= 1'b0;
        of_affa <= ag_ea; of_afsz <= ag_u.msize;
        of_ld_have <= ag_fwd;
        if (AG_LOAD) of_ld_data <= ag_sc[31:0];
        of_spec <= LD_SPEC;
        of_ld_pend <= 1'b0;
        of_ind_issued <= 1'b0;
        of_ind_done <= 1'b0;
        of_ptr_v <= 1'b0;
        of_xv <= ag_xv;
      end else if (of_fire || flush || take_any)
        of_v <= 1'b0;
      else begin
        of_a <= snoop(of_a); of_b <= snoop(of_b);
        if (!of_evr && early(of_u) && of_u.a_sel == OP_REG && of_as.rdy) begin
          of_ev <= sext_of(of_u, of_as.v); of_evr <= 1'b1;
        end
        if (ld_req && cd_gnt) begin
          if (of_need_ind) of_ind_issued <= 1'b1;
          else begin
            of_ld_issued <= 1'b1;
            of_spec <= 1'b0;
            of_ld_pend <= LD_SPEC && of_spec;
            of_ld_bad <= 1'b0;
          end
        end
        if (of_fwd) begin
          of_ld_have <= 1'b1;
          of_ld_data <= of_sc[31:0];
        end
        if (IND_REG && of_ptr_v) begin
          of_ptr_v <= 1'b0;
          of_ea <= of_ptr + of_u.od + (of_u.ind_post ? of_xv : 32'd0);
          of_ind_done <= 1'b1;
          if (early(of_u) && of_u.a_sel == OP_EA) begin
            of_ev <= sext_of(of_u, of_ptr + of_u.od + (of_u.ind_post ? of_xv : 32'd0)); of_evr <= 1'b1;
          end
        end
        if (of_need_ind && of_ind_issued && d_done_of) begin
          if (IND_REG && !c_err) begin
            of_ptr <= d_rdata; of_ptr_v <= 1'b1;
          end else begin
            // (IND_REG: a pointer that faulted leaves the address, unused:
            // the instruction starts again)
            if (!IND_REG) of_ea <= d_rdata + of_u.od + (of_u.ind_post ? of_xv : 32'd0);
            of_ind_done <= 1'b1;
          end
          if (!IND_REG && early(of_u) && of_u.a_sel == OP_EA && !c_err) begin
            of_ev <= sext_of(of_u, d_rdata + of_u.od + (of_u.ind_post ? of_xv : 32'd0)); of_evr <= 1'b1;
          end
          if (c_err) begin                // the pointer read faulted: no more
            of_af <= 1'b1; of_afatc <= c_atc; of_affa <= of_ea; of_afsz <= SZ_L; of_afwhy <= mmu_why;
            of_ld_have <= 1'b1;
          end
        end
        if (of_ld_issued && d_done_of && ld_bad)
          of_ld_issued <= 1'b0;           // (LD_SPEC: a store overlapped it: again, checked)
        else if (of_ld_issued && d_done_of) begin
          of_ld_have <= 1'b1;
          of_ld_data <= d_rdata;
          if (c_err) begin
            of_af <= 1'b1; of_afatc <= c_atc; of_affa <= of_ea; of_afsz <= of_u.msize; of_afwhy <= mmu_why;
          end
        end
      end

      // PRELEN: the head's length (a redirect empties the queue)
      // (or S or M changes: the exception entry's does it with no redirect)
      if (f_redirect || (pl_v && !pl_ok)) pl_v <= 1'b0;
      else if (f_consume != 4'd0 || !pl_v) begin
        pl_v <= pl_cv; pl_len <= pl_clen; pl_sm <= sr_hi[5:4]; pl_tgt <= pl_itgt;
        pl_nv <= pl_cnv; pl_snw <= pl_csnw; pl_nst <= pl_cnst; pl_lbr <= pl_ilbr; pl_lpred <= pl_ilpred;
        pl_bhit <= btb_v[pl_pc[4:1]] && btb_pc[pl_pc[4:1]] == pl_pc;
        pl_btgt <= btb_t[pl_pc[4:1]];
      end
`ifndef SYNTHESIS
      if (PRELEN && dec_fire && !inj_active && dec_u.exc == EXC_NONE && !dec_u.ifault && dec_up.last != dec_u.last)
        $fatal(1, "PRELEN: pc %h step %0d of %0d, decode's last %b", q_pc, dec_step, pl_nst, dec_u.last);
      if (PRELEN && dec_fire && !inj_active && dec_up.last && dec_u.exc == EXC_NONE && !dec_u.ifault &&
          (!dec_valid_c || dec_len_c != pl_len || (dec_step == 5'd0 && dec_nv_c != pl_nv) ||
           (dec_u.opcode[15:14] == 2'b00 && dec_u.opcode[13:12] != 2'b00 && dec_snw_c != pl_snw) ||
           (dec_u.br != BR_NONE && dec_u.br_target != pl_tgt) ||
           (dec_u.br_pred != (pl_lpred && dec_u.br != BR_NONE))))
        $fatal(1, "PRELEN: pc %h length %0d target %h, decode's %0d %h (valid %b)", q_pc, pl_len, pl_tgt,
               dec_len_c, dec_u.br_target, dec_valid_c);
`endif

      // decode's redirect, made a clock later (dropped by any other)
      dr_v <= DREDIR_REG && dr_set;
      dr_pc <= dr_set_pc;

      // AG (and the skid)
      if (SKID) begin
        if (flush || take_any) begin
          ag_v <= 1'b0; sk_v <= 1'b0;
        end else if (ag_ready) begin
          ag_v <= sk_v || dec_fire;
          ag_u <= sk_v ? sk_u : src_u;
          ag_tag <= tag_ctr;
          if (sk_v || dec_fire) tag_ctr <= tag_ctr + 3'd1;
          sk_v <= 1'b0;
        end else if (dec_fire) begin
          sk_v <= 1'b1; sk_u <= src_u;
        end
      end else if (dec_fire) begin
        ag_v <= 1'b1;
        ag_u <= src_u;
        ag_tag <= tag_ctr;
        tag_ctr <= tag_ctr + 3'd1;
      end else if (ag_fire || flush || take_any)
        ag_v <= 1'b0;

      // a write that faults and is held (its instruction goes on, its later
      // writes suppressed): the access error at the end of the instruction
      if (retire && st_hold && !wb_u.noaf && !acc_pend) begin
        acc_pend <= 1'b1;
        acc_tea <= !wb_sfault;
        acc_fa <= wb_ea; acc_data <= wb_res; acc_sz <= wb_u.msize; acc_fc <= {sr_hi[5], 2'b01};
      end
      if (take_acc) acc_pend <= 1'b0;
      // the 68060's BUSCR on an exception: L and LE into SL and SLE, cleared
      if (MC68060 && (take_exc || take_int || take_int_stop || take_acc || take_trc))
        buscr <= {1'b0, buscr[3], 1'b0, buscr[1]};

      if (retire && wb_u.first && !inj_active) t_cur <= sr_hi[7];

      // STOP without an interrupt to take: wait for one
      if (stop_now) begin
        stopped <= 1'b1;
        stop_npc <= wb_u.next_pc;
      end
      if (ipl != 3'd7) lvl7_taken <= 1'b0;
      if (ex_fire && ex_u.alu == ALU_RTEJ && ex_av[15:12] == 4'h1 && !MC68060) rte_cont <= 1'b1;
      else if (dec_take && !inj_active && dec_u.first) rte_cont <= 1'b0;

      // return stack (speculative: decode pushes and pops) and jump targets
      if (dec_take && !inj_active && dec_up.last) begin
        if (dec_is_call) begin
          ras[ras_top] <= dec_u.next_pc;
          ras_top <= ras_top + 3'd1;
          if (ras_n != 4'(RASN)) ras_n <= ras_n + 4'd1;
        end else if (dec_is_rts && ras_n != 4'd0) begin
          ras_top <= ras_top - 3'd1;
          ras_n <= ras_n - 4'd1;
        end
      end
      if (ex_fire && ex_u.br == BR_JMP && ex_u.opcode != 16'h4E75 && !ex_exc) begin
        btb_v[ex_u.pc[4:1]] <= 1'b1;
        btb_pc[ex_u.pc[4:1]] <= ex_u.pc;
        btb_t[ex_u.pc[4:1]] <= ex_npc;
      end

      // MOVEM's first transfer, the EA of its access error frame
      if (ag_fire && ag_u.mfirst) movem_ea <= ag_ea;

      // decode step, and the injector's
      if (flush || take_any) dec_step <= 5'd0;
      else if (dec_take && !inj_active) dec_step <= dec_up.last ? 5'd0 : dec_step + 5'd1;
      if (dec_take && !inj_active)
        mv_rem <= (dec_u.movem && (dec_u.load || dec_u.store)) ? mv_in & (mv_in - 16'd1) : mv_in;
      if (dec_take && inj_active) begin
        if (inj_step == 5'd6) inj_active <= 1'b0;
        case (inj_step)
          5'd1:    inj_step <= (inj_fmt == 4'h7) ? 5'd11 : (MC68060 && inj_fmt == 4'h4) ? 5'd24 :
                               (inj_fmt != 4'h0) ? 5'd2 : 5'd3;
          5'd25:   inj_step <= 5'd3;
          5'd5:    inj_step <= inj_throw ? 5'd7 : 5'd6;
          5'd10:   inj_step <= 5'd6;
          5'd23:   inj_step <= 5'd3;
          default: inj_step <= inj_step + 5'd1;
        endcase
      end
    end
  end

  // ---------------------------------------------------------------- debug

`ifdef DEBUG_DREDIR
  always_ff @(posedge clk)
    if (!rst && ce && (dec_go || dr_v || dr_set))
      $display("dec qpc=%h len=%0d fire=%b cross=%b atmk=%b mk=%b/%0d/%h pred=%b tgt=%h set=%b/%h drv=%b/%h last=%b",
               q_pc, dec_len, dec_fire, dec_cross, dec_at_mark, mk_v, mk_pos, mk_pc, dec_up.br_pred, dec_up.br_target,
               dr_set, dr_set_pc, dr_v, dr_pc, dec_up.last);
`endif

  assign dbg_retire = retire && ce;
  assign dbg_first  = wb_u.first;
  assign dbg_last   = wb_u.last && !wb_exc_now && !wb_cont && !take_int && !take_trc && !stop_now;
  assign dbg_pc     = wb_u.pc;
  assign dbg_op     = wb_u.opcode;
  assign dbg_npc    = wb_npc;
  assign dbg_unimpl = wb_v && wb_u.unimpl;
  assign dbg_sr     = {sr_hi, 3'd0, ccr_arch};
  assign dbg_fwr      = ce && fpu_req && cd_gnt && fpu_bus_wr && !(cd_xl && mmu_quiet);
  assign dbg_mwr      = ce && mmu_walk_req && d_gnt && mmu_bwr;
  assign dbg_mwr_addr = mmu_baddr;
  assign dbg_mwr_data = mmu_bwd;
  assign dbg_mwr_fetch = walk_fetch;
  assign ctl_cacr = cacr;
  assign ctl_vbr = vbr;
  assign ctl_tc_e = tc_e;
  assign ctl_cinv = ce && ex_fire && ex_u.mmuop == 2'd3 && !ex_exc;
  assign ctl_cinv_c = ex_u.opcode[7:6];
  assign ctl_reset = ce && retire && !wb_exc_now && wb_u.opcode == 16'h4E70 && wb_u.first;
  assign dbg_mwr_pc   = walk_pc;
  assign dbg_fwr_addr = d_addr;
  assign dbg_fwr_size = d_size;
  assign dbg_fwr_data = d_wdata;
  // (a write that ends with a bus error was made: the trace shows it, as
  // TG68K.C's; one whose translation faulted was not)
  assign dbg_st      = wb_u.store && !wb_exc && !wb_sfault && !(acc_pend && !wb_u.noaf);
  assign dbg_st_addr = dxl ? wb_pa : wb_ea;
  assign dbg_st_size = wb_u.msize;
  assign dbg_st_data = wb_res;
  always_comb
    for (int i = 0; i < 16; i++) dbg_regs[i] = rf[i];

`ifdef DBG_FL
  always_ff @(posedge clk)
    if (!rst && ce) begin
      if (flush_now) $display("FL t=%0t now pc=%h npc=%h of=%b:%h ag=%b:%h", $time, ex_u.pc, ex_npc, of_v, of_u.pc, ag_v, ag_u.pc);
      if (FLUSH_REG && fl_q) $display("FL t=%0t q  ex=%b:%h(st %b) of=%b:%h wb=%b:%h", $time, ex_v, ex_u.pc, ex_u.store, of_v, of_u.pc, wb_v, wb_u.pc);
      if (mmu_act && mmu_stall && mmu_idle && !mmu_bact) $display("WALK t=%0t hold=%b sb=%b ex=%b:%h st%b wb=%b:%h st%b of=%b:%h", $time, walk_hold, sb_v[0], ex_v, ex_u.pc, ex_u.store, wb_v, wb_u.pc, wb_u.store, of_v, of_u.pc);
    end
`endif

`ifndef SYNTHESIS
  // performance counters of the simulation, printed at the end
  longint unsigned pc_cycles, pc_retire, pc_starve, pc_sys, pc_agi, pc_ldwait, pc_ldst, pc_ldbr,
                   pc_stwait, pc_div, pc_flush, pc_dredir, pc_ldspec, pc_lddrop;
  always_ff @(posedge clk)
    if (rst) begin
      pc_cycles <= 0; pc_retire <= 0; pc_starve <= 0; pc_sys <= 0; pc_agi <= 0; pc_ldwait <= 0;
      pc_ldst <= 0; pc_ldbr <= 0; pc_stwait <= 0; pc_div <= 0; pc_flush <= 0; pc_dredir <= 0;
      pc_ldspec <= 0; pc_lddrop <= 0;
    end else if (running && ce) begin
      pc_cycles <= pc_cycles + 1;
      if (retire) pc_retire <= pc_retire + 1;
      if (!inj_active && !dec_valid && ag_ready) pc_starve <= pc_starve + 1;
      if (src_valid && sys_inflight) pc_sys <= pc_sys + 1;
      if (ag_v && ag_stall) pc_agi <= pc_agi + 1;
      if (of_v && !of_done) begin
        pc_ldwait <= pc_ldwait + 1;
        if (!of_ld_issued && !of_ld_have && !of_need_ind && !d_busy && (ex_v && ex_u.store || wb_v && wb_u.store))
          pc_ldst <= pc_ldst + 1;
        if (!of_ld_issued && !of_ld_have && !d_busy && ex_v && ex_u.br != BR_NONE) pc_ldbr <= pc_ldbr + 1;
      end
      if (wb_v && wb_u.store && !retire) pc_stwait <= pc_stwait + 1;
      if (ex_wait) pc_div <= pc_div + 1;
      if (flush) pc_flush <= pc_flush + 1;
      if (dec_fire && !inj_active && dec_up.last && dec_up.br_pred) pc_dredir <= pc_dredir + 1;
      if (of_v && !ag_fire && ld_req && cd_gnt && of_spec && !of_need_ind) pc_ldspec <= pc_ldspec + 1;
      if (of_v && !ag_fire && of_ld_issued && d_done_of && ld_bad) pc_lddrop <= pc_lddrop + 1;
    end
  final
    $display("perf: cycles %0d uops %0d | decode starved %0d, behind sys %0d, AG interlock %0d | ",
             pc_cycles, pc_retire, pc_starve, pc_sys, pc_agi,
             "OF load %0d (blocked by a store %0d, by a branch %0d) | WB store %0d | divide %0d | ",
             pc_ldwait, pc_ldst, pc_ldbr, pc_stwait, pc_div,
             "EX redirects %0d, decode redirects %0d", pc_flush, pc_dredir,
             LD_SPEC ? $sformatf(" | loads unchecked %0d, dropped %0d", pc_ldspec, pc_lddrop) : "");

  always_ff @(posedge clk)
    if (!rst && ex_v) begin
      if (ex_u.a_sel == OP_REG && !snoop(ex_a).rdy) $error("EX: operand a of %h not ready", ex_u.pc);
      if (ex_u.b_sel == OP_REG && !snoop(ex_b).rdy) $error("EX: operand b of %h not ready", ex_u.pc);
    end
`endif

endmodule
