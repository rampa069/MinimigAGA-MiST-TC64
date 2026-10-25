// SPDX-License-Identifier: LGPL-3.0-or-later
// 68040 FPU. A SystemVerilog translation of TG68K.C's TG68K_FPU.vhd
// (branch bus32), cycle for cycle.
//
// The floating-point unit of the 68040 mode: FP0-FP7, FPCR, FPSR and FPIAR,
// the conversion between the memory data formats and the extended format,
// a bus sequencer for the memory operands and the arithmetic unit
// m68k_fpu_alu. The core decodes the F-line opcode, works out the effective
// address of the memory modes it shares with the integer unit ((d16,An),
// (d8,An,Xn), absolute and PC-relative), gives the address of immediate
// data, then starts this unit and waits for done.
//
// Instructions (M68000 PRM section 5, M68040 User's Manual section 9):
//   cpGEN  opclass 000 FPm,FPn and 010 <ea>,FPn: FMOVE, FSQRT, FABS, FNEG,
//          FDIV, FADD, FMUL, FSUB, FCMP, FTST and their FS/FD forms
//          opclass 011 FMOVE FPn,<ea> (B W L S D X)
//          opclass 100/101 FMOVE(M) <ea>,FPcr and FPcr,<ea>
//          opclass 110/111 FMOVEM <ea>,list and list,<ea>
//   FScc, FDBcc, FTRAPcc
//   FSAVE (null or idle frame), FRESTORE
// The operations the 68040 leaves to the M68040FPSP (the transcendental
// functions, FINT, FINTRZ, FGETEXP, FGETMAN, FMOD, FREM, FSCALE, FSGL*) are
// done as the 68040 does them (UM 9.6): the source operand is fetched and
// converted, unimp is set with done, and the core takes the unimplemented
// floating-point instruction exception (vector 11, format $2); the FSAVE
// of the FPSP then gets the 26-word unimplemented instruction frame with
// the command word, the source (ETEMP), the destination register (FPTEMP)
// and their tags. FMOVECR is recognized by the core, which takes Line-F
// with a format $0 frame (the FPSP emulates FMOVECR from that). Packed
// decimal is an unsupported data type, as on the 68040 (UM 9.6.2): a packed
// source is read as it is (bits 95-64 to FPTEMP, 63-0 to ETEMP) and
// unsupp is set with done, and the core takes vector 55 with a format $0
// frame; FMOVE.P FPn,<ea> writes nothing, sets unsupp and post, and the
// core takes vector 55 with a format $3 frame (the effective address).
// The FSAVE of the FPSP then gets the 50-word busy frame, and an FRESTORE
// of a busy frame that the FPSP has left with CU_SAVEPC = $FE and E1 and
// E3 clear runs the command word on ETEMP and FPTEMP, as the 68040
// completes the instruction (res_func of the FPSP). Immediate data is read
// like a memory operand at the address the core gives.
//
// Floating-point arithmetic exceptions (UM 9.7). The unit computes the
// result the 68040 and the M68040FPSP give together, so it traps only when
// an exception the instruction raises is enabled in the FPCR; it then takes
// the vector the 68040 would take (OVFL and UNFL are nonmaskable there, so
// they come before DZ and INEX) and leaves the state the FPSP handlers read
// in a 50-word busy frame (fpsp.h offsets): for FADD, FSUB, FMUL, FDIV,
// FSQRT, FSGLDIV and FSGLMUL with OVFL, UNFL or INEX2 an E3 exception with
// CMDREG3B and the intermediate result in WBTEMP (rounded for OVFL; before
// rounding, with guard, round and sticky, for UNFL), otherwise E1 with
// CMDREG1B, the source in ETEMP and the destination in FPTEMP (for FMOVE,
// FABS and FNEG with OVFL or UNFL the intermediate result in both) and the
// nonmaskable exceptions in NMCEXC. The destination register is not
// written for OPERR, OVFL, UNFL and DZ (the FPSP writes OVFL and UNFL
// results). The exception is pending: the next floating-point instruction
// other than FSAVE and FRESTORE takes it as a pre-instruction exception
// (format $0, its own address). FMOVE to memory or Dn takes it at once as
// a post-instruction exception (T set, format $3 with the effective
// address, 0 for Dn). FSAVE stores and clears the pending frame; FRESTORE
// of a busy frame with E1 or E3 set makes it pending again, with the
// vector the 68040 derives from NMCEXC and the FPSR (gen_except of the
// FPSP). BSUN enabled traps FScc, FDBcc, FTRAPcc and FBcc before the
// predicate is used (vector 48), with an E1 busy frame (Linux's skeleton
// clears E1 for it).
//
// MC68060 (not in TG68K_FPU.vhd; with FPSP 0, the unit completing what the
// M68060SP would emulate of the operations the 68060 has): the 68060's FPU
// as software sees it (MC68060 UM section 6). FSAVE writes and FRESTORE
// reads the frame of three longs: $00 null, $60 idle, $E0 an exception
// pending, with its vector (V2-V0, the xvec numbering) and its operand;
// FRESTORE of another one sets ferr (format error), its (An)+ then not
// made. FINT and FINTRZ are done here (on the unit's FMOVE of the source).
// What the 68060 leaves to the M68060SP (the transcendental functions,
// FGETEXP, FGETMAN, FMOD, FREM, FSCALE, FMOVECR, FScc, FDBcc, FTRAPcc;
// packed decimal) is not run: FPIAR is set, ea_out is the operand address
// with no (An)+ or -(An) made (the package makes them), and unimp (vector
// 11) or unsupp (55, packed) comes with done; the core stacks format $2.
//
// Copyright (c) 2026 Ramon Martinez. LGPL-3.0-or-later, as TG68K.C.

