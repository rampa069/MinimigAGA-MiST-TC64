// SPDX-License-Identifier: LGPL-3.0-or-later
// Types shared by the stages of the pipelined 68k core (docs/architecture.md).

package m68k_pkg;

  // Operand size
  typedef enum logic [1:0] {SZ_B = 2'd0, SZ_W = 2'd1, SZ_L = 2'd2} size_e;

  // Register index: 0-7 D0-D7, 8-15 A0-A7 (A7 = the active stack pointer),
  // 16-18 the temporaries of multi-uop instructions and exception entry,
  // 19-21 the stack pointers that are not A7 now (written only by
  // serialising uops, which save A7 into its own one when S or M changes),
  // 22-25 more temporaries
  localparam int NREGS = 26;
  localparam logic [4:0] R_A7  = 5'd15;
  localparam logic [4:0] R_T0  = 5'd16;
  localparam logic [4:0] R_T1  = 5'd17;
  localparam logic [4:0] R_T2  = 5'd18;
  localparam logic [4:0] R_USP = 5'd19;
  localparam logic [4:0] R_ISP = 5'd20;
  localparam logic [4:0] R_MSP = 5'd21;
  localparam logic [4:0] R_T3  = 5'd22;   // T3-T6: MOVE16's line


  // SR bits that exist on the 68040: T1 T0 S M, I2-I0, X N Z V C
  localparam logic [15:0] SR_MASK = 16'hF71F;

  // How the EA base register changes
  typedef enum logic [1:0] {EAM_PLAIN, EAM_POSTINC, EAM_PREDEC} ea_mode_e;

  // ALU operand sources
  typedef enum logic [2:0] {
    OP_NONE, OP_REG, OP_IMM, OP_MEM, OP_EA, OP_SR,
    OP_CCR,     // the CCR alone (MOVE from CCR)
    OP_CTRL     // the MOVEC control register imm[11:0]
  } opsel_e;

  // ALU operations: res = f(a, b), with b the destination operand of
  // "dst op= src" instructions and a the source
  typedef enum logic [5:0] {
    ALU_MOVE,   // a
    ALU_ADD,    // b + a
    ALU_SUB,    // b - a (SUB, CMP)
    ALU_AND, ALU_OR, ALU_EOR,
    ALU_NEG,    // 0 - b
    ALU_NOT,    // ~b
    ALU_EXTW, ALU_EXTL, ALU_EXTBL,  // sign extensions of b
    ALU_SWAP,   // halves of b
    ALU_SCC,    // cond ? all ones : 0
    ALU_DBCC,   // cond ? b : b - 1 (word)
    ALU_BTST, ALU_BCHG, ALU_BCLR, ALU_BSET,  // bit a of b
    ALU_ENTER,  // exception entry SR from a: S set, T cleared
    ALU_FRAME,  // b + the size of the frame whose format word is a (RTE)
    ALU_ASL, ALU_ASR, ALU_LSL, ALU_LSR,     // b shifted by a (modulo 64)
    ALU_ROL, ALU_ROR, ALU_ROXL, ALU_ROXR,
    ALU_ADDX,   // b + a + X
    ALU_SUBX,   // b - a - X
    ALU_NEGX,   // 0 - b - X
    ALU_TAS,    // b with bit 7 set, flags of b
    ALU_CHK,    // b (Dn), against the bound a
    ALU_MULU, ALU_MULS,     // b * a, words to a long
    ALU_MULUL, ALU_MULSL,   // b * a, longs; the high long into MDHI (md64)
    ALU_DIVU, ALU_DIVS,     // b / a, word divisor: remainder:quotient
    ALU_DIVUL, ALU_DIVSL,   // b (MDHI:b with md64) / a: quotient, remainder into MDHI
    ALU_SETHI,  // MDHI = a (the high long of a 64-bit dividend)
    ALU_MDHI,   // MDHI, or a after a division that overflowed
    ALU_ABCD,   // b + a + X, decimal (TG68K.C's algorithm, invalid digits included)
    ALU_SBCD,   // b - a - X, decimal
    ALU_NBCD,   // 0 - b - X, decimal
    ALU_PACK,   // the low digits of the bytes of a + imm
    ALU_UNPK,   // the digits of byte a in the low digits of two bytes, + imm
    ALU_INSB,   // b with byte imm[1:0] (0 the lowest) set to a[7:0] (MOVEP)
    ALU_EXTRB,  // byte imm[1:0] of b (MOVEP)
    // bit fields (cond = {in a register, the operation}): the offset (b)
    // and the BFINS source (a) into BF_OFF and BF_INS; the address of the
    // first byte (EA + offset / 8); the five bytes there into BF_DATA; the
    // operation (a the width); byte imm of the new bytes, stored only when
    // the field covers it
    ALU_BFSETUP, ALU_BFADDR, ALU_BFLD0, ALU_BFLD1, ALU_BFOP, ALU_BFST,
    // CAS, CAS2: compare b (memory) with a (Dc), keeping whether they are
    // equal (cond[0]: the second compare of CAS2); Dc (b) or the memory
    // operand (a); a (Du), stored only when the compares were equal
    ALU_CASCMP, ALU_CASSEL, ALU_CASST,
    ALU_RTEJ,   // RTE's jump: to b, or to the RTE again after a format $1 frame (a)
    ALU_CHK2    // CMP2/CHK2: a (Rn) against b (lower bound) and MDHI (upper): the CCR
  } alu_e;

  // Condition code update
  typedef enum logic [3:0] {
    CC_NONE,
    CC_LOGIC,   // N Z from the result, V C cleared, X kept
    CC_ADD,     // X N Z V C of an addition
    CC_SUB,     // X N Z V C of a subtraction (SUB, NEG)
    CC_CMP,     // N Z V C of a subtraction, X kept
    CC_SET,     // the CCR from the result (MOVE to CCR, ANDI to CCR...)
    CC_Z,       // Z only (bit operations)
    CC_X,       // X N V C of ADDX, SUBX, NEGX; Z cleared by a non-zero result only
    CC_SHIFT,   // X N Z V C of a shift or rotate
    CC_MULL,    // MULx.L: N Z of the result, V the 32-bit overflow
    CC_DIV,     // DIVx: as TG68K.C, also for a zero divisor
    CC_BCD,     // X C decimal carry, N of the result, Z cleared only, V clear (68040)
    CC_BF,      // N Z of the field (BFINS: of the value inserted), V C clear
    CC_CAS2     // the CMP flags when the first compare of CAS2 was equal, else kept
  } cc_e;

  // exception the uop raises at WB
  typedef enum logic [2:0] {
    EXC_NONE,
    EXC_ALWAYS, // ILLEGAL, Line-A, TRAP #n, privilege violation
    EXC_COND,   // TRAPV, TRAPcc: when cond is true
    EXC_FMT,    // RTE: when the format word in a is not a 68040 frame
    EXC_CHK,    // CHK: when b < 0 or b > a, signed at the size
    EXC_DIVZ,   // DIVx: a zero divisor
    EXC_CHK2,   // CHK2: Rn out of bounds (C of the result)
    EXC_MISAL   // CAS on the 68060: the operand at the EA (msize) misaligned
  } exc_e;

  typedef enum logic [1:0] {
    BR_NONE,
    BR_BCC,     // to br_target if cond (BRA, BSR: cond T)
    BR_DBCC,    // to br_target unless cond or the counter ends at -1
    BR_JMP      // to operand a (JMP, JSR, RTS)
  } br_e;

  typedef struct packed {
    logic [31:0] pc;        // instruction address
    logic [15:0] opcode;
    logic        first;     // first uop of the instruction
    logic        last;      // last uop of the instruction
    logic [31:0] next_pc;   // address of the next instruction in sequence
    logic        unimpl;    // not implemented yet: stops at WB

    // effective address: base + index * scale + disp
    logic        ea_en;
    ea_mode_e    ea_mode;
    logic        base_en;
    logic [4:0]  base;
    logic        idx_en;
    logic [4:0]  idx;
    logic        idx_l;     // index register as a long (else sign-extended word)
    logic [1:0]  scale;
    logic [31:0] disp;
    logic [2:0]  step;      // bytes of the (An)+ / -(An) update
    logic        ind;       // memory indirect: the EA is the long at base + disp
                            // (+ index, pre-indexed), + od (+ index, post-indexed)
    logic        ind_post;
    logic [31:0] od;

    logic        load;
    logic        store;
    size_e       msize;     // memory access size

    opsel_e      a_sel;
    logic [4:0]  a_reg;
    opsel_e      b_sel;
    logic [4:0]  b_reg;
    logic [31:0] imm;
    logic        a_sext_w;  // a is a word sign-extended to a long (MOVEA.W, ADDA.W)

    alu_e        alu;
    size_e       size;      // ALU and condition code size
    cc_e         cc;
    logic        dst_en;    // write the result to dst
    logic [4:0]  dst;

    br_e         br;
    logic [3:0]  cond;
    logic [31:0] br_target;
    logic        br_pred;   // decode redirected the fetch to br_target
    logic        redir;     // always redirect the fetch to the branch target

    exc_e        exc;
    logic [7:0]  exc_vec;
    logic        exc_fmt2;  // format $2: the address of the instruction too
    logic        exc_post;  // stacked PC: the next instruction (else this one)

    logic        sys;       // serialising: decode waits until it retired
    logic        setsr;     // the result goes to SR (and A7 to the stack of the new mode)
    logic        ctrl_wr;   // the result goes to MOVEC control register imm[11:0]
    logic        md64;      // MULx.L / DIVx.L with a 64-bit product or dividend
    logic        stop;      // STOP: after its SR, wait for an interrupt
    logic        fpu;       // an FPU instruction: m68k_fpu runs it in EX
    logic        fbcc;      // FBcc: the predicate (opcode[5:0]) from the FPU
    logic [1:0]  mmuop;     // 1 PTEST, 2 PFLUSH (opcode bits), on An (operand a), in EX;
                            // 3 CINV/CPUSH: the stores written, then fetch again
    // access errors (68040 UM 8.4.6, as TG68K.C frames them)
    logic        wdefer;    // a faulting write is held (WB1/WB2), the instruction completes
    logic        movem;     // MOVEM: CM in the SSW, the first transfer's address as EA
    logic        mfirst;    // MOVEM's first transfer
    logic        m16;       // MOVE16: a line (SIZE 11, TT 01)
    logic        noaf;      // exception processing: faults are not reported
    logic        fiar;      // (68060) its exception loads FPIAR: an FPU operation's encoding
    logic        ifault;    // the fetch of the instruction faulted: imm the address,
                            // cond[0] by the MMU (else a bus error)
    logic        al16;      // the EA base aligned to 16 bytes (MOVE16's lines)
    logic        moves;     // (MC68060) MOVES: the access in the space of SFC (load) or DFC (store)
  } uop_t;

  function automatic logic [31:0] sext8(input logic [7:0] v);
    return {{24{v[7]}}, v};
  endfunction

  function automatic logic [31:0] sext16(input logic [15:0] v);
    return {{16{v[15]}}, v};
  endfunction

  // Condition test (PRM table 3-19); ccr = X N Z V C
  function automatic logic cond_true(input logic [3:0] c, input logic [4:0] ccr);
    logic n, z, v, cf;
    n = ccr[3]; z = ccr[2]; v = ccr[1]; cf = ccr[0];
    case (c)
      4'h0: return 1'b1;            // T
      4'h1: return 1'b0;            // F
      4'h2: return !cf && !z;       // HI
      4'h3: return cf || z;         // LS
      4'h4: return !cf;             // CC
      4'h5: return cf;              // CS
      4'h6: return !z;              // NE
      4'h7: return z;               // EQ
      4'h8: return !v;              // VC
      4'h9: return v;               // VS
      4'hA: return !n;              // PL
      4'hB: return n;               // MI
      4'hC: return n == v;          // GE
      4'hD: return n != v;          // LT
      4'hE: return !z && (n == v);  // GT
      default: return z || (n != v); // LE
    endcase
  endfunction

endpackage