module m68k_fpu #(
  // 1: as the MC68040, which leaves to the M68040FPSP what it does not do
  // in hardware: OVFL and UNFL always trap, so do SNAN and OPERR of FMOVE
  // to an integer, and denormalized and unnormalized operands take the
  // unsupported data type exception (UM 9.6.2, 9.7). 0: the unit completes
  // all of it and traps only for exceptions enabled in the FPCR (for
  // software without the FPSP)
  parameter int FPSP = 1,
  // 1: m68k_fpu_alu_fast, the same results in fewer cycles (0: the
  // arithmetic unit of TG68K.C cycle for cycle, as the equivalence tests need)
  parameter bit FAST_ALU = 1'b0,
  parameter bit MC68060 = 1'b0,
  // 1: the arithmetic unit's result, exceptions and done taken into
  // registers first (a cycle more an operation: its rounding off the paths
  // into FPn and the FPSR); 0 as TG68K.C, for the equivalence tests
  parameter bit ALU_REG = 1'b0
) (
  input  logic        clk,
  input  logic        reset,
  input  logic        clkena,
  // instruction
  input  logic        start,
  input  logic        abort_in,       // access error: drop the instruction
  input  logic [15:0] opcode,
  input  logic [15:0] cmd,
  input  logic [31:0] ea,             // modes 5, 6, 7: the operand address
                                      // (for #imm, where the data starts)
  input  logic [31:0] iaddr,          // address of the instruction (FPIAR)
  output logic        done,
  output logic        unimp,          // with done: unimplemented, take vector 11
  output logic        unsupp,         // with done: unsupported data type, vector 55
  output logic        upost,          // with unsupp: post-instruction (format $3)
  output logic        ferr,           // (MC68060) with done: FRESTORE of no 68060 frame
  output logic [31:0] ea_out,         // the operand address, for that frame
  output logic        ftrap,          // with done: FTRAPcc traps
  output logic        br_take,        // with done: FDBcc branches
  output logic [31:0] br_target,
  // integer register file
  output logic [3:0]  rd_idx,
  input  logic [31:0] rd_data,
  output logic        wr_en,
  output logic [3:0]  wr_idx,
  output logic [31:0] wr_data,
  output logic [1:0]  wr_size,        // 00 byte, 01 word, 10 long
  // bus
  output logic        bus_act,
  output logic [31:0] bus_addr,
  output logic        bus_wr,
  output logic        bus_uds_n,
  output logic        bus_lds_n,
  output logic [15:0] bus_wdata,
  input  logic [15:0] data_in,
  // conditional predicates (FBcc, FScc, FDBcc, FTRAPcc)
  input  logic [5:0]  pred,
  output logic        pred_true,
  input  logic        pred_bsun,      // FBcc evaluated pred: set BSUN on a NaN
  // arithmetic exceptions: xexc with done takes vector 48 + xvec (0 BSUN,
  // 1 INEX, 2 DZ, 3 UNFL, 4 OPERR, 5 OVFL, 6 SNAN), post-instruction with
  // a format $3 frame when xpost is set; xpend says one is pending (FBcc
  // takes it), fpcc_nan and fp_bsun_en decide a BSUN trap of FBcc, which
  // set_bsun records in the FPSR
  output logic        xexc,
  output logic [2:0]  xvec,
  output logic        xpost,
  output logic        xhere_o,        // with xexc and xpost: the PC is this instruction's
  output logic        xpend_o,
  output logic [2:0]  xpend_vec,
  output logic        fpcc_nan,
  output logic        fp_bsun_en,
  input  logic        set_bsun,
  // (not in TG68K_FPU.vhd) the FPCC: N Z I NAN of the FPSR, for a core
  // that evaluates predicates itself; busy: not idle; bg: only the
  // arithmetic unit is left of an operation to an FP register, whose
  // exceptions are pending ones (the core may let the instruction go)
  output logic [3:0]  fpcc_o,
  output logic        busy_o,
  output logic        bg_o
);

  typedef logic [7:0] byte_t;
  localparam logic [79:0] FP_NAN = 80'h7FFF_FFFFFFFFFFFFFFFF;

  typedef enum logic [4:0] {
    IDLE, ST_REG, ST_EA, ST_SRC, ST_XFER, ST_XFER_DONE, ST_ALU, ST_ALU_WAIT,
    ST_STORE, ST_CTRL, ST_MOVEM, ST_MOVEM_W, ST_RESTORE, ST_RESTORE_B, ST_DBCC, ST_UNIMP,
    ST_UNSUPP, ST_LIST, ST_FINISH
  } state_e;

  // power-up values, as the VHDL's signal defaults
  /* verilator lint_off PROCASSINIT */
  // FP0-FP7: a memory (MLABs on the Cyclone V, read as addressed: three
  // copies, by the indices the sequencer reads them with), written a clock
  // after the sequencer gives the write (fpr_we), read through it meanwhile;
  // and a bit each that the register is a NaN, for the writes of all eight
  // at once (reset, a null FRESTORE)
  (* ramstyle = "MLAB, no_rw_check" *) logic [79:0] fpr_m [8];
  logic [7:0]  fpr_nan = 8'hFF;
  logic        fpr_we = 1'b0;
  logic [2:0]  fpr_wa;
  logic [79:0] fpr_wd;
  always_ff @(posedge clk)
    if (fpr_we) fpr_m[fpr_wa] <= fpr_wd;
  function automatic logic [79:0] fpr_byp(input logic [2:0] i, input logic [79:0] v);
    return fpr_nan[i] ? FP_NAN : (fpr_we && fpr_wa == i) ? fpr_wd : v;
  endfunction
  logic [79:0] fpr_cd, fpr_cs, fpr_cl;  // FP of cw[9:7], cw[12:10], li
  logic [15:0] fpcr = '0;
  logic [31:0] fpsr = '0;
  logic [31:0] fpiar = '0;
  logic        null_state = 1'b1;

  state_e      state = IDLE;
  state_e      ret_state;

  // the instruction
  logic [15:0] opc, cw;
  logic [2:0]  mode, reg_;
  logic [2:0]  cls;
  logic [2:0]  fmt;
  logic [31:0] addr;
  logic [31:0] areg;
  logic [7:0]  nbytes;

  // bus sequencer: transfer xn bytes between buf and memory at xa
  byte_t       buf_ [12];
  logic [31:0] xa;
  logic [6:0]  xi, xn;
  logic        xrframe = 1'b0;        // FRESTORE: reading the fields of a busy frame
  logic        xframe = 1'b0;         // FSAVE: the data comes from the unimp frame
  logic        xwr;
  logic        xbyte;                 // the current cycle moves one byte

  // arithmetic unit
  logic        alu_start, alu_busy, alu_done, alu_tomem;
  logic [3:0]  alu_op;
  logic [1:0]  alu_rm, alu_rp;
  logic [79:0] alu_dst, alu_src, alu_res;
  logic [5:0]  alu_exc;
  logic        alu_done_u;             // the unit's answer as the sequencer takes it (ALU_REG)
  logic [79:0] alu_res_u;
  logic [5:0]  alu_exc_u;
  logic [80:0] fint_u;                  // FINT's result (m68k_fpu_fint)
  logic        wr_fp;                 // write the result to FPn
  logic        set_cc;
  logic        store;                 // opclass 011

  // FMOVEM
  logic [7:0]  list;
  logic [3:0]  li;
  assign fpr_cd = fpr_byp(cw[9:7], fpr_m[cw[9:7]]);
  assign fpr_cs = fpr_byp(cw[12:10], fpr_m[cw[12:10]]);
  assign fpr_cl = fpr_byp(li[2:0], fpr_m[li[2:0]]);
  logic [31:0] mptr;

  logic        done_r = 1'b0, unimp_r = 1'b0;
  logic        alu_early;
  // the pending unimplemented instruction, for the FSAVE frame
  logic        unimp_pend = 1'b0;
  logic        uop;
  logic [79:0] etemp, fptemp;
  logic [15:0] cmd1b;
  // the unsupported data type, for the busy frame
  logic        busy_pend = 1'b0;
  logic        unsupp_r = 1'b0, upost_r = 1'b0;
  logic        pk;                    // the source is packed decimal
  logic        fe1, ft;               // E1 and T of the frame
  logic [7:0]  stag, dtag;
  // what an FRESTORE of a busy frame brings back
  logic [7:0]  cusave;
  logic        re1, re3;
  byte_t       ufr [100];
  logic        br_r = 1'b0, ftrap_r = 1'b0;
  // the pending arithmetic exception and its busy frame (also one FRESTORE
  // brought back)
  byte_t       xf [100];
  logic        xpend = 1'b0;
  logic        xraw = 1'b0;           // FSAVE: the data comes from xf
  // the 26-word frame (E1 exceptions, as on the 68040): its fields are
  // xf[52..99], the end of the busy frame; xro reads one into there
  logic        xsmall = 1'b0;
  logic [5:0]  xro = 6'd0;
  logic        ru = 1'b0;             // the U flag of the frame FRESTORE reads
  logic [2:0]  xvec_r;
  logic        xnow = 1'b0, xpost_r = 1'b0, xst = 1'b0;
  logic        ires_s;
  logic        xhere = 1'b0;          // a pending E3 reported as a post-instruction
                                      // exception by the FMOVE out of its register
  logic        xe3 = 1'b0;            // the pending exception is an E3 one
  logic        rfun = 1'b0;           // the operation comes from FRESTORE (res_func)
  // (MC68060) the instruction the M68060SP emulates (11: unimp, 55: packed);
  // FINT/FINTRZ on the unit's result; the pending exception's operand
  logic        u60 = 1'b0, p60 = 1'b0, fint_r = 1'b0, fint_z = 1'b0, ferr_r = 1'b0;
  logic [79:0] xop = '0;
  /* verilator lint_on PROCASSINIT */
  logic signed [17:0] ires_e, rres_e;
  logic [67:0] ires_m, rres_m;
  logic [31:0] brt;

  // memory formats to extended (an unnormal extended value is fine: the
  // arithmetic unit normalizes it)
  function automatic logic [79:0] int_to_x(input logic [31:0] v);
    logic [31:0] m;
    if (v == 32'd0) return 80'd0;
    m = v[31] ? 32'd0 - v : v;
    return {v[31], 15'(16383 + 63), 32'd0, m};
  endfunction

  function automatic logic [79:0] sgl_to_x(input logic [31:0] s);
    logic [14:0] e;
    if (s[30:23] == 8'hFF)
      // an infinity or a NaN: the fraction left-justified, J clear (the
      // integer bit is a don't care there, PRM 1.6.5; a 68881/68882/68040
      // clears it)
      return {s[31], 15'h7FFF, 1'b0, s[22:0], 40'd0};
    else if (s[30:23] == 8'h00) begin
      if (s[22:0] == 23'd0) return {s[31], 79'd0};
      // denormal: 0.f x 2^-126, an unnormal extended value
      return {s[31], 15'(16383 - 126), 1'b0, s[22:0], 40'd0};
    end
    e = {7'd0, s[30:23]} + 15'(16383 - 127);
    return {s[31], e, 1'b1, s[22:0], 40'd0};
  endfunction

  function automatic logic [79:0] dbl_to_x(input logic [63:0] d);
    logic [14:0] e;
    if (d[62:52] == 11'h7FF)
      return {d[63], 15'h7FFF, 1'b0, d[51:0], 11'd0};
    else if (d[62:52] == 11'd0) begin
      if (d[51:0] == 52'd0) return {d[63], 79'd0};
      return {d[63], 15'(16383 - 1022), 1'b0, d[51:0], 11'd0};
    end
    e = {4'd0, d[62:52]} + 15'(16383 - 1023);
    return {d[63], e, 1'b1, d[51:0], 11'd0};
  endfunction

  // extended (rounded to single or double with to_mem) to memory formats
  function automatic logic [31:0] x_to_sgl(input logic [79:0] x);
    logic [14:0] e;
    if (x[78:64] == 15'h7FFF) return {x[79], 8'hFF, x[62:40]};
    else if (!x[63]) return {x[79], 8'h00, x[62:40]};   // zero or a denormal
    e = x[78:64] - 15'(16383 - 127);
    return {x[79], e[7:0], x[62:40]};
  endfunction

  function automatic logic [63:0] x_to_dbl(input logic [79:0] x);
    logic [14:0] e;
    if (x[78:64] == 15'h7FFF) return {x[79], 11'h7FF, x[62:11]};
    else if (!x[63]) return {x[79], 11'h000, x[62:11]};
    e = x[78:64] - 15'(16383 - 1023);
    return {x[79], e[10:0], x[62:11]};
  endfunction

  // operand sizes of the formats: L S X P W D B
  function automatic logic [7:0] fmt_bytes(input logic [2:0] f);
    case (f)
      3'b000, 3'b001: return 8'd4;
      3'b010, 3'b011: return 8'd12;
      3'b100:         return 8'd2;
      3'b101:         return 8'd8;
      default:        return 8'd1;
    endcase
  endfunction

  function automatic logic [7:0] popcount3(input logic [2:0] v);
    return 8'(v[0]) + 8'(v[1]) + 8'(v[2]);
  endfunction

  function automatic logic [7:0] popcount8(input logic [7:0] v);
    logic [7:0] n;
    n = 8'd0;
    for (int i = 0; i < 8; i++) n = n + 8'(v[i]);
    return n;
  endfunction

  // conditional predicates (M68000 PRM table 3-23) on N Z NAN of the FPCC;
  // bit 4 only selects the signaling form
  function automatic logic pred_eval(input logic [5:0] p, input logic n, input logic z, input logic nan);
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

  // operand tags of the state frames (UM 9.8, STAG and DTAG): norm $00,
  // zero $20, infinity $40, NaN $60, an extended denormal or unnormal $80
  // ($A0, a single or double denormal, is set where the format is known)
  function automatic logic [7:0] tag_of(input logic [79:0] x);
    if (x[78:64] == 15'h7FFF) begin
      if (x[62:0] == 63'd0) return 8'h40;
      return 8'h60;
    end else if (x[63:0] == 64'd0)
      return 8'h20;
    else if (!x[63])
      return 8'h80;
    return 8'h00;
  endfunction

  // an operand the 68040 does not take in hardware: denormalized or
  // unnormalized, not zero (an exponent of 0 with J set is the normalized
  // 2^-16383)
  function automatic logic unsup_of(input logic [79:0] x);
    return x[78:64] != 15'h7FFF && !x[63] && x[62:0] != 63'd0;
  endfunction

  // the arithmetic unit operation of a command word, bit 4 set when the
  // unit has it (FSQRT also as $05, its CMDREG1B form, UM 9.8)
  function automatic logic [4:0] op_of(input logic [6:0] opm);
    case (opm)
      7'b0000000, 7'b1000000, 7'b1000100:             return 5'b10000;  // FMOVE
      7'b0011000, 7'b1011000, 7'b1011100:             return 5'b10001;  // FABS
      7'b0011010, 7'b1011010, 7'b1011110:             return 5'b10010;  // FNEG
      7'b0000100, 7'b0000101, 7'b1000001, 7'b1000101: return 5'b10011;  // FSQRT
      7'b0100010, 7'b1100010, 7'b1100110:             return 5'b10100;  // FADD
      7'b0101000, 7'b1101000, 7'b1101100:             return 5'b10101;  // FSUB
      7'b0100011, 7'b1100011, 7'b1100111:             return 5'b10110;  // FMUL
      7'b0100000, 7'b1100000, 7'b1100100:             return 5'b10111;  // FDIV
      7'b0111000:                                     return 5'b11000;  // FCMP
      7'b0111010:                                     return 5'b11001;  // FTST
      7'b0100100:                                     return 5'b11011;  // FSGLDIV
      7'b0100111:                                     return 5'b11100;  // FSGLMUL
      default:                                        return 5'b00000;
    endcase
  endfunction

  // (MC68060) what the 68060 does not run: {unimplemented, packed decimal}
  function automatic logic [1:0] m060_of(input logic [15:0] o, input logic [15:0] c);
    logic gen;
    logic [4:0] op;
    op = op_of(c[6:0]);
    gen = o[8:6] == 3'b000 && (c[15:13] == 3'b000 || c[15:13] == 3'b010);
    if (o[8:6] == 3'b001) return 2'b10;                               // FScc, FDBcc, FTRAPcc
    if (gen && c[15:10] == 6'b010111) return 2'b10;                   // FMOVECR
    if (o[8:6] == 3'b000 && ((c[15:13] == 3'b010 && c[12:10] == 3'b011) ||
                             (c[15:13] == 3'b011 && (c[12:10] == 3'b011 || c[12:10] == 3'b111))))
      return 2'b01;                                                   // packed decimal
    if (gen && !op[4] && c[6:0] != 7'b0000001 && c[6:0] != 7'b0000011)
      return 2'b10;                                                   // not FINT, FINTRZ
    return 2'b00;
  endfunction


  // the vector of the highest priority exception in m (snan operr ovfl unfl
  // dz inex), INEX when none
  function automatic logic [2:0] xvec_of(input logic [5:0] m);
    if (m[5]) return 3'b110;
    else if (m[4]) return 3'b100;
    else if (m[3]) return 3'b101;
    else if (m[2]) return 3'b011;
    else if (m[1]) return 3'b010;
    return 3'b001;
  endfunction

  // CMDREG3B from a CMDREG1B command word (UM figure 9-11, as gen_except of
  // the FPSP builds it): the destination register, bit 6, then bit 2,
  // bits 5-3 and bits 1-0 of the operation
  function automatic logic [15:0] cmd3b_of(input logic [15:0] c);
    return {6'b000000, c[9:7], c[6], c[2], c[5:3], c[1:0]};
  endfunction

  // an extended value from the unit's intermediate result: sign, the low
  // 15 bits of the biased exponent (UNFL leaves it negative, which the FPSP
  // sign-extends from bit 14) and the 64-bit mantissa
  function automatic logic [79:0] ires_x(input logic sg, input logic signed [17:0] e,
                                         input logic [67:0] m);
    logic signed [17:0] b;
    b = e + 18'sd16383;
    return {sg, b[14:0], m[66:3]};
  endfunction

  // an operand the FPSP hands back for res_func: a 15-bit exponent with its
  // bit 15 apart (ETE15 in STAG, FPTE15 in DTAG, set by mk_norm for an
  // exponent up to $3FFF), so a normalized denormal, whose biased exponent
  // is negative, comes as $4000-$7FFF with that bit set: e - $8000. It goes
  // to the arithmetic unit as the extended denormal of the same value.
  function automatic logic [79:0] frame_x(input logic [79:0] x, input logic e15);
    int n;
    logic [63:0] m;
    if (e15 && x[78]) begin
      n = 32768 - int'(x[78:64]);         // the shift, -e
      if (n > 63) m = 64'd0;
      else        m = x[63:0] >> n;
      return {x[79], 15'd0, m};
    end
    return x;
  endfunction

  function automatic logic [31:0] buf_long(input byte_t b [12], input int i);
    return {b[i], b[i + 1], b[i + 2], b[i + 3]};
  endfunction

  // done also in the cycle the arithmetic unit finishes a register result,
  // one cycle before ST_FINISH
  assign done = done_r || alu_early;
  assign unimp = unimp_r;
  assign unsupp = unsupp_r;
  assign upost = upost_r;
  assign ferr = ferr_r;
  assign ea_out = (xpost_r && mode == 3'b000) ? 32'd0 : addr;
  assign xexc = xnow;
  assign xvec = xvec_r;
  assign xpost = xpost_r;
  assign xpend_o = xpend;
  assign xhere_o = xhere;
  assign xpend_vec = xvec_r;
  assign fpcc_nan = fpsr[24];
  assign fp_bsun_en = fpcr[15];
  assign fpcc_o = fpsr[27:24];
  assign busy_o = state != IDLE;
  assign bg_o = state == ST_ALU_WAIT && !store;

  // the 26-word unimplemented instruction frame and the 50-word busy frame
  // (68040 UM figure 9-10). The FPSP addresses the fields from the end of
  // the frame (fpsp.h), so the busy frame has each 48 bytes further on:
  // version $41, size $30 or $60, STAG, CMDREG1B, DTAG, the E1 and T bytes,
  // FPTEMP and ETEMP; the rest is zero (CU_SAVEPC among them).
  always_comb begin
    int o;
    for (int i = 0; i < 100; i++) ufr[i] = 8'h00;
    ufr[0] = 8'h41;
    if (busy_pend) begin
      ufr[1] = 8'h60; o = 48;
      ufr[40] = fpiar[31:24]; ufr[41] = fpiar[23:16];    // FPIARCU
      ufr[42] = fpiar[15:8];  ufr[43] = fpiar[7:0];
    end else begin
      ufr[1] = 8'h30; o = 0;
    end
    ufr[o + 12] = stag;                                   // STAG
    ufr[o + 16] = cmd1b[15:8]; ufr[o + 17] = cmd1b[7:0];  // CMDREG1B
    ufr[o + 20] = dtag;                                   // DTAG
    ufr[o + 24] = {5'b00000, fe1, 2'b00};                 // E1
    ufr[o + 25] = {3'b001, ft, 4'b0000};                  // U (an unimplemented or unsupported frame), T
    ufr[o + 28] = fptemp[79:72]; ufr[o + 29] = fptemp[71:64];
    for (int i = 0; i < 8; i++) ufr[o + 32 + i] = fptemp[63 - 8 * i -: 8];
    ufr[o + 40] = etemp[79:72]; ufr[o + 41] = etemp[71:64];
    for (int i = 0; i < 8; i++) ufr[o + 44 + i] = etemp[63 - 8 * i -: 8];
  end
  assign alu_early = state == ST_ALU_WAIT && alu_done_u && !store;
  // (MC68060) FINT and FINTRZ: the unit's answer rounded to an integer by
  // m68k_fpu_fint, over some cycles, from the answer in registers
  logic        fint_go, fint_done;
  logic [79:0] fint_x;
  m68k_fpu_fint fint (
    .clk, .reset, .ena(clkena), .start(MC68060 && fint_r && fint_go), .x(fint_x),
    .rm(fint_z ? 2'b01 : fpcr[5:4]), .done(fint_done), .res(fint_u)
  );
  generate
  if (ALU_REG) begin : g_alureg
    logic        d_q;
    logic [79:0] r_q;
    logic [5:0]  e_q;
    always_ff @(posedge clk)
      if (reset) d_q <= 1'b0;
      else if (clkena) begin
        d_q <= alu_done;
        if (alu_done) begin r_q <= alu_res; e_q <= alu_exc; end
      end
    assign fint_go = d_q;
    assign fint_x = r_q;
    assign alu_done_u = (MC68060 && fint_r) ? fint_done : d_q;
    assign alu_res_u = r_q;
    assign alu_exc_u = e_q;
  end else begin : g_alunoreg
    // (the answer and its exceptions kept for FINT's cycles)
    logic [5:0]  e_q;
    always_ff @(posedge clk)
      if (clkena && alu_done) e_q <= alu_exc;
    assign fint_go = alu_done;
    assign fint_x = alu_res;
    assign alu_done_u = (MC68060 && fint_r) ? fint_done : alu_done;
    assign alu_res_u = alu_res;
    assign alu_exc_u = (MC68060 && fint_r) ? e_q : alu_exc;
  end
  endgenerate
  assign br_take = br_r;
  assign ftrap = ftrap_r;
  assign br_target = brt;

  generate
  if (FAST_ALU) begin : g_alu
    m68k_fpu_alu_fast alu (
      .clk, .reset, .ena(clkena), .start(alu_start), .op(alu_op), .rmode(alu_rm),
      .rprec(alu_rp), .to_mem(alu_tomem), .dst(alu_dst), .src(alu_src),
      .busy(alu_busy), .done(alu_done), .result(alu_res), .exc(alu_exc),
      .ires_s, .ires_e, .ires_m, .rres_e, .rres_m
    );
  end else begin : g_alu
    m68k_fpu_alu alu (
      .clk, .reset, .ena(clkena), .start(alu_start), .op(alu_op), .rmode(alu_rm),
      .rprec(alu_rp), .to_mem(alu_tomem), .dst(alu_dst), .src(alu_src),
      .busy(alu_busy), .done(alu_done), .result(alu_res), .exc(alu_exc),
      .ires_s, .ires_e, .ires_m, .rres_e, .rres_m
    );
  end
  endgenerate

  assign pred_true = pred_eval(pred, fpsr[27], fpsr[26], fpsr[24]);

  // the bus cycle of the sequencer
  assign bus_act = state == ST_XFER;
  assign bus_addr = {xa[31:1], 1'b0};
  assign bus_wr = xwr;
  assign xbyte = xa[0] || xn - xi == 7'd1;
  assign bus_uds_n = xbyte && xa[0];
  assign bus_lds_n = xbyte && !xa[0];
  always_comb
    if (xframe && xraw && xsmall) begin
      if (xi == 7'd0)                     bus_wdata = 16'h4130;
      else if (xi < 7'd4 || xi > 7'd51)   bus_wdata = 16'h0000;
      else                                bus_wdata = {xf[xi + 7'd48], xf[xi + 7'd49]};
    end else if (xframe && xraw && xi < 7'd99)
      bus_wdata = {xf[xi], xf[xi + 7'd1]};
    else if (xframe && xi < 7'd99)
      bus_wdata = {ufr[xi], ufr[xi + 7'd1]};
    else if (xi > 7'd11)
      bus_wdata = 16'h0000;                        // not a transfer of buf
    else if (xbyte || xi == 7'd11)
      bus_wdata = {buf_[xi[3:0]], buf_[xi[3:0]]};
    else
      bus_wdata = {buf_[xi[3:0]], buf_[xi[3:0] + 4'd1]};
  // the An of the effective address, or Dn (also the counter of FDBcc)
  assign rd_idx = (state == ST_LIST) ? {1'b0, cw[6:4]} :         // FMOVEM dynamic list
                  (mode == 3'b000 || (opc[8:6] == 3'b001 && mode == 3'b001)) ? {1'b0, reg_} :
                  {1'b1, reg_};

  always_ff @(posedge clk) begin
    logic [5:0]  e;
    logic [6:0]  opm;
    logic        ok;
    logic [7:0]  nb;
    logic [79:0] x;
    logic [31:0] v32;
    logic [63:0] v64;
    logic [2:0]  fpn;
    int          idx;
    logic        isop;
    logic        hit;
    logic [5:0]  xm;
    byte_t       f [100];
    logic [15:0] c1;
    logic [79:0] ix;
    logic        e3;
    logic        lneg;
    logic [79:0] ar;

    if (reset) begin
      done_r <= 1'b0;
      alu_start <= 1'b0;
      wr_en <= 1'b0;
      state <= IDLE;
      fpr_nan <= 8'hFF;
      fpr_we <= 1'b0;
      fpcr <= '0;
      fpsr <= '0;
      fpiar <= '0;
      null_state <= 1'b1;
      unimp_pend <= 1'b0;
      busy_pend <= 1'b0;
      xframe <= 1'b0;
      xrframe <= 1'b0;
      xpend <= 1'b0;
      xraw <= 1'b0;
      xnow <= 1'b0;
      ferr_r <= 1'b0;
    end else if (clkena) begin
      done_r <= 1'b0;
      fpr_we <= 1'b0;
      unimp_r <= 1'b0;
      unsupp_r <= 1'b0;
      ferr_r <= 1'b0;
      xnow <= 1'b0;
      alu_start <= 1'b0;
      wr_en <= 1'b0;
      if (abort_in) begin
        // an access error on one of its bus cycles: the core restores the
        // integer registers and restarts the instruction
        state <= ST_FINISH;
        xframe <= 1'b0;
        xrframe <= 1'b0;
      end else begin
        if ((pred_bsun && pred[4] && fpsr[24]) || set_bsun) begin
          fpsr[15] <= 1'b1;                 // BSUN, and AEXC IOP
          fpsr[7] <= 1'b1;
        end
        if (set_bsun) begin
          // FBcc takes BSUN (the core traps): the exceptional state
          for (int i = 0; i < 100; i++) xf[i] <= 8'h00;
          xf[0] <= 8'h41; xf[1] <= 8'h60;
          xf[40] <= iaddr[31:24]; xf[41] <= iaddr[23:16];
          xf[42] <= iaddr[15:8];  xf[43] <= iaddr[7:0];
          xf[72] <= 8'h04;
          xpend <= 1'b1;
          xsmall <= 1'b1;
          xe3 <= 1'b0;
          xvec_r <= 3'b000;
        end
        case (state)
          IDLE: begin
            br_r <= 1'b0;
            ftrap_r <= 1'b0;
            if (start && xpend && opcode[8:7] != 2'b10) begin
              // a pending exception: this instruction takes it first, a
              // pre-instruction exception (FSAVE and FRESTORE do not). An
              // FMOVE out of the register an E3 exception has to write
              // needs that result first, and the 68040 reports it as a
              // post-instruction exception, T set and no effective
              // address, with this instruction's PC (UM 9.7.4)
              xpost_r <= 1'b0;
              xhere <= 1'b0;
              if (FPSP == 1 && xe3 && opcode[8:6] == 3'b000 && cmd[15:13] == 3'b011 &&
                  cmd[9:7] == {xf[52][1:0], xf[53][7]}) begin
                xpost_r <= 1'b1;
                xhere <= 1'b1;
                xf[73][4] <= 1'b1;
                mode <= 3'b000;           // the format $3 frame gets no address
              end
              xnow <= 1'b1;
              done_r <= 1'b1;
              state <= ST_FINISH;
            end else if (start) begin
              xpost_r <= 1'b0;
              xhere <= 1'b0;
              xst <= 1'b0;
              rfun <= 1'b0;
              opc <= opcode;
              cw <= cmd;
              mode <= opcode[5:3];
              reg_ <= opcode[2:0];
              cls <= cmd[15:13];
              fmt <= cmd[12:10];
              wr_fp <= 1'b0;
              set_cc <= 1'b0;
              store <= 1'b0;
              pk <= 1'b0;
              upost_r <= 1'b0;
              fint_r <= 1'b0;
              {u60, p60} <= MC68060 ? m060_of(opcode, cmd) : 2'b00;
              if (MC68060) addr <= 32'd0;  // (no operand address: 0 in the frame)
              state <= ST_REG;
              if (opcode[8:6] == 3'b000 && cmd[15:13] == 3'b000)
                state <= ST_SRC;          // FPm,FPn: no effective address
            end
          end

          // An or Dn of the effective address is on rd_data now
          ST_REG: begin
            areg <= rd_data;
            // operand size in memory
            if (opc[8:6] == 3'b100 && xpend && xsmall)
              nb = 8'd52;                             // FSAVE, E1 exception frame
            else if (opc[8:6] == 3'b100 && (busy_pend || xpend))
              nb = 8'd100;                            // FSAVE, busy frame
            else if (opc[8:6] == 3'b100 && unimp_pend)
              nb = 8'd52;                             // FSAVE, unimplemented frame
            else if (MC68060 && (opc[8:6] == 3'b100 || opc[8:6] == 3'b101))
              nb = 8'd12;                             // the 68060's frame
            else if (opc[8:6] == 3'b100 || opc[8:6] == 3'b101)
              nb = 8'd4;                              // FSAVE, FRESTORE header
            else if (opc[8:6] == 3'b001)
              nb = 8'd1;                              // FScc byte (FDBcc, FTRAPcc: none)
            else if (cls == 3'b100 || cls == 3'b101)
              nb = 8'd4 * popcount3(cw[12:10]);       // control registers
            else if (cls == 3'b110 || cls == 3'b111) begin
              // static list (mode bit 11 clear), or one in Dn (ST_LIST)
              list <= cw[7:0];
              nb = 8'd12 * popcount8(cw[7:0]);
            end else if (cls == 3'b011 && fmt == 3'b111)
              nb = 8'd12;                             // FMOVE.P, dynamic k-factor
            else
              nb = fmt_bytes(cw[12:10]);
            nbytes <= nb;
            state <= ST_EA;
            if ((cls == 3'b110 || cls == 3'b111) && opc[8:6] == 3'b000 && cw[11])
              state <= ST_LIST;
          end
          ST_LIST: begin
            // FMOVEM with the register list in the low byte of Dn
            list <= rd_data[7:0];
            nbytes <= 8'd12 * popcount8(rd_data[7:0]);
            state <= ST_EA;
          end

          // the operand address, and the register update of (An)+ and -(An)
          ST_EA: begin
            nb = nbytes;
            if (opc[8:6] == 3'b001 && mode == 3'b001) nb = 8'd0;   // FDBcc
            case (mode)
              3'b010: addr <= areg;
              3'b011: begin
                addr <= areg;
                if (reg_ == 3'b111 && nb == 8'd1) nb = 8'd2;
                wr_en <= 1'b1; wr_idx <= {1'b1, reg_};
                wr_size <= 2'b10; wr_data <= areg + {24'd0, nb};
              end
              3'b100: begin
                if (reg_ == 3'b111 && nb == 8'd1) nb = 8'd2;
                addr <= areg - {24'd0, nb};
                wr_en <= 1'b1; wr_idx <= {1'b1, reg_};
                wr_size <= 2'b10; wr_data <= areg - {24'd0, nb};
              end
              default: addr <= ea;
            endcase
            // (MC68060) the M68060SP makes (An)+ and -(An) of what it
            // emulates; FRESTORE makes its (An)+ once the frame is known
            if (MC68060 && (u60 || p60 || opc[8:6] == 3'b101)) wr_en <= 1'b0;
            if (MC68060 && (mode == 3'b000 || mode == 3'b001)) addr <= 32'd0;
            state <= ST_SRC;
          end

          // dispatch on the instruction
          ST_SRC: begin
            null_state <= 1'b0;
            if (MC68060 && (u60 || p60)) begin
              // (MC68060) left to the M68060SP: FPIAR, and the exception
              null_state <= null_state;
              fpiar <= iaddr;
              unimp_r <= u60;
              unsupp_r <= p60;
              done_r <= 1'b1; state <= ST_FINISH;
            end else if (opc[8:6] == 3'b001) begin
              // FScc and FDBcc: the predicate is in the extension word; a
              // signaling predicate on a NaN sets BSUN (and AEXC IOP)
              null_state <= null_state;
              if (cw[4] && fpsr[24]) begin
                fpsr[15] <= 1'b1;
                fpsr[7] <= 1'b1;
              end
              buf_[0] <= pred_eval(cw[5:0], fpsr[27], fpsr[26], fpsr[24]) ? 8'hFF : 8'h00;
              if (cw[4] && fpsr[24] && fpcr[15]) begin
                // BSUN enabled: the pre-instruction exception, before the
                // predicate is used (UM 9.7.1)
                xvec_r <= 3'b000;
                for (int i = 0; i < 100; i++) xf[i] <= 8'h00;
                xf[0] <= 8'h41; xf[1] <= 8'h60;
                xf[40] <= iaddr[31:24]; xf[41] <= iaddr[23:16];
                xf[42] <= iaddr[15:8];  xf[43] <= iaddr[7:0];
                xf[72] <= 8'h04;
                xpend <= 1'b1;
                xsmall <= 1'b1;
                xe3 <= 1'b0;
                xnow <= 1'b1;
                done_r <= 1'b1; state <= ST_FINISH;
              end else if (mode == 3'b111 && reg_[2:1] != 2'b00) begin
                // FTRAPcc: the core takes vector 7 when the predicate is true
                ftrap_r <= pred_eval(cw[5:0], fpsr[27], fpsr[26], fpsr[24]);
                done_r <= 1'b1; state <= ST_FINISH;
              end else if (mode == 3'b001) begin
                // FDBcc: when false, Dn.w - 1, and branch unless it is -1
                if (pred_eval(cw[5:0], fpsr[27], fpsr[26], fpsr[24])) begin
                  done_r <= 1'b1; state <= ST_FINISH;
                end else begin
                  wr_en <= 1'b1; wr_idx <= {1'b0, reg_}; wr_size <= 2'b01;
                  wr_data <= rd_data - 32'd1;
                  if (rd_data[15:0] == 16'h0000) begin
                    done_r <= 1'b1; state <= ST_FINISH;
                  end else begin
                    // the displacement word, relative to its own address
                    xa <= addr; xi <= 7'd0; xn <= 7'd2; xwr <= 1'b0;
                    state <= ST_XFER; ret_state <= ST_DBCC;
                  end
                end
              end else if (mode == 3'b000) begin
                wr_en <= 1'b1; wr_idx <= {1'b0, reg_}; wr_size <= 2'b00;
                wr_data <= pred_eval(cw[5:0], fpsr[27], fpsr[26], fpsr[24]) ? 32'h000000FF : 32'h00000000;
                done_r <= 1'b1; state <= ST_FINISH;
              end else begin
                xa <= addr; xi <= 7'd0; xn <= 7'd1; xwr <= 1'b1;
                state <= ST_XFER; ret_state <= ST_FINISH;
              end
            end else if (MC68060 && opc[8:6] == 3'b100) begin
              // the 68060's FSAVE (UM 6.7): three longs, the pending
              // exception with its operand, then cleared
              null_state <= null_state;
              buf_[0] <= xpend ? xop[79:72] : 8'h00; buf_[1] <= xpend ? xop[71:64] : 8'h00;
              buf_[2] <= null_state ? 8'h00 : xpend ? 8'hE0 : 8'h60;
              buf_[3] <= xpend ? {5'd0, xvec_r} : 8'h00;
              for (int i = 0; i < 8; i++) buf_[4 + i] <= xpend ? xop[63 - 8 * i -: 8] : 8'h00;
              xpend <= 1'b0;
              xa <= addr; xi <= 7'd0; xn <= 7'd12; xwr <= 1'b1;
              state <= ST_XFER; ret_state <= ST_FINISH;
            end else if (MC68060 && opc[8:6] == 3'b101) begin
              xa <= addr; xi <= 7'd0; xn <= 7'd12; xwr <= 1'b0;
              state <= ST_XFER; ret_state <= ST_RESTORE;
            end else if (opc[8:6] == 3'b100) begin
              // FSAVE: a null frame until a non-conditional instruction ran,
              // an idle frame after (68040 UM 9.8)
              buf_[0] <= null_state ? 8'h00 : 8'h41;
              null_state <= null_state;
              buf_[1] <= 8'h00; buf_[2] <= 8'h00; buf_[3] <= 8'h00;
              xa <= addr; xi <= 7'd0; xn <= 7'd4; xwr <= 1'b1;
              // the pending frame is cleared once stored (ST_XFER_DONE)
              if (xpend) begin
                xn <= 7'd100;
                if (xsmall) xn <= 7'd52;
                xframe <= 1'b1;
                xraw <= 1'b1;
              end else if (busy_pend) begin
                xn <= 7'd100;
                xframe <= 1'b1;
              end else if (unimp_pend) begin
                xn <= 7'd52;
                xframe <= 1'b1;
              end
              state <= ST_XFER; ret_state <= ST_FINISH;
            end else if (opc[8:6] == 3'b101) begin
              xa <= addr; xi <= 7'd0; xn <= 7'd4; xwr <= 1'b0;
              state <= ST_XFER; ret_state <= ST_RESTORE;
            end else if (cls == 3'b000 || cls == 3'b010) begin
              opm = cw[6:0];
              ok = 1'b1;
              case (opm)
                7'b0000000, 7'b1000000, 7'b1000100: alu_op <= 4'h0;   // FMOVE
                7'b0011000, 7'b1011000, 7'b1011100: alu_op <= 4'h1;   // FABS
                7'b0011010, 7'b1011010, 7'b1011110: alu_op <= 4'h2;   // FNEG
                7'b0000100, 7'b1000001, 7'b1000101: alu_op <= 4'h3;   // FSQRT
                7'b0100010, 7'b1100010, 7'b1100110: alu_op <= 4'h4;   // FADD
                7'b0101000, 7'b1101000, 7'b1101100: alu_op <= 4'h5;   // FSUB
                7'b0100011, 7'b1100011, 7'b1100111: alu_op <= 4'h6;   // FMUL
                7'b0100000, 7'b1100000, 7'b1100100: alu_op <= 4'h7;   // FDIV
                7'b0111000:                         alu_op <= 4'h8;   // FCMP
                7'b0111010:                         alu_op <= 4'h9;   // FTST
                7'b0100100:                         alu_op <= 4'hB;   // FSGLDIV
                7'b0100111:                         alu_op <= 4'hC;   // FSGLMUL
                7'b0000001, 7'b0000011:                               // FINT, FINTRZ (68060):
                  if (MC68060) begin                                  // a move, then to an integer
                    alu_op <= 4'h0; fint_r <= 1'b1; fint_z <= opm[1];
                  end else
                    ok = 1'b0;
                default:                            ok = 1'b0;
              endcase
              // an operation the 68040 leaves to the FPSP: the source is
              // fetched and converted all the same (ST_UNIMP)
              uop <= !ok;
              isop = ok;
              ok = 1'b1;
              if (cls == 3'b010 && fmt == 3'b111)
                ok = 1'b0;                  // FMOVECR: the core took Line-F
              if (cls == 3'b010 && fmt == 3'b011)
                pk <= 1'b1;                 // packed decimal: an unsupported data type
              if (!ok) begin
                done_r <= 1'b1; state <= ST_FINISH;
              end else begin
                // precision: the FS and FD forms, else FPCR PREC, where the
                // undefined 11 rounds to double as the M68040FPSP does it
                // (round.S ext_grs, add_to_l; util.S denorm)
                if (opm[6]) alu_rp <= opm[2] ? 2'b10 : 2'b01;
                else        alu_rp <= {fpcr[7], fpcr[6] && !fpcr[7]};
                alu_rm <= fpcr[5:4];
                alu_tomem <= 1'b0;
                fpn = cw[9:7];
                alu_dst <= fpr_cd;
                if (opm != 7'b0111000 && opm != 7'b0111010) wr_fp <= 1'b1;
                set_cc <= 1'b1;
                fpiar <= iaddr;
                if (cls == 3'b000) begin
                  alu_src <= fpr_cs;
                  if (isop && FPSP == 0) begin
                    alu_start <= 1'b1;      // the unit starts now (no ST_ALU)
                    state <= ST_ALU_WAIT;
                  end else
                    state <= ST_ALU;
                end else if (mode == 3'b000) begin
                  // Dn: B W L S
                  case (fmt)
                    3'b000:  alu_src <= int_to_x(rd_data);
                    3'b001:  alu_src <= sgl_to_x(rd_data);
                    3'b100:  alu_src <= int_to_x({{16{rd_data[15]}}, rd_data[15:0]});
                    3'b110:  alu_src <= int_to_x({{24{rd_data[7]}}, rd_data[7:0]});
                    default: ok = 1'b0;
                  endcase
                  if (ok) state <= ST_ALU;
                  else begin done_r <= 1'b1; state <= ST_FINISH; end
                end else begin
                  xa <= addr; xi <= 7'd0; xn <= nbytes[6:0]; xwr <= 1'b0;
                  state <= ST_XFER; ret_state <= ST_ALU;
                end
              end
            end else if (cls == 3'b011) begin
              // FMOVE FPn,<ea>
              fpn = cw[9:7];
              alu_src <= fpr_cd;
              alu_dst <= fpr_cd;
              alu_rm <= fpcr[5:4];
              alu_tomem <= 1'b1;
              store <= 1'b1;
              fpiar <= iaddr;
              if (FPSP == 1 && unsup_of(fpr_cd) && fmt != 3'b011 && fmt != 3'b111) begin
                // FMOVE out of a denormalized or unnormalized register: the
                // post-instruction unsupported data type exception, nothing
                // written (ETEMP and FPTEMP the register, as WinUAE has it)
                etemp <= fpr_cd;
                stag <= tag_of(fpr_cd);
                fptemp <= fpr_cd;
                dtag <= tag_of(fpr_cd);
                cmd1b <= cw;
                fe1 <= 1'b0; ft <= 1'b1;
                busy_pend <= 1'b1; unimp_pend <= 1'b0;
                unsupp_r <= 1'b1; upost_r <= 1'b1;
                done_r <= 1'b1; state <= ST_FINISH;
              end else
                case (fmt)
                  3'b000: begin alu_op <= 4'hA; alu_rp <= 2'b10; state <= ST_ALU; end
                  3'b100: begin alu_op <= 4'hA; alu_rp <= 2'b01; state <= ST_ALU; end
                  3'b110: begin alu_op <= 4'hA; alu_rp <= 2'b00; state <= ST_ALU; end
                  3'b001: begin alu_op <= 4'h0; alu_rp <= 2'b01; state <= ST_ALU; end
                  3'b101: begin alu_op <= 4'h0; alu_rp <= 2'b10; state <= ST_ALU; end
                  3'b011, 3'b111: begin
                    // packed decimal: the post-instruction unsupported data
                    // type exception, the FPSP converts and stores it
                    etemp <= fpr_cd;
                    stag <= tag_of(fpr_cd);
                    dtag <= 8'h00;
                    fptemp <= '0;
                    cmd1b <= cw;
                    fe1 <= 1'b1; ft <= 1'b1;
                    busy_pend <= 1'b1; unimp_pend <= 1'b0;
                    unsupp_r <= 1'b1; upost_r <= 1'b1;
                    done_r <= 1'b1; state <= ST_FINISH;
                  end
                  3'b010: begin
                    // extended: through the unit as a move, which keeps the
                    // value (a denormal as it is, with UNFL, the FPSP's result
                    // for it) and quiets an SNaN with SNAN set (UM 9.7.2.1)
                    alu_op <= 4'h0; alu_rp <= 2'b00; state <= ST_ALU;
                  end
                  default: begin done_r <= 1'b1; state <= ST_FINISH; end
                endcase
            end else if (cls == 3'b100) begin
              // FMOVE(M) <ea>,FPCR/FPSR/FPIAR
              if (mode == 3'b000 || mode == 3'b001) begin
                for (int i = 0; i < 4; i++) buf_[i] <= rd_data[31 - 8 * i -: 8];
                state <= ST_XFER_DONE; ret_state <= ST_CTRL;
              end else begin
                xa <= addr; xi <= 7'd0; xn <= nbytes[6:0]; xwr <= 1'b0;
                state <= ST_XFER; ret_state <= ST_CTRL;
              end
            end else if (cls == 3'b101) begin
              // FMOVE(M) FPCR/FPSR/FPIAR,<ea>: in that order in memory
              idx = 0;
              if (cw[12]) begin
                buf_[0] <= 8'h00; buf_[1] <= 8'h00; buf_[2] <= fpcr[15:8]; buf_[3] <= fpcr[7:0];
                idx = 4;
              end
              if (cw[11]) begin
                for (int i = 0; i < 4; i++) buf_[idx + i] <= fpsr[31 - 8 * i -: 8];
                idx = idx + 4;
              end
              if (cw[10])
                for (int i = 0; i < 4; i++) buf_[idx + i] <= fpiar[31 - 8 * i -: 8];
              if (mode == 3'b000 || mode == 3'b001) begin
                // one register to Dn or An
                if (cw[12])      v32 = {16'h0000, fpcr};
                else if (cw[11]) v32 = fpsr;
                else             v32 = fpiar;
                wr_en <= 1'b1; wr_size <= 2'b10; wr_data <= v32;
                wr_idx <= {mode == 3'b001, reg_};
                done_r <= 1'b1;
                state <= ST_FINISH;
              end else begin
                xa <= addr; xi <= 7'd0; xn <= nbytes[6:0]; xwr <= 1'b1;
                state <= ST_XFER; ret_state <= ST_FINISH;
              end
            end else if (cls == 3'b110 || cls == 3'b111) begin
              // FMOVEM data registers, 12 bytes each, FP0 at the lowest address
              li <= 4'd0;
              mptr <= addr;
              state <= ST_MOVEM;
            end else begin
              done_r <= 1'b1; state <= ST_FINISH;
            end
          end

          // one bus cycle a clock: a word, or a byte for an odd address or
          // the last byte
          ST_XFER: begin
            if (xrframe) begin
              // FRESTORE of a busy frame: all of it (an exceptional state
              // comes back as it was saved), and the fields it needs
              xf[xi + 7'(xro)] <= data_in[15:8];
              xf[xi + 7'(xro) + 7'd1] <= data_in[7:0];
              case (xi + 7'(xro))
                7'd8:  cusave <= data_in[15:8];
                7'd64: cmd1b <= data_in;
                7'd72: begin re1 <= data_in[10]; re3 <= data_in[9]; ru <= data_in[5]; end
                7'd76: fptemp[79:64] <= data_in;
                7'd80: fptemp[63:48] <= data_in;
                7'd82: fptemp[47:32] <= data_in;
                7'd84: fptemp[31:16] <= data_in;
                7'd86: fptemp[15:0] <= data_in;
                7'd88: etemp[79:64] <= data_in;
                7'd92: etemp[63:48] <= data_in;
                7'd94: etemp[47:32] <= data_in;
                7'd96: etemp[31:16] <= data_in;
                7'd98: etemp[15:0] <= data_in;
                default: ;
              endcase
            end else if (!xwr && xi < 7'd12) begin
              if (xbyte) begin
                if (xa[0]) buf_[xi[3:0]] <= data_in[7:0];
                else       buf_[xi[3:0]] <= data_in[15:8];
              end else begin
                buf_[xi[3:0]] <= data_in[15:8];
                buf_[xi[3:0] + 4'd1] <= data_in[7:0];
              end
            end
            if (xbyte) begin
              xa <= xa + 32'd1;
              if (xi + 7'd1 >= xn) state <= ST_XFER_DONE; else xi <= xi + 7'd1;
            end else begin
              xa <= xa + 32'd2;
              if (xi + 7'd2 >= xn) state <= ST_XFER_DONE; else xi <= xi + 7'd2;
            end
          end
          ST_XFER_DONE: begin
            xframe <= 1'b0;
            xrframe <= 1'b0;
            if (xframe) begin
              busy_pend <= 1'b0;
              unimp_pend <= 1'b0;
              xpend <= 1'b0;
              xraw <= 1'b0;
            end
            state <= ret_state;
            if (ret_state == ST_ALU && !store && !uop && !pk && FPSP == 0) begin
              alu_start <= 1'b1;            // with the converted source below
              state <= ST_ALU_WAIT;
            end
            if ((ret_state == ST_ALU || ret_state == ST_UNIMP) && !store) begin
              // convert the memory or immediate source
              case (fmt)
                3'b000:  alu_src <= int_to_x(buf_long(buf_, 0));
                3'b001:  alu_src <= sgl_to_x(buf_long(buf_, 0));
                3'b100:  alu_src <= int_to_x({{16{buf_[0][7]}}, buf_[0], buf_[1]});
                3'b110:  alu_src <= int_to_x({{24{buf_[0][7]}}, buf_[0]});
                3'b101:  alu_src <= dbl_to_x({buf_long(buf_, 0), buf_long(buf_, 4)});
                default: alu_src <= {buf_[0], buf_[1], buf_long(buf_, 4), buf_long(buf_, 8)};
              endcase
            end else if (ret_state == ST_FINISH) begin
              done_r <= 1'b1;
              xnow <= xst;
            end
          end

          ST_ALU: begin
            isop = alu_op == 4'h4 || alu_op == 4'h5 || alu_op == 4'h6 || alu_op == 4'h7 ||
                   alu_op == 4'h8 || alu_op == 4'hB || alu_op == 4'hC;     // dyadic
            if (uop)
              state <= ST_UNIMP;
            else if (pk)
              state <= ST_UNSUPP;
            else if (FPSP == 1 && !rfun &&
                     ((unsup_of(alu_src) && (cls == 3'b000 || fmt == 3'b001 || fmt == 3'b101 || fmt == 3'b010)) ||
                      (isop && unsup_of(alu_dst)))) begin
              // (an integer source is converted unnormalized on purpose)
              // a denormalized or unnormalized operand: the pre-instruction
              // unsupported data type exception (UM 9.6.2), the operands as
              // they are in ETEMP and FPTEMP (a single or double denormal in
              // the form of figure 9-9, tag $A0)
              etemp <= alu_src;
              stag <= tag_of(alu_src);
              if (unsup_of(alu_src) && cls == 3'b010 && (fmt == 3'b001 || fmt == 3'b101))
                stag <= 8'hA0;
              if (isop) begin
                fptemp <= alu_dst;
                dtag <= tag_of(alu_dst);
              end else begin
                fptemp <= '0;
                dtag <= 8'h00;
              end
              if (cw[6:0] == 7'b0000100) cmd1b <= {cw[15:7], 7'b0000101};
              else                       cmd1b <= cw;
              fe1 <= 1'b0; ft <= 1'b0;
              busy_pend <= 1'b1; unimp_pend <= 1'b0;
              unsupp_r <= 1'b1;
              done_r <= 1'b1;
              state <= ST_FINISH;
            end else begin
              alu_start <= 1'b1;
              state <= ST_ALU_WAIT;
            end
          end
          ST_UNIMP: begin
            // keep what the FPSP needs and report the exception
            x = fpr_cd;
            dtag <= tag_of(x);
            cmd1b <= cw;
            ft <= 1'b0;
            if (pk) begin
              // a packed source: E1 set, bits 95-64 in FPTEMP, 63-0 in ETEMP
              etemp <= {16'h0000, buf_long(buf_, 4), buf_long(buf_, 8)};
              fptemp <= {48'h000000000000, buf_long(buf_, 0)};
              stag <= 8'h00;
              fe1 <= 1'b1;
            end else begin
              etemp <= alu_src;
              fptemp <= x;
              stag <= tag_of(alu_src);
              if (unsup_of(alu_src) && cls == 3'b010 && (fmt == 3'b001 || fmt == 3'b101))
                stag <= 8'hA0;              // a single or double denormal
              fe1 <= 1'b0;
            end
            unimp_pend <= 1'b1;
            busy_pend <= 1'b0;
            unimp_r <= 1'b1;
            done_r <= 1'b1;
            state <= ST_FINISH;
          end
          ST_UNSUPP: begin
            // packed decimal source of an operation the unit has: the
            // pre-instruction unsupported data type exception (UM 9.6.2,
            // table 9-16); FSQRT goes in CMDREG1B as $05 (UM 9.8)
            x = fpr_cd;
            dtag <= tag_of(x);
            stag <= 8'h00;
            etemp <= {16'h0000, buf_long(buf_, 4), buf_long(buf_, 8)};
            fptemp <= {48'h000000000000, buf_long(buf_, 0)};
            if (cw[6:0] == 7'b0000100) cmd1b <= {cw[15:7], 7'b0000101};
            else                       cmd1b <= cw;
            fe1 <= 1'b1; ft <= 1'b0;
            busy_pend <= 1'b1; unimp_pend <= 1'b0;
            unsupp_r <= 1'b1;
            done_r <= 1'b1;
            state <= ST_FINISH;
          end
          ST_ALU_WAIT:
            if (alu_done_u) begin
              e = alu_exc_u;
              ar = alu_res_u;
              if (MC68060 && fint_r) begin
                // FINT, FINTRZ: the moved source to an integer (no UNFL, OVFL)
                {lneg, ar} = fint_u;
                e[0] = e[0] | lneg;
                e[3] = 1'b0; e[2] = 1'b0;
              end
              // FMOVE to an integer of the largest negative integer: an
              // operand error on the 68040 (the "erroneous MC68040
              // condition" of UM 9.7.3.2), which the FPSP corrects
              lneg = 1'b0;
              if (FPSP == 1 && store && alu_op == 4'hA && alu_src[79] && !e[5] && !e[4])
                case (alu_rp)
                  2'b00:   lneg = alu_res_u[7:0] == 8'h80;
                  2'b01:   lneg = alu_res_u[15:0] == 16'h8000;
                  default: lneg = alu_res_u[31:0] == 32'h80000000;
                endcase
              // EXC: BSUN SNAN OPERR OVFL UNFL DZ INEX2 INEX1
              fpsr[15:8] <= {1'b0, e[5], e[4], e[3], e[2], e[1], e[0], 1'b0};
              // AEXC: IOP OVFL UNFL DZ INEX (68040 UM 9.2.3.4); the 68040
              // leaves AINEX clear on an overflow (x_ovfl of the FPSP sets it)
              fpsr[7] <= fpsr[7] | e[5] | e[4];
              fpsr[6] <= fpsr[6] | e[3];
              fpsr[5] <= fpsr[5] | (e[2] & e[0]);
              fpsr[4] <= fpsr[4] | e[1];
              if (FPSP == 0 || !e[3])
                fpsr[3] <= fpsr[3] | e[0] | e[3];
              // it traps as an operand error, with no bit in the FPSR (the
              // FPSP sets OPERR itself for a true one, x_operr)
              if (lneg) e[4] = 1'b1;
              if (set_cc) begin
                // condition codes N Z I NAN of the result
                x = ar;
                fpsr[27] <= x[79];
                fpsr[26] <= 1'b0; fpsr[25] <= 1'b0; fpsr[24] <= 1'b0;
                if (x[78:64] == 15'h7FFF) begin
                  if (x[62:0] == 63'd0) fpsr[25] <= 1'b1; else fpsr[24] <= 1'b1;
                end else if (x[63:0] == 64'd0)
                  fpsr[26] <= 1'b1;
              end
              // an enabled exception: the busy frame, and the destination
              // register kept for OPERR, OVFL, UNFL and DZ; FMOVE out writes
              // its destination and traps at once
              hit = (e[5] & fpcr[14]) | (e[4] & fpcr[13]) | (e[3] & fpcr[12]) |
                    (e[2] & fpcr[11]) | (e[1] & fpcr[10]) | (e[0] & fpcr[9]);
              if (FPSP == 1) begin
                // the nonmaskable ones: OVFL, UNFL, and SNAN and OPERR of
                // FMOVE to an integer
                hit = hit | e[3] | e[2];
                if (store && alu_op == 4'hA) hit = hit | e[5] | e[4];
              end
              if (wr_fp && (!hit || !(e[4] | e[3] | e[2] | e[1])))
                begin fpr_we <= 1'b1; fpr_wa <= cw[9:7]; fpr_wd <= ar; fpr_nan[cw[9:7]] <= 1'b0; end
              if (hit) begin
                // the vector the 68040 takes: OVFL and UNFL always, SNAN and
                // OPERR always for FMOVE out (UM 9.7.2.2, 9.7.3.2)
                xm = {e[5] & (fpcr[14] | store), e[4] & (fpcr[13] | store), e[3], e[2],
                      e[1] & fpcr[10], e[0] & fpcr[9]};
                xvec_r <= xvec_of(xm);
                c1 = cw;
                if (cw[6:0] == 7'b0000100) c1[6:0] = 7'b0000101;   // FSQRT (UM 9.8)
                e3 = !store && !e[5] && !e[4] && !e[1] &&
                     (alu_op == 4'h3 || alu_op == 4'h4 || alu_op == 4'h5 || alu_op == 4'h6 ||
                      alu_op == 4'h7 || alu_op == 4'hB || alu_op == 4'hC);
                for (int i = 0; i < 100; i++) f[i] = 8'h00;
                f[0] = 8'h41; f[1] = 8'h60;
                f[40] = fpiar[31:24]; f[41] = fpiar[23:16];        // FPIARCU
                f[42] = fpiar[15:8];  f[43] = fpiar[7:0];
                f[64] = c1[15:8]; f[65] = c1[7:0];                  // CMDREG1B
                // ETEMP and FPTEMP: the source (quieted for FMOVE out, as
                // WinUAE has it) and the destination of a dyadic operation
                ix = alu_src;
                if (store && tag_of(alu_src) == 8'h60) ix[62] = 1'b1;
                f[60] = tag_of(alu_src);
                f[88] = ix[79:72]; f[89] = ix[71:64];
                for (int i = 0; i < 8; i++) f[92 + i] = ix[63 - 8 * i -: 8];
                if (!store && (alu_op == 4'h4 || alu_op == 4'h5 || alu_op == 4'h6 || alu_op == 4'h7 ||
                               alu_op == 4'h8 || alu_op == 4'hB || alu_op == 4'hC)) begin
                  ix = alu_dst;
                  f[68] = tag_of(alu_dst);
                  f[76] = ix[79:72]; f[77] = ix[71:64];
                  for (int i = 0; i < 8; i++) f[80 + i] = ix[63 - 8 * i -: 8];
                end
                // the intermediate result: before rounding for UNFL, rounded
                // to the precision for OVFL and INEX2
                if (e[2]) ix = ires_x(ires_s, ires_e, ires_m);
                else      ix = ires_x(ires_s, rres_e, rres_m);
                if (e3) begin
                  f[72] = 8'h02;                                    // E3
                  v32 = {16'h0000, cmd3b_of(c1)};
                  f[52] = v32[15:8]; f[53] = v32[7:0];              // CMDREG3B
                  f[24] = ix[79:72]; f[25] = ix[71:64];             // WBTEMP
                  for (int i = 0; i < 8; i++) f[28 + i] = ix[63 - 8 * i -: 8];
                  // guard and round with STAG, sticky; WBTE15 for UNFL
                  f[60][1] = ires_m[2]; f[60][0] = ires_m[1];
                  f[61][7] = ires_m[0];
                  if (e[2]) f[69] = 8'h10;
                  xsmall <= 1'b0;
                  xe3 <= 1'b1;
                end else begin
                  f[72] = 8'h04;                                    // E1
                  f[57] = {4'b0000, e[5], e[4], e[3], e[2]};        // NMCEXC
                  // GRS 1, and for SNAN 7 with WBTE15, also for UNFL of
                  // FMOVE out (WinUAE's frames, from the hardware)
                  f[61][7] = 1'b1;
                  if (e[5]) begin
                    f[60][1] = 1'b1; f[60][0] = 1'b1;
                    f[69] = 8'h10;
                  end else if (store && e[2])
                    f[69] = 8'h10;
                  xsmall <= 1'b1;
                  xe3 <= 1'b0;
                  if (e[3] || e[2]) begin
                    // the intermediate result in FPTEMP; in ETEMP too for
                    // FMOVE, FABS and FNEG (FMOVE out keeps the source)
                    f[68] = 8'h00;
                    f[76] = ix[79:72]; f[77] = ix[71:64];
                    for (int i = 0; i < 8; i++) f[80 + i] = ix[63 - 8 * i -: 8];
                    if (!store) begin
                      f[60][7:5] = 3'b000;
                      f[88] = ix[79:72]; f[89] = ix[71:64];
                      for (int i = 0; i < 8; i++) f[92 + i] = ix[63 - 8 * i -: 8];
                    end
                  end else if (lneg) begin
                    // the rounded integer, sign-extended, as x_operr checks
                    // it (check_upper)
                    f[68] = 8'h00;
                    f[76] = 8'hC0; f[77] = 8'h00;
                    f[80] = 8'hFF; f[81] = 8'hFF; f[82] = 8'hFF; f[83] = 8'hFF;
                    v32 = alu_res_u[31:0];
                    if (alu_rp == 2'b00) v32 = 32'hFFFFFF80;
                    else if (alu_rp == 2'b01) v32 = 32'hFFFF8000;
                    f[84] = v32[31:24]; f[85] = v32[23:16];
                    f[86] = v32[15:8];  f[87] = v32[7:0];
                  end else if (store && e[4] && alu_op == 4'hA) begin
                    // an integer out of range: FPTEMP the largest exponent,
                    // so that the FPSP stores the largest integer of the sign
                    f[68] = 8'h00;
                    f[76] = {alu_src[79], 7'b1111111}; f[77] = 8'hFF;
                    for (int i = 0; i < 8; i++) f[80 + i] = 8'h00;
                  end
                end
                if (store) begin
                  f[73] = 8'h10;                                    // T
                  xst <= 1'b1;
                  xpost_r <= 1'b1;
                end
                xf <= f;
                xpend <= 1'b1;
                // (MC68060) the operand of the EXCP frame: the source, the
                // intermediate result for OVFL and UNFL (UM 6.7)
                xop <= (e[3] || e[2]) ? ix : alu_src;
              end
              if (store) state <= ST_STORE;
              else       state <= ST_FINISH;     // done was given by alu_early
            end

          // FMOVE FPn,<ea>: the converted result to Dn or memory
          ST_STORE: begin
            x = alu_res_u;
            if (fmt == 3'b001) v32 = x_to_sgl(x);
            else               v32 = x[31:0];
            if (fmt == 3'b010) begin
              buf_[0] <= x[79:72]; buf_[1] <= x[71:64];
              buf_[2] <= 8'h00; buf_[3] <= 8'h00;
              for (int i = 0; i < 8; i++) buf_[4 + i] <= x[63 - 8 * i -: 8];
            end else if (fmt == 3'b101) begin
              v64 = x_to_dbl(x);
              for (int i = 0; i < 8; i++) buf_[i] <= v64[63 - 8 * i -: 8];
            end else if (fmt == 3'b100) begin
              buf_[0] <= v32[15:8]; buf_[1] <= v32[7:0];
            end else if (fmt == 3'b110)
              buf_[0] <= v32[7:0];
            else
              for (int i = 0; i < 4; i++) buf_[i] <= v32[31 - 8 * i -: 8];
            if (mode == 3'b000) begin
              wr_en <= 1'b1; wr_idx <= {1'b0, reg_}; wr_data <= v32;
              case (fmt)
                3'b110:  wr_size <= 2'b00;
                3'b100:  wr_size <= 2'b01;
                default: wr_size <= 2'b10;
              endcase
              done_r <= 1'b1;
              xnow <= xst;                  // FMOVE out: the post-instruction exception
              state <= ST_FINISH;
            end else begin
              xa <= addr; xi <= 7'd0; xn <= nbytes[6:0]; xwr <= 1'b1;
              state <= ST_XFER; ret_state <= ST_FINISH;
            end
          end

          // FMOVE(M) to the control registers, from buf in FPCR FPSR FPIAR order
          ST_CTRL: begin
            idx = 0;
            if (cw[12]) begin
              fpcr <= {buf_[2], buf_[3]};
              fpcr[3:0] <= 4'b0000;
              idx = 4;
            end
            if (cw[11]) begin
              fpsr <= buf_long(buf_, idx);
              idx = idx + 4;
            end
            if (cw[10]) fpiar <= buf_long(buf_, idx);
            done_r <= 1'b1;
            state <= ST_FINISH;
          end

          // FMOVEM data registers, one register a pass through the sequencer,
          // in ascending order of register and address. In the control and
          // postincrement modes FP0 is list bit 7; in the predecrement mode
          // FP0 is bit 0, and ST_EA has put addr at the bottom of the block.
          ST_MOVEM:
            if (li == 4'd8) begin
              done_r <= 1'b1;
              state <= ST_FINISH;
            end else begin
              if ((cw[12] && list[3'd7 - li[2:0]]) || (!cw[12] && list[li[2:0]])) begin
                x = fpr_cl;
                buf_[0] <= x[79:72]; buf_[1] <= x[71:64];
                buf_[2] <= 8'h00; buf_[3] <= 8'h00;
                for (int i = 0; i < 8; i++) buf_[4 + i] <= x[63 - 8 * i -: 8];
                xwr <= cw[13];
                xa <= mptr; xi <= 7'd0; xn <= 7'd12;
                mptr <= mptr + 32'd12;
                state <= ST_XFER; ret_state <= ST_MOVEM_W;
              end else
                li <= li + 4'd1;
            end
          ST_MOVEM_W: begin
            if (!cw[13])
              begin fpr_we <= 1'b1; fpr_wa <= li[2:0]; fpr_wd <= {buf_[0], buf_[1], buf_long(buf_, 4), buf_long(buf_, 8)}; fpr_nan[li[2:0]] <= 1'b0; end
            li <= li + 4'd1;
            state <= ST_MOVEM;
          end

          ST_DBCC: begin
            br_r <= 1'b1;
            brt <= addr + {{16{buf_[0][7]}}, buf_[0], buf_[1]};
            done_r <= 1'b1;
            state <= ST_FINISH;
          end

          ST_RESTORE: if (MC68060) begin
            // the 68060's frame (UM 6.7): null, idle, or an exception
            // pending again; any other is a format error, nothing done
            if (buf_[2] == 8'h00 || buf_[2] == 8'h60 || buf_[2] == 8'hE0) begin
              if (mode == 3'b011) begin
                wr_en <= 1'b1; wr_idx <= {1'b1, reg_}; wr_size <= 2'b10; wr_data <= areg + 32'd12;
              end
              xpend <= buf_[2] == 8'hE0;
              xvec_r <= buf_[3][2:0];
              xop <= {buf_[0], buf_[1], buf_long(buf_, 4), buf_long(buf_, 8)};
              xe3 <= 1'b0;
              null_state <= buf_[2] == 8'h00;
              if (buf_[2] == 8'h00) begin
                fpr_nan <= 8'hFF;
                fpcr <= '0; fpsr <= '0; fpiar <= '0;
              end
            end else
              ferr_r <= 1'b1;
            done_r <= 1'b1;
            state <= ST_FINISH;
          end else begin
            // FRESTORE: a null frame resets the FPU; a busy frame is read
            // (ST_RESTORE_B); other frames are skipped
            if (mode == 3'b011 && buf_[1] != 8'h00) begin
              // (An)+ skips the rest of a longer frame
              wr_en <= 1'b1; wr_idx <= {1'b1, reg_}; wr_size <= 2'b10;
              wr_data <= areg + 32'd4 + {24'd0, buf_[1]};
            end
            unimp_pend <= 1'b0;
            busy_pend <= 1'b0;
            xpend <= 1'b0;
            cusave <= 8'h00; re1 <= 1'b0; re3 <= 1'b0; ru <= 1'b0;
            xf[0] <= buf_[0]; xf[1] <= buf_[1]; xf[2] <= buf_[2]; xf[3] <= buf_[3];
            if (buf_[0] == 8'h00) begin
              fpr_nan <= 8'hFF;
              fpcr <= '0;
              fpsr <= '0;
              fpiar <= '0;
              null_state <= 1'b1;
              done_r <= 1'b1;
              state <= ST_FINISH;
            end else if (buf_[1] == 8'h60) begin
              null_state <= 1'b0;
              xa <= addr + 32'd4; xi <= 7'd4; xn <= 7'd100; xwr <= 1'b0;
              xrframe <= 1'b1; xro <= 6'd0; xsmall <= 1'b0;
              state <= ST_XFER; ret_state <= ST_RESTORE_B;
            end else if (buf_[1] == 8'h30) begin
              // the 26-word frame: an E1 exception comes back from it
              null_state <= 1'b0;
              xa <= addr + 32'd4; xi <= 7'd4; xn <= 7'd52; xwr <= 1'b0;
              xrframe <= 1'b1; xro <= 6'd48; xsmall <= 1'b1;
              state <= ST_XFER; ret_state <= ST_RESTORE_B;
            end else begin
              null_state <= 1'b0;
              done_r <= 1'b1;
              state <= ST_FINISH;
            end
          end
          ST_RESTORE_B: begin
            // a busy frame the FPSP left for the 68040 to complete (res_func:
            // CU_SAVEPC $FE, E1 clear): run the command word on ETEMP and
            // FPTEMP, the result to its FPn
            opm = cmd1b[6:0];
            e = {1'b0, op_of(opm)};
            if ((re1 || re3) && !ru) begin
              // an exceptional state (U clear): pending again, with the vector
              // the 68040 derives from it (gen_except of the FPSP: NMCEXC for
              // E1, the FPSR for E3, else INEX)
              if (re3)
                xm = {2'b00, fpsr[12], fpsr[11], fpsr[10] & fpcr[10],
                      (fpsr[9] | fpsr[8]) & (fpcr[9] | fpcr[8])};
              else
                xm = {xf[57][3] | (fpsr[14] & fpcr[14]), xf[57][2] | (fpsr[13] & fpcr[13]),
                      xf[57][1] | (fpsr[12] & fpcr[12]), xf[57][0] | (fpsr[11] & fpcr[11]),
                      fpsr[10] & fpcr[10], (fpsr[9] | fpsr[8]) & (fpcr[9] | fpcr[8])};
              xvec_r <= xvec_of(xm);
              xe3 <= re3;
              if (re1 && !re3 && fpsr[15] && fpcr[15])
                xvec_r <= 3'b000;           // BSUN
              xpend <= 1'b1;
              done_r <= 1'b1;
              state <= ST_FINISH;
            end else if (!xsmall && cusave == 8'hFE && !re1 && !re3 && e[4]) begin
              alu_op <= e[3:0];
              cw <= cmd1b;
              if (opm[6]) alu_rp <= opm[2] ? 2'b10 : 2'b01;
              else        alu_rp <= {fpcr[7], fpcr[6] && !fpcr[7]};   // 11: double
              alu_rm <= fpcr[5:4];
              alu_tomem <= 1'b0;
              alu_src <= frame_x(etemp, xf[60][4]);
              alu_dst <= frame_x(fptemp, xf[68][4]);
              if (opm != 7'b0111000 && opm != 7'b0111010) wr_fp <= 1'b1;
              set_cc <= 1'b1;
              uop <= 1'b0;
              pk <= 1'b0;
              rfun <= 1'b1;
              state <= ST_ALU;
            end else begin
              done_r <= 1'b1;
              state <= ST_FINISH;
            end
          end

          ST_FINISH:
            state <= IDLE;

          default:
            state <= IDLE;
        endcase
      end
    end
  end

endmodule
