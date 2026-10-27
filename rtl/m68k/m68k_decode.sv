// SPDX-License-Identifier: LGPL-3.0-or-later
// Decode: the instruction at the head of the fetch queue into uops.
// Combinational; step counts the uops of a multi-uop instruction, and
// the queue words are consumed with the last one. Exceptions the decode
// finds (illegal, Line-A, TRAP #n, privilege violation) are uops that
// raise them at WB.

module m68k_decode
  import m68k_pkg::*;
#(
  // the 68060 (else the 68040): what it does not implement traps
  // (unimplemented integer, vector 61), its control registers, PTEST gone
  parameter bit MC68060 = 1'b0
)
(
  input  logic [15:0] q [16],
  input  logic [1:0]  qf [16],        // the word's fetch faulted {fault, by the MMU}
  input  logic [4:0]  q_count,
  input  logic [31:0] q_pc,
  input  logic [4:0]  step,
  input  logic        sup,            // SR.S (stable: SR changes serialise)
  input  logic        msp_m,          // SR.M
  // what an early decode found for this instruction (the core's PRELEN):
  // the words that must be in the queue, the source's extension words
  // (where MOVE's destination begins), instead of finding them here
  input  logic        pre_en,
  input  logic [3:0]  pre_nv,
  input  logic [3:0]  pre_snw,
  input  logic [3:0]  pre_len,        // and the length (the next PC, BSR's and JSR's return)
  input  logic [15:0] pre_mrem,       // MOVEM: the registers of the list still to move (the core's)

  output logic        valid,          // the whole instruction is in the queue
  output uop_t        u,
  output logic [3:0]  len,            // instruction length in words (pre_len with pre_en)
  output logic [3:0]  len_own,        // the one found here
  output logic [3:0]  nwait,          // the extension words that must be in the queue
  output logic [3:0]  snw,            // the source's extension words (MOVE)
  // for an early decode: the instruction's uops, and its last uop's jump
  // (JSR's at its first; for other multi-uop ones none) and prediction
  output logic [4:0]  nst,
  output br_e         lbr,
  output logic        lpred
);

  typedef enum logic [1:0] {K_DREG, K_AREG, K_MEM, K_IMM} kind_e;

  typedef struct packed {
    logic [3:0]  nw;          // extension words
    logic        bad;
    kind_e       kind;
    logic [4:0]  rg;          // K_DREG, K_AREG
    logic [31:0] imm;         // K_IMM
    ea_mode_e    mode;
    logic        base_en;
    logic [4:0]  base;
    logic        idx_en;
    logic [4:0]  idx;
    logic        idx_l;
    logic [1:0]  scale;
    logic [31:0] disp;
    logic [2:0]  step;
    logic        ind;
    logic        ind_post;
    logic [31:0] od;
  } ea_t;

  logic [15:0][15:0] w;
  always_comb
    for (int i = 0; i < 16; i++) w[i] = q[i];

  // Effective address field (mode, reg) whose extension words start at word p
  function automatic ea_t ea_dec(input logic [2:0] mode, input logic [2:0] r,
                                 input size_e sz, input logic [3:0] p,
                                 input logic [15:0][15:0] wd, input logic [31:0] pc);
    ea_t e;
    logic [15:0] x;
    logic [31:0] xpc;
    logic        pcrel;
    e = '0;
    x = wd[p];
    xpc = pc + {27'd0, p, 1'b0};
    pcrel = 1'b0;
    e.kind = K_MEM;
    e.mode = EAM_PLAIN;
    e.base = {2'b01, r};
    e.base_en = 1'b1;
    e.step = (sz == SZ_L) ? 3'd4 : (sz == SZ_W || r == 3'd7) ? 3'd2 : 3'd1;
    case (mode)
      3'd0: begin e.kind = K_DREG; e.rg = {2'b00, r}; end
      3'd1: begin e.kind = K_AREG; e.rg = {2'b01, r}; end
      3'd2: ;
      3'd3: e.mode = EAM_POSTINC;
      3'd4: e.mode = EAM_PREDEC;
      3'd5: begin e.disp = sext16(x); e.nw = 4'd1; end
      3'd6: ;
      default:
        case (r)
          3'd0: begin e.base_en = 1'b0; e.disp = sext16(x); e.nw = 4'd1; end
          3'd1: begin e.base_en = 1'b0; e.disp = {x, wd[4'(p + 4'd1)]}; e.nw = 4'd2; end
          3'd2: begin e.base_en = 1'b0; e.disp = xpc + sext16(x); e.nw = 4'd1; end
          3'd3: begin e.base_en = 1'b0; pcrel = 1'b1; end
          3'd4: begin
            e.kind = K_IMM;
            e.base_en = 1'b0;
            case (sz)
              SZ_B:    begin e.imm = {24'd0, x[7:0]}; e.nw = 4'd1; end
              SZ_W:    begin e.imm = {16'd0, x}; e.nw = 4'd1; end
              default: begin e.imm = {x, wd[4'(p + 4'd1)]}; e.nw = 4'd2; end
            endcase
          end
          default: e.bad = 1'b1;
        endcase
    endcase
    // indexed: (d8,An,Xn), (d8,PC,Xn) and the full extension word forms
    if (mode == 3'd6 || pcrel) begin
      e.idx_en = 1'b1;
      e.idx    = {1'b0, x[15], x[14:12]};
      e.idx_l  = x[11];
      e.scale  = x[10:9];
      if (!x[8]) begin
        e.disp = (pcrel ? xpc : 32'd0) + sext8(x[7:0]);
        e.nw   = 4'd1;
      end else begin
        logic [31:0] bd;
        logic [3:0]  bdw, odw;
        logic [3:0]  op_;
        case (x[5:4])
          2'b10:   begin bd = sext16(wd[4'(p + 4'd1)]); bdw = 4'd1; end
          2'b11:   begin bd = {wd[4'(p + 4'd1)], wd[4'(p + 4'd2)]}; bdw = 4'd2; end
          default: begin bd = 32'd0; bdw = 4'd0; end
        endcase
        odw = (x[1:0] == 2'b10) ? 4'd1 : (x[1:0] == 2'b11) ? 4'd2 : 4'd0;
        e.nw = 4'd1 + bdw + odw;
        if (x[7]) e.base_en = 1'b0;             // BS
        if (x[6]) e.idx_en = 1'b0;              // IS
        e.disp = ((pcrel && !x[7]) ? xpc : 32'd0) + bd;
        // memory indirect (I/IS): the outer displacement after bd
        op_ = 4'd1 + bdw;
        e.ind = x[2:0] != 3'b000;
        e.ind_post = !x[6] && x[2];
        case (x[1:0])
          2'b10:   e.od = sext16(wd[4'(p + op_)]);
          2'b11:   e.od = {wd[4'(p + op_)], wd[4'(p + op_ + 4'd1)]};
          default: e.od = 32'd0;
        endcase
        // reserved forms
        if (x[5:4] == 2'b00 || x[3] || (!x[6] && x[2:0] == 3'b100) || (x[6] && x[2])) e.bad = 1'b1;
      end
    end
    return e;
  endfunction

  function automatic uop_t use_ea(input uop_t ui, input ea_t e);
    uop_t o;
    o = ui;
    o.ea_en   = 1'b1;
    o.ea_mode = e.mode;
    o.base_en = e.base_en;
    o.base    = e.base;
    o.idx_en  = e.idx_en;
    o.idx     = e.idx;
    o.idx_l   = e.idx_l;
    o.scale   = e.scale;
    o.disp    = e.disp;
    o.step    = e.step;
    o.ind     = e.ind;
    o.ind_post = e.ind_post;
    o.od      = e.od;
    return o;
  endfunction

  // Source operand into a
  function automatic uop_t src_a(input uop_t ui, input ea_t e, input size_e sz);
    uop_t o;
    o = ui;
    case (e.kind)
      K_DREG, K_AREG: begin o.a_sel = OP_REG; o.a_reg = e.rg; end
      K_IMM:          begin o.a_sel = OP_IMM; o.imm = e.imm; end
      default: begin
        o = use_ea(o, e);
        o.load = 1'b1;
        o.msize = sz;
        o.a_sel = OP_MEM;
      end
    endcase
    return o;
  endfunction

  // Destination operand, read and written: into b, result back to it
  function automatic uop_t rmw_b(input uop_t ui, input ea_t e, input size_e sz);
    uop_t o;
    o = ui;
    case (e.kind)
      K_DREG, K_AREG: begin
        o.b_sel = OP_REG; o.b_reg = e.rg;
        o.dst_en = 1'b1;  o.dst = e.rg;
      end
      default: begin
        o = use_ea(o, e);
        o.load = 1'b1;
        o.store = 1'b1;
        o.msize = sz;
        o.b_sel = OP_MEM;
      end
    endcase
    return o;
  endfunction

  // Destination operand, written only (a data register keeps its upper part)
  function automatic uop_t dst_w(input uop_t ui, input ea_t e, input size_e sz);
    uop_t o;
    o = ui;
    case (e.kind)
      K_DREG, K_AREG: begin
        o.dst_en = 1'b1; o.dst = e.rg;
        if (sz != SZ_L) begin o.b_sel = OP_REG; o.b_reg = e.rg; end
      end
      default: begin
        o = use_ea(o, e);
        o.store = 1'b1;
        o.msize = sz;
      end
    endcase
    return o;
  endfunction

  // shift or rotate of type t (AS LS ROX RO), left when l
  function automatic alu_e shift_alu(input logic [1:0] t, input logic l);
    case (t)
      2'b00:   return l ? ALU_ASL : ALU_ASR;
      2'b01:   return l ? ALU_LSL : ALU_LSR;
      2'b10:   return l ? ALU_ROXL : ALU_ROXR;
      default: return l ? ALU_ROL : ALU_ROR;
    endcase
  endfunction

  function automatic size_e sz2(input logic [1:0] s);
    return (s == 2'b00) ? SZ_B : (s == 2'b01) ? SZ_W : SZ_L;
  endfunction

  // a uop that only raises an exception at WB
  function automatic uop_t exc_u(input logic [7:0] vec, input logic post, input logic fmt2);
    uop_t o;
    o = '0;
    o.exc = EXC_ALWAYS;
    o.exc_vec = vec;
    o.exc_post = post;
    o.exc_fmt2 = fmt2;
    return o;
  endfunction

  // index of the set bit k (from 0) of m, from bit 0 up
  function automatic logic [3:0] kth_bit(input logic [15:0] m, input logic [4:0] k);
    logic [4:0] c;
    logic [3:0] r;
    c = 5'd0;
    r = 4'd0;
    for (int i = 0; i < 16; i++)
      if (m[i]) begin
        if (c == k) r = 4'(i);
        c = c + 5'd1;
      end
    return r;
  endfunction

  function automatic logic [3:0] ctz16(input logic [15:0] m);
    for (int i = 0; i < 16; i++) if (m[i]) return 4'(i);
    return 4'd0;
  endfunction

  function automatic logic [4:0] popc16(input logic [15:0] m);
    logic [4:0] c;
    c = 5'd0;
    for (int i = 0; i < 16; i++) c = c + 5'(m[i]);
    return c;
  endfunction

  logic [15:0] op;
  assign op = w[0];

  always_comb begin
    ea_t   s, d;
    size_e sz;
    logic  bad;               // not implemented yet: stop at WB
    logic  ill;               // illegal instruction (vector 4)
    logic  priv;              // privileged: violation in user mode
    logic  unimp;             // 68060: unimplemented integer instruction (vector 61)
    logic  uea;               // 68060: unimplemented effective address (vector 60)
    logic [4:0] nsteps;       // uops of the instruction
    logic [3:0] nv;           // extension words that must be in the queue
    logic [3:0] n;            // extension words
    logic [31:0] bdisp;
    logic        jsr_l, jsr_p;        // JSR: its last uop jumps; predicted

    u = '0;
    jsr_l = 1'b0; jsr_p = 1'b0;
    bad = 1'b0;
    ill = 1'b0;
    priv = 1'b0;
    unimp = 1'b0;
    uea = 1'b0;
    nsteps = 5'd1;
    n = 4'd0;
    sz = sz2(op[7:6]);
    s = ea_dec(op[5:3], op[2:0], sz, 4'd1, w, q_pc);
    d = '0;
    bdisp = 32'd0;
    u.alu = ALU_MOVE;
    u.size = SZ_L;
    u.cc = CC_NONE;
    u.br = BR_NONE;

    case (op[15:12])
      // ---------------------------------------------------------------- MOVE
      4'h1, 4'h2, 4'h3: begin
        sz = (op[13:12] == 2'b01) ? SZ_B : (op[13:12] == 2'b11) ? SZ_W : SZ_L;
        s = ea_dec(op[5:3], op[2:0], sz, 4'd1, w, q_pc);
        d = ea_dec(op[8:6], op[11:9], sz, 4'd1 + (pre_en ? pre_snw : s.nw), w, q_pc);
        n = s.nw + d.nw;
        bad = s.bad || d.bad || d.kind == K_IMM;
        if (d.kind == K_AREG) begin                  // MOVEA
          bad = bad || sz == SZ_B;
          u = src_a(u, s, sz);
          u.a_sext_w = sz == SZ_W;
          u.dst_en = 1'b1;
          u.dst = d.rg;
        end else if (d.kind == K_MEM && s.kind == K_MEM) begin
          nsteps = 5'd2;
          if (step == 5'd0) begin                    // load into T0
            u = src_a(u, s, sz);
            u.dst_en = 1'b1;
            u.dst = R_T0;
          end else begin                             // store T0
            u.a_sel = OP_REG;
            u.a_reg = R_T0;
            u = dst_w(u, d, sz);
            u.size = sz;
            u.cc = CC_LOGIC;
          end
        end else begin
          u = src_a(u, s, sz);
          u = dst_w(u, d, sz);
          u.size = sz;
          u.cc = CC_LOGIC;
        end
      end

      // ------------------------------------------------------ immediate ops
      4'h0: if (op[5:0] == 6'h3C && op[8] == 1'b0 && op[7] == 1'b0 &&
                (op[11:9] == 3'b000 || op[11:9] == 3'b001 || op[11:9] == 3'b101)) begin
        // ORI, ANDI, EORI to CCR (byte) and to SR (word, privileged)
        n = 4'd1;
        u.a_sel = OP_IMM;
        u.b_sel = OP_SR;
        u.alu = (op[11:9] == 3'b000) ? ALU_OR : (op[11:9] == 3'b001) ? ALU_AND : ALU_EOR;
        if (!op[6]) begin
          u.imm = {24'd0, w[1][7:0]};
          u.size = SZ_B;
          u.cc = CC_SET;
        end else begin
          priv = 1'b1;
          u.imm = {16'd0, w[1]};
          u.size = SZ_W;
          u.setsr = 1'b1;
          u.sys = 1'b1;
        end
      end else if (!op[11] && !op[8] && op[7:6] == 2'b11 && op[10:9] != 2'b11) begin
        // CMP2, CHK2 <ea>,Rn: the bounds into T0 and MDHI, then the compare
        logic [15:0] x1;
        logic [2:0]  nb;
        unimp = MC68060;
        x1 = w[1];
        sz = (op[10:9] == 2'b00) ? SZ_B : (op[10:9] == 2'b01) ? SZ_W : SZ_L;
        nb = (sz == SZ_B) ? 3'd1 : (sz == SZ_W) ? 3'd2 : 3'd4;
        s = ea_dec(op[5:3], op[2:0], sz, 4'd2, w, q_pc);
        n = 4'd1 + s.nw;
        bad = s.bad || s.kind != K_MEM || s.mode != EAM_PLAIN || x1[10:0] != 11'd0;
        nsteps = 5'd4;
        case (step)
          5'd0: begin
            u = use_ea(u, s);
            u.a_sel = OP_EA;
            u.dst_en = 1'b1; u.dst = R_T2;
          end
          5'd1, 5'd2: begin
            u.ea_en = 1'b1; u.base_en = 1'b1; u.base = R_T2;
            u.disp = (step == 5'd2) ? {29'd0, nb} : 32'd0;
            u.load = 1'b1; u.msize = sz;
            u.a_sel = OP_MEM;
            if (step == 5'd1) begin u.dst_en = 1'b1; u.dst = R_T0; end
            else u.alu = ALU_SETHI;
          end
          default: begin
            u.a_sel = OP_REG; u.a_reg = {1'b0, x1[15:12]};
            u.b_sel = OP_REG; u.b_reg = R_T0;
            u.size = sz;
            u.alu = ALU_CHK2;
            u.cc = CC_SET;
            if (x1[11]) begin
              u.exc = EXC_CHK2; u.exc_vec = 8'd6;
              u.exc_post = 1'b1; u.exc_fmt2 = 1'b1;
            end
          end
        endcase
      end else if (op[11] && !op[8] && op[7:6] == 2'b11 && op[10:9] != 2'b00) begin
        // CAS Dc,Du,<ea> and CAS2 Dc1:Dc2,Du1:Du2,(Rn1):(Rn2)
        logic [15:0] x1, x2;
        x1 = w[1];
        x2 = w[2];
        sz = (op[10:9] == 2'b01) ? SZ_B : (op[10:9] == 2'b10) ? SZ_W : SZ_L;
        u.size = sz;
        if (op[5:0] != 6'h3C) begin                              // CAS
          s = ea_dec(op[5:3], op[2:0], sz, 4'd2, w, q_pc);
          n = 4'd1 + s.nw;
          bad = s.bad || s.kind != K_MEM;
          nsteps = 5'd5;
          case (step)
            5'd0: begin                                          // the address into T2
              u = use_ea(u, s);
              u.a_sel = OP_EA;
              u.size = SZ_L;
              u.dst_en = 1'b1; u.dst = R_T2;
              if (MC68060) begin                                 // misaligned: vector 61
                u.exc = EXC_MISAL; u.exc_vec = 8'd61; u.msize = sz;
              end
            end
            5'd1: begin                                          // the operand into T0
              u.ea_en = 1'b1; u.base_en = 1'b1; u.base = R_T2;
              u.load = 1'b1; u.msize = sz;
              u.a_sel = OP_MEM;
              u.size = SZ_L;
              u.dst_en = 1'b1; u.dst = R_T0;
            end
            5'd2: begin
              u.a_sel = OP_REG; u.a_reg = {2'b00, x1[2:0]};
              u.b_sel = OP_REG; u.b_reg = R_T0;
              u.alu = ALU_CASCMP;
              u.cc = CC_CMP;
            end
            default:
              // Dc, then the store; the 68060 stores first: its store is made
              // when the compare fails too, and a write's access error
              // restarts the instruction with nothing of it kept
              if (step == (MC68060 ? 5'd4 : 5'd3)) begin
                u.a_sel = OP_REG; u.a_reg = R_T0;
                u.b_sel = OP_REG; u.b_reg = {2'b00, x1[2:0]};
                u.alu = ALU_CASSEL;
                u.dst_en = 1'b1; u.dst = {2'b00, x1[2:0]};
              end else begin                                     // Du, or (the 68060) the
                u.ea_en = 1'b1; u.base_en = 1'b1; u.base = R_T2; // operand read back
                u.store = 1'b1; u.msize = sz;
                u.a_sel = OP_REG; u.a_reg = {2'b00, x1[8:6]};
                u.b_sel = OP_REG; u.b_reg = R_T0;
                u.alu = ALU_CASST;
              end
          endcase
        end else begin                                           // CAS2
          unimp = MC68060;
          n = 4'd2;
          bad = sz == SZ_B;
          nsteps = 5'd8;
          u.ea_en = 1'b1; u.base_en = 1'b1;
          u.msize = sz;
          case (step)
            5'd0, 5'd1: begin
              u.base = {1'b0, (step == 5'd0) ? x1[15:12] : x2[15:12]};
              u.load = 1'b1;
              u.a_sel = OP_MEM;
              u.size = SZ_L;
              u.dst_en = 1'b1; u.dst = (step == 5'd0) ? R_T0 : R_T1;
            end
            5'd2, 5'd3: begin
              u.ea_en = 1'b0;
              u.a_sel = OP_REG; u.a_reg = {2'b00, (step == 5'd2) ? x1[2:0] : x2[2:0]};
              u.b_sel = OP_REG; u.b_reg = (step == 5'd2) ? R_T0 : R_T1;
              u.alu = ALU_CASCMP;
              u.cond = {3'd0, step == 5'd3};
              u.cc = (step == 5'd2) ? CC_CMP : CC_CAS2;
            end
            5'd4, 5'd5: begin                                     // Dc2, then Dc1 (which wins
              u.ea_en = 1'b0;                                     // when they are one register)
              u.a_sel = OP_REG; u.a_reg = (step == 5'd5) ? R_T0 : R_T1;
              u.b_sel = OP_REG; u.b_reg = {2'b00, (step == 5'd5) ? x1[2:0] : x2[2:0]};
              u.alu = ALU_CASSEL;
              u.dst_en = 1'b1; u.dst = {2'b00, (step == 5'd5) ? x1[2:0] : x2[2:0]};
            end
            default: begin
              u.base = {1'b0, (step == 5'd6) ? x1[15:12] : x2[15:12]};
              u.store = 1'b1;
              u.a_sel = OP_REG; u.a_reg = {2'b00, (step == 5'd6) ? x1[8:6] : x2[8:6]};
              u.alu = ALU_CASST;
            end
          endcase
        end
      end else if (op[8] && op[5:3] == 3'b001) begin
        // MOVEP: alternate bytes from d16(Ay), one uop a byte
        logic [4:0] nb;
        logic [4:0] pos;
        unimp = MC68060;
        nb = op[6] ? 5'd4 : 5'd2;
        pos = nb - 5'd1 - step;
        n = 4'd1;
        nsteps = nb;
        u.ea_en = 1'b1; u.ea_mode = EAM_PLAIN;
        u.base_en = 1'b1; u.base = {2'b01, op[2:0]};
        u.disp = sext16(w[1]) + {26'd0, step, 1'b0};
        u.msize = SZ_B;
        u.imm = {30'd0, pos[1:0]};
        u.b_sel = OP_REG; u.b_reg = {2'b00, op[11:9]};
        if (!op[7]) begin                                        // to Dx
          u.load = 1'b1;
          u.a_sel = OP_MEM;
          u.alu = ALU_INSB;
          u.dst_en = 1'b1; u.dst = {2'b00, op[11:9]};
        end else begin
          u.store = 1'b1;
          u.alu = ALU_EXTRB;
        end
      end else if (op[8] || op[11:8] == 4'b1000) begin
        // BTST, BCHG, BCLR, BSET: bit number in Dn or the extension word
        logic [3:0] p;
        p = op[8] ? 4'd1 : 4'd2;
        s = ea_dec(op[5:3], op[2:0], SZ_B, p, w, q_pc);
        n = (p - 4'd1) + s.nw;
        bad = s.bad || s.kind == K_AREG || (s.kind == K_IMM && (op[7:6] != 2'b00 || !op[8]));
        if (op[8]) begin u.a_sel = OP_REG; u.a_reg = {2'b00, op[11:9]}; end
        else begin u.a_sel = OP_IMM; u.imm = {24'd0, w[1][7:0]}; end
        if (op[7:6] == 2'b00) begin                    // BTST: read only
          case (s.kind)
            K_DREG:  begin u.b_sel = OP_REG; u.b_reg = s.rg; end
            K_IMM:   begin u.b_sel = OP_IMM; u.imm = s.imm; end
            default: begin u = use_ea(u, s); u.load = 1'b1; u.msize = SZ_B; u.b_sel = OP_MEM; end
          endcase
        end else
          u = rmw_b(u, s, SZ_B);
        u.size = (s.kind == K_DREG) ? SZ_L : SZ_B;
        u.alu = (op[7:6] == 2'b00) ? ALU_BTST : (op[7:6] == 2'b01) ? ALU_BCHG :
                (op[7:6] == 2'b10) ? ALU_BCLR : ALU_BSET;
        u.cc = CC_Z;
      end else if (op[11:8] == 4'b1110 && op[7:6] != 2'b11 && MC68060) begin
        // MOVES (the 68060's): a load or store of Rn in the space of SFC
        // or DFC (moves); memory alterable modes only. Into An a byte or
        // word is sign-extended; no condition codes
        logic [4:0] rn;
        rn = {1'b0, w[1][15], w[1][14:12]};
        s = ea_dec(op[5:3], op[2:0], sz, 4'd2, w, q_pc);
        n = 4'd1 + s.nw;
        priv = 1'b1;
        ill = op[5:4] == 2'b00 || (op[5:3] == 3'b111 && op[2:1] != 2'b00);
        bad = s.bad;
        u.moves = 1'b1;
        if (!w[1][11]) begin                           // <ea> to Rn
          u = use_ea(u, s);
          u.load = 1'b1;
          u.msize = sz;
          u.dst_en = 1'b1; u.dst = rn;
          if (w[1][15]) begin
            u.b_sel = OP_MEM;
            u.alu = (sz == SZ_B) ? ALU_EXTBL : (sz == SZ_W) ? ALU_EXTL : ALU_MOVE;
            u.a_sel = OP_MEM;
          end else begin
            u.a_sel = OP_MEM;
            u.size = sz;
            if (sz != SZ_L) begin u.b_sel = OP_REG; u.b_reg = rn; end
          end
        end else begin                                 // Rn to <ea>
          u.a_sel = OP_REG; u.a_reg = rn;
          u = dst_w(u, s, sz);
          u.size = sz;
        end
      end else if (op[11:8] == 4'b1110 && op[7:6] != 2'b11) begin
        // MOVES: TG68K.C does not implement it; a memory alterable mode is
        // a privilege violation in user mode and illegal in supervisor
        // mode, any other illegal
        priv = 1'b1;
        ill = sup || op[5:4] == 2'b00 || (op[5:3] == 3'b111 && op[2:1] != 2'b00);
      end else begin
        logic [3:0] iw;
        logic [31:0] iv;
        iw = (sz == SZ_L) ? 4'd2 : 4'd1;
        iv = (sz == SZ_L) ? {w[1], w[2]} : (sz == SZ_W) ? {16'd0, w[1]} : {24'd0, w[1][7:0]};
        d = ea_dec(op[5:3], op[2:0], sz, 4'd1 + iw, w, q_pc);
        n = iw + d.nw;
        bad = op[8] || op[7:6] == 2'b11 || d.bad || d.kind == K_IMM || d.kind == K_AREG;
        u.a_sel = OP_IMM;
        u.imm = iv;
        u = rmw_b(u, d, sz);
        u.size = sz;
        case (op[11:9])
          3'b000: begin u.alu = ALU_OR;  u.cc = CC_LOGIC; end
          3'b001: begin u.alu = ALU_AND; u.cc = CC_LOGIC; end
          3'b010: begin u.alu = ALU_SUB; u.cc = CC_SUB; end
          3'b011: begin u.alu = ALU_ADD; u.cc = CC_ADD; end
          3'b101: begin u.alu = ALU_EOR; u.cc = CC_LOGIC; end
          3'b110: begin u.alu = ALU_SUB; u.cc = CC_CMP; u.dst_en = 1'b0; u.store = 1'b0; end
          default: bad = 1'b1;
        endcase
      end

      // ---------------------------------------------------------- 0100 misc
      4'h4: begin
        n = s.nw;
        bad = s.bad;
        if (op == 16'h4AFC) begin                                 // ILLEGAL
          ill = 1'b1;
        end else if (op[11:6] == 6'b011011 || op[11:6] == 6'b010011) begin   // MOVE to SR, CCR
          s = ea_dec(op[5:3], op[2:0], SZ_W, 4'd1, w, q_pc);
          n = s.nw;
          bad = s.bad || s.kind == K_AREG;
          u = src_a(u, s, SZ_W);
          u.size = SZ_W;
          if (op[9]) begin
            priv = 1'b1;
            u.setsr = 1'b1;
            u.sys = 1'b1;
          end else
            u.cc = CC_SET;
        end else if (op[11:6] == 6'b001011) begin                // MOVE from CCR
          s = ea_dec(op[5:3], op[2:0], SZ_W, 4'd1, w, q_pc);
          n = s.nw;
          bad = s.bad || s.kind == K_IMM || s.kind == K_AREG;
          u.a_sel = OP_CCR;
          u = dst_w(u, s, SZ_W);
          u.size = SZ_W;
        end else if (op[11:4] == 8'hE4) begin                    // TRAP #n
          n = 4'd0;
          bad = 1'b0;
          u = exc_u({4'h2, op[3:0]}, 1'b1, 1'b0);
        end else if (op[11:4] == 8'hE6) begin                    // MOVE An,USP / USP,An
          n = 4'd0;
          bad = 1'b0;
          priv = 1'b1;
          if (!op[3]) begin
            u.a_sel = OP_REG; u.a_reg = {2'b01, op[2:0]};
            u.dst_en = 1'b1;  u.dst = R_USP;
            u.sys = 1'b1;
          end else begin
            u.a_sel = OP_REG; u.a_reg = R_USP;
            u.dst_en = 1'b1;  u.dst = {2'b01, op[2:0]};
          end
        end else if (op == 16'h4E72) begin                        // STOP #imm
          n = 4'd1;
          bad = 1'b0;
          priv = 1'b1;
          u.a_sel = OP_IMM; u.imm = {16'd0, w[1]};
          u.size = SZ_W;
          u.setsr = 1'b1;
          u.sys = 1'b1;
          u.stop = 1'b1;
        end else if (op == 16'h4E70) begin                        // RESET: nothing outside
          n = 4'd0;
          bad = 1'b0;
          priv = 1'b1;
        end else if (op == 16'h4E73) begin                        // RTE
          n = 4'd0;
          bad = 1'b0;
          priv = 1'b1;
          nsteps = 5'd6;
          u.ea_mode = EAM_PLAIN;
          u.base = R_A7;
          u.msize = SZ_L;
          case (step)
            5'd0: begin                                          // SR into T1
              u.ea_en = 1'b1; u.base_en = 1'b1; u.load = 1'b1; u.msize = SZ_W;
              u.a_sel = OP_MEM; u.dst_en = 1'b1; u.dst = R_T1;
            end
            5'd1: begin                                          // PC into T0
              u.ea_en = 1'b1; u.base_en = 1'b1; u.disp = 32'd2; u.load = 1'b1;
              u.a_sel = OP_MEM; u.dst_en = 1'b1; u.dst = R_T0;
            end
            5'd2: begin                                          // format word into T2
              u.ea_en = 1'b1; u.base_en = 1'b1; u.disp = 32'd6; u.load = 1'b1; u.msize = SZ_W;
              u.a_sel = OP_MEM; u.dst_en = 1'b1; u.dst = R_T2;
              u.exc = EXC_FMT; u.exc_vec = 8'd14;
            end
            5'd3: begin                                          // drop the frame
              u.a_sel = OP_REG; u.a_reg = R_T2;
              u.b_sel = OP_REG; u.b_reg = R_A7;
              u.alu = ALU_FRAME;
              u.dst_en = 1'b1; u.dst = R_A7;
            end
            5'd4: begin                                          // SR, and the stack of its mode
              u.a_sel = OP_REG; u.a_reg = R_T1;
              u.size = SZ_W;
              u.setsr = 1'b1;
              u.sys = 1'b1;
            end
            default: begin                                       // to the PC (or this RTE again)
              u.a_sel = OP_REG; u.a_reg = R_T2;
              u.b_sel = OP_REG; u.b_reg = R_T0;
              u.alu = ALU_RTEJ;
              u.br = BR_JMP;
            end
          endcase
        end else if (op == 16'h4E76) begin                        // TRAPV
          n = 4'd0;
          bad = 1'b0;
          u.exc = EXC_COND; u.cond = 4'h9; u.exc_vec = 8'd7;
          u.exc_post = 1'b1; u.exc_fmt2 = 1'b1;
        end else if (op[11:1] == 11'b11100111101) begin           // MOVEC
          logic [11:0] c;
          logic [4:0]  rn;
          c = w[1][11:0];
          rn = {1'b0, w[1][15], w[1][14:12]};
          n = 4'd1;
          bad = 1'b0;
          priv = 1'b1;
          if (MC68060)                                           // no MSP, ISP, MMUSR; BUSCR, PCR
            ill = !(c[11:3] == 9'd0 || c == 12'h008 || c == 12'h800 || c == 12'h801 ||
                    c == 12'h806 || c == 12'h807 || c == 12'h808);
          else
            ill = !(c[11:3] == 9'd0 || c == 12'h800 || c == 12'h801 || (c >= 12'h803 && c <= 12'h807));
          if (!op[0]) begin                                      // Rc to Rn
            u.a_sel = OP_REG;
            case (c)
              12'h800: u.a_reg = R_USP;
              12'h803: u.a_reg = msp_m ? R_A7 : R_MSP;
              12'h804: u.a_reg = msp_m ? R_ISP : R_A7;
              default: begin u.a_sel = OP_CTRL; u.imm = {20'd0, c}; end
            endcase
            u.dst_en = 1'b1; u.dst = rn;
          end else begin                                         // Rn to Rc
            u.a_sel = OP_REG; u.a_reg = rn;
            u.sys = 1'b1;
            case (c)
              12'h800: begin u.dst_en = 1'b1; u.dst = R_USP; end
              12'h803: begin u.dst_en = 1'b1; u.dst = msp_m ? R_A7 : R_MSP; end
              12'h804: begin u.dst_en = 1'b1; u.dst = msp_m ? R_ISP : R_A7; end
              default: begin u.ctrl_wr = 1'b1; u.imm = {20'd0, c}; end
            endcase
          end
        end else if (op[8:6] == 3'b111 && op[5:3] != 3'b000) begin    // LEA (not EXTB)
          bad = bad || s.kind != K_MEM || s.mode != EAM_PLAIN;
          u = use_ea(u, s);
          u.a_sel = OP_EA;
          u.dst_en = 1'b1;
          u.dst = {2'b01, op[11:9]};
        end else if (op[11:8] == 4'h2 && op[7:6] != 2'b11) begin   // CLR
          bad = bad || s.kind == K_IMM || s.kind == K_AREG;
          u.a_sel = OP_IMM;
          u = dst_w(u, s, sz);
          u.size = sz;
          u.cc = CC_LOGIC;
        end else if ((op[11:8] == 4'h4 || op[11:8] == 4'h6) && op[7:6] != 2'b11) begin
          bad = bad || s.kind == K_IMM || s.kind == K_AREG;     // NEG, NOT
          u = rmw_b(u, s, sz);
          u.size = sz;
          u.alu = op[9] ? ALU_NOT : ALU_NEG;
          u.cc  = op[9] ? CC_LOGIC : CC_SUB;
        end else if (op[11:6] == 6'b000011) begin                // MOVE from SR
          s = ea_dec(op[5:3], op[2:0], SZ_W, 4'd1, w, q_pc);
          bad = s.bad || s.kind == K_IMM || s.kind == K_AREG;
          priv = 1'b1;
          u.a_sel = OP_SR;
          u = dst_w(u, s, SZ_W);
          u.size = SZ_W;
        end else if (op[11:8] == 4'hA && op[7:6] != 2'b11) begin  // TST
          u = src_a(u, s, sz);
          u.size = sz;
          u.cc = CC_LOGIC;
        end else if (op[11:3] == 9'b100001000) begin             // SWAP
          n = 4'd0;
          bad = 1'b0;
          u.b_sel = OP_REG; u.b_reg = {2'b00, op[2:0]};
          u.dst_en = 1'b1;  u.dst = {2'b00, op[2:0]};
          u.alu = ALU_SWAP;
          u.cc = CC_LOGIC;
        end else if (op[5:3] == 3'b000 &&
                     (op[11:6] == 6'b100010 || op[11:6] == 6'b100011 || op[11:6] == 6'b100111)) begin
          n = 4'd0;                                              // EXT, EXTB
          bad = 1'b0;
          u.b_sel = OP_REG; u.b_reg = {2'b00, op[2:0]};
          u.dst_en = 1'b1;  u.dst = {2'b00, op[2:0]};
          u.alu  = op[8] ? ALU_EXTBL : op[6] ? ALU_EXTL : ALU_EXTW;
          u.size = op[6] ? SZ_L : SZ_W;
          u.cc   = CC_LOGIC;
        end else if (op == 16'h4E71) begin                        // NOP
          n = 4'd0;
          bad = 1'b0;
        end else if (op == 16'h4E75) begin                        // RTS
          n = 4'd0;
          bad = 1'b0;
          u.ea_en = 1'b1; u.ea_mode = EAM_POSTINC;
          u.base_en = 1'b1; u.base = R_A7; u.step = 3'd4;
          u.load = 1'b1; u.msize = SZ_L;
          u.b_sel = OP_MEM;
          u.br = BR_JMP;
        end else if (op[11:6] == 6'b111011) begin                // JMP
          bad = bad || s.kind != K_MEM || s.mode != EAM_PLAIN;
          u = use_ea(u, s);
          u.b_sel = OP_EA;
          u.br = BR_JMP;
          if (!s.base_en && !s.idx_en && !s.ind) begin            // absolute, d16(PC): known here
            u.br_pred = 1'b1; u.br_target = s.disp;
          end
        end else if (op[11:6] == 6'b111010) begin                // JSR
          bad = bad || s.kind != K_MEM || s.mode != EAM_PLAIN;
          nsteps = 5'd2;
          if (step == 5'd0) begin                                // target into T0
            u = use_ea(u, s);
            u.a_sel = OP_EA;
            u.dst_en = 1'b1;
            u.dst = R_T0;
          end else begin                                         // push, jump
            u.ea_en = 1'b1; u.ea_mode = EAM_PREDEC;
            u.base_en = 1'b1; u.base = R_A7; u.step = 3'd4;
            u.store = 1'b1; u.msize = SZ_L;
            u.a_sel = OP_IMM;
            u.b_sel = OP_REG; u.b_reg = R_T0;
            u.br = BR_JMP;
            if (!s.base_en && !s.idx_en && !s.ind) u.br_pred = 1'b1;
          end
          // (the target in both uops: the core's early decode, PRELEN,
          // finds it with the first)
          if (!s.base_en && !s.idx_en && !s.ind) u.br_target = s.disp;
          jsr_l = 1'b1; jsr_p = !s.base_en && !s.idx_en && !s.ind;
        end else if (op[11:8] == 4'h0 && op[7:6] != 2'b11) begin   // NEGX
          bad = bad || s.kind == K_IMM || s.kind == K_AREG;
          u = rmw_b(u, s, sz);
          u.size = sz;
          u.alu = ALU_NEGX;
          u.cc = CC_X;
        end else if (op[8:6] == 3'b110 || op[8:6] == 3'b100) begin  // CHK.W, CHK.L
          sz = op[7] ? SZ_W : SZ_L;
          s = ea_dec(op[5:3], op[2:0], sz, 4'd1, w, q_pc);
          n = s.nw;
          bad = s.bad || s.kind == K_AREG;
          u = src_a(u, s, sz);
          u.b_sel = OP_REG; u.b_reg = {2'b00, op[11:9]};
          u.size = sz;
          u.alu = ALU_CHK;
          u.cc = CC_LOGIC;
          u.exc = EXC_CHK; u.exc_vec = 8'd6;
          u.exc_post = 1'b1; u.exc_fmt2 = 1'b1;
        end else if (op[11:6] == 6'b101011) begin                 // TAS
          s = ea_dec(op[5:3], op[2:0], SZ_B, 4'd1, w, q_pc);
          n = s.nw;
          bad = s.bad || s.kind == K_IMM || s.kind == K_AREG;
          u = rmw_b(u, s, SZ_B);
          u.size = SZ_B;
          u.alu = ALU_TAS;
          u.cc = CC_LOGIC;
        end else if (op[11:6] == 6'b100001) begin                 // PEA
          bad = bad || s.kind != K_MEM || s.mode != EAM_PLAIN;
          nsteps = 5'd2;
          if (step == 5'd0) begin
            u = use_ea(u, s);
            u.a_sel = OP_EA;
            u.dst_en = 1'b1; u.dst = R_T0;
          end else begin
            u.ea_en = 1'b1; u.ea_mode = EAM_PREDEC;
            u.base_en = 1'b1; u.base = R_A7; u.step = 3'd4;
            u.store = 1'b1; u.msize = SZ_L;
            u.a_sel = OP_REG; u.a_reg = R_T0;
          end
        end else if (op[11:7] == 5'b11000) begin                  // MULx.L, DIVx.L
          logic        sgn, l64, isdiv;
          logic [4:0]  rl, rh;
          logic [4:0]  sd;
          isdiv = op[6];
          sgn = w[1][11];
          l64 = w[1][10];
          rl = {2'b00, w[1][14:12]};
          rh = {2'b00, w[1][2:0]};
          s = ea_dec(op[5:3], op[2:0], SZ_L, 4'd2, w, q_pc);
          n = 4'd1 + s.nw;
          bad = s.bad || s.kind == K_AREG || w[1][15] || w[1][9:3] != 7'd0;
          unimp = MC68060 && l64;
          // DIVx.L 64: Dr into MDHI first; a remainder or a high long into Dr/Dh
          sd = (isdiv && l64) ? 5'd1 : 5'd0;
          nsteps = sd + 5'd1 + ((l64 || (isdiv && rh != rl)) ? 5'd1 : 5'd0);
          if (step < sd) begin
            u.a_sel = OP_REG; u.a_reg = rh;
            u.alu = ALU_SETHI;
          end else if (step == sd) begin
            u = src_a(u, s, SZ_L);
            u.b_sel = OP_REG; u.b_reg = rl;
            u.md64 = l64;
            u.dst_en = 1'b1; u.dst = rl;
            if (isdiv) begin
              u.alu = sgn ? ALU_DIVSL : ALU_DIVUL;
              u.cc = CC_DIV;
              u.exc = EXC_DIVZ; u.exc_vec = 8'd5;
              u.exc_post = 1'b1; u.exc_fmt2 = 1'b1;
            end else begin
              u.alu = sgn ? ALU_MULSL : ALU_MULUL;
              u.cc = CC_MULL;
            end
          end else begin
            u.a_sel = OP_REG; u.a_reg = rh;
            u.alu = ALU_MDHI;
            u.dst_en = 1'b1; u.dst = rh;
          end
        end else if (op[11] && op[9:7] == 3'b001) begin           // MOVEM
          // An of (An)+ and -(An) changes only in the last uop, so that an
          // access error can restart the MOVEM (a control mode from memory
          // takes its address into T2 first: the registers it is made of
          // may be loaded)
          logic        tomem, pre, post, ctl;
          logic [15:0] mask;
          logic [4:0]  nr, k;
          logic [3:0]  ri;
          logic [4:0]  r;
          logic [31:0] off, tot;
          logic        lastr;              // the An update after the list
          sz = op[6] ? SZ_L : SZ_W;
          tomem = !op[10];
          mask = w[1];
          s = ea_dec(op[5:3], op[2:0], sz, 4'd2, w, q_pc);
          n = 4'd1 + s.nw;
          pre = s.mode == EAM_PREDEC;
          post = s.mode == EAM_POSTINC;
          ctl = s.mode == EAM_PLAIN;
          bad = s.bad || s.kind != K_MEM || (tomem && post) || (!tomem && pre);
          nr = popc16(mask);
          nsteps = (nr == 5'd0) ? 5'd1 : nr + 5'((!tomem && ctl) ? 1 : 0) + 5'((pre || post) ? 1 : 0);
          k = (!tomem && ctl) ? step - 5'd1 : step;
          off = (sz == SZ_L) ? {25'd0, k, 2'b00} : {26'd0, k, 1'b0};
          // (pre_en: the register is the lowest of those left, the list is
          // done when none is, and then all of it was moved: off)
          if (pre_en) begin
            ri = ctz16(pre_mrem);
            lastr = pre_mrem == 16'd0;
            tot = off;
          end else begin
            ri = kth_bit(mask, k);
            lastr = k == nr;
            tot = (sz == SZ_L) ? {25'd0, nr, 2'b00} : {26'd0, nr, 1'b0};
          end
          r = pre ? {1'b0, 4'd15 - ri} : {1'b0, ri};
          u.movem = 1'b1;
          if (mask == 16'd0) begin
            // nothing moves
          end else if (!tomem && ctl && step == 5'd0) begin
            u = use_ea(u, s);
            u.a_sel = OP_EA;
            u.dst_en = 1'b1; u.dst = R_T2;
          end else if ((pre || post) && lastr) begin             // An at last
            u.a_sel = OP_IMM; u.imm = pre ? 32'd0 - tot : tot;
            u.b_sel = OP_REG; u.b_reg = s.base;
            u.alu = ALU_ADD;
            u.dst_en = 1'b1; u.dst = s.base;
          end else begin
            u = use_ea(u, s);
            u.ea_mode = EAM_PLAIN;
            u.msize = sz;
            u.mfirst = k == 5'd0;
            if (pre)       u.disp = 32'd0 - off - ((sz == SZ_L) ? 32'd4 : 32'd2);
            else if (post) u.disp = off;
            else if (tomem) u.disp = s.disp + off;
            else begin u.base_en = 1'b1; u.base = R_T2; u.idx_en = 1'b0; u.disp = off; end
            if (tomem) begin
              u.store = 1'b1;
              u.a_sel = OP_REG; u.a_reg = r;
              if (pre && r == s.base) begin
                // An in the list of -(An): its initial value less the size (68020-68040)
                u.b_sel = OP_REG; u.b_reg = r;
                u.a_sel = OP_IMM;
                u.imm = (sz == SZ_L) ? 32'hFFFFFFFC : 32'hFFFFFFFE;
                u.alu = ALU_ADD;
              end
            end else begin
              // words are sign-extended into the whole register; the
              // register of (An)+ gets the incremented address (the last uop)
              u.load = 1'b1;
              u.a_sel = OP_MEM;
              u.a_sext_w = sz == SZ_W;
              u.dst_en = !(post && r == s.base);
              u.dst = r;
            end
          end
        end else if (op[11:3] == 9'b111001010 || op[11:3] == 9'b100000001) begin   // LINK, LINK.L
          logic [31:0] disp;
          logic [4:0]  an;
          an = {2'b01, op[2:0]};
          n = op[10] ? 4'd1 : 4'd2;
          bad = 1'b0;
          disp = op[10] ? sext16(w[1]) : {w[1], w[2]};
          nsteps = 5'd3;
          case (step)
            5'd0: begin                                          // An onto the stack
              u.ea_en = 1'b1; u.ea_mode = EAM_PREDEC;
              u.base_en = 1'b1; u.base = R_A7; u.step = 3'd4;
              u.store = 1'b1; u.msize = SZ_L;
              if (an == R_A7) begin                              // the decremented SP
                u.a_sel = OP_IMM; u.imm = 32'd4;
                u.b_sel = OP_REG; u.b_reg = R_A7;
                u.alu = ALU_SUB;
              end else begin
                u.a_sel = OP_REG; u.a_reg = an;
              end
            end
            5'd1: begin                                          // An = SP
              u.a_sel = OP_REG; u.a_reg = R_A7;
              u.dst_en = 1'b1; u.dst = an;
            end
            default: begin                                       // SP + d
              u.a_sel = OP_IMM; u.imm = disp;
              u.b_sel = OP_REG; u.b_reg = R_A7;
              u.alu = ALU_ADD;
              u.dst_en = 1'b1; u.dst = R_A7;
            end
          endcase
        end else if (op[11:3] == 9'b111001011) begin             // UNLK
          logic [4:0] an;
          an = {2'b01, op[2:0]};
          n = 4'd0;
          bad = 1'b0;
          nsteps = 5'd3;
          case (step)
            5'd0: begin
              u.ea_en = 1'b1; u.ea_mode = EAM_PLAIN;
              u.base_en = 1'b1; u.base = an;
              u.load = 1'b1; u.msize = SZ_L;
              u.a_sel = OP_MEM;
              u.dst_en = 1'b1; u.dst = R_T0;
            end
            5'd1: begin
              u.a_sel = OP_IMM; u.imm = 32'd4;
              u.b_sel = OP_REG; u.b_reg = an;
              u.alu = ALU_ADD;
              u.dst_en = 1'b1; u.dst = R_A7;
            end
            default: begin
              u.a_sel = OP_REG; u.a_reg = R_T0;
              u.dst_en = 1'b1; u.dst = an;
            end
          endcase
        end else if (op[11:6] == 6'b100000) begin                 // NBCD (not LINK.L)
          s = ea_dec(op[5:3], op[2:0], SZ_B, 4'd1, w, q_pc);
          n = s.nw;
          bad = s.bad || s.kind == K_IMM || s.kind == K_AREG;
          u = rmw_b(u, s, SZ_B);
          u.size = SZ_B;
          u.alu = ALU_NBCD;
          u.cc = CC_BCD;
        end else if (op == 16'h4E77) begin                        // RTR
          n = 4'd0;
          bad = 1'b0;
          nsteps = 5'd2;
          u.ea_en = 1'b1; u.ea_mode = EAM_POSTINC;
          u.base_en = 1'b1; u.base = R_A7;
          u.load = 1'b1;
          if (step == 5'd0) begin
            u.step = 3'd2; u.msize = SZ_W;
            u.a_sel = OP_MEM;
            u.cc = CC_SET;
          end else begin
            u.step = 3'd4; u.msize = SZ_L;
            u.b_sel = OP_MEM;
            u.br = BR_JMP;
          end
        end else if (op == 16'h4E74) begin                        // RTD #d
          n = 4'd1;
          bad = 1'b0;
          nsteps = 5'd3;
          case (step)
            5'd0: begin
              u.ea_en = 1'b1; u.ea_mode = EAM_POSTINC;
              u.base_en = 1'b1; u.base = R_A7; u.step = 3'd4;
              u.load = 1'b1; u.msize = SZ_L;
              u.a_sel = OP_MEM;
              u.dst_en = 1'b1; u.dst = R_T0;
            end
            5'd1: begin
              u.a_sel = OP_IMM; u.imm = sext16(w[1]);
              u.b_sel = OP_REG; u.b_reg = R_A7;
              u.alu = ALU_ADD;
              u.dst_en = 1'b1; u.dst = R_A7;
            end
            default: begin
              u.b_sel = OP_REG; u.b_reg = R_T0;
              u.br = BR_JMP;
            end
          endcase
        end else
          bad = 1'b1;
      end

      // ------------------------------------------- ADDQ, SUBQ, Scc, DBcc
      4'h5: begin
        if (op[7:6] == 2'b11) begin
          u.cond = op[11:8];
          if (op[5:3] == 3'b111 && op[2:0] >= 3'd2 && op[2:0] <= 3'd4) begin   // TRAPcc
            n = (op[2:0] == 3'd2) ? 4'd1 : (op[2:0] == 3'd3) ? 4'd2 : 4'd0;
            u.exc = EXC_COND; u.exc_vec = 8'd7;
            u.exc_post = 1'b1; u.exc_fmt2 = 1'b1;
          end else if (op[5:3] == 3'b001) begin                  // DBcc
            n = 4'd1;
            u.b_sel = OP_REG; u.b_reg = {2'b00, op[2:0]};
            u.dst_en = 1'b1;  u.dst = {2'b00, op[2:0]};
            u.alu = ALU_DBCC;
            u.size = SZ_W;
            u.br = BR_DBCC;
            u.br_target = q_pc + 32'd2 + sext16(w[1]);
            u.br_pred = w[1][15];
          end else begin                                         // Scc
            s = ea_dec(op[5:3], op[2:0], SZ_B, 4'd1, w, q_pc);
            n = s.nw;
            bad = s.bad || s.kind == K_IMM;
            u = dst_w(u, s, SZ_B);
            u.alu = ALU_SCC;
            u.size = SZ_B;
          end
        end else begin                                           // ADDQ, SUBQ
          n = s.nw;
          bad = s.bad || s.kind == K_IMM || (s.kind == K_AREG && sz == SZ_B);
          u.a_sel = OP_IMM;
          u.imm = {28'd0, op[11:9] == 3'd0, op[11:9]};
          u = rmw_b(u, s, sz);
          u.alu = op[8] ? ALU_SUB : ALU_ADD;
          if (s.kind == K_AREG) begin
            u.size = SZ_L;
          end else begin
            u.size = sz;
            u.cc = op[8] ? CC_SUB : CC_ADD;
          end
        end
      end

      // ------------------------------------------------- Bcc, BRA, BSR
      4'h6: begin
        case (op[7:0])
          8'h00:   begin n = 4'd1; bdisp = sext16(w[1]); end
          8'hFF:   begin n = 4'd2; bdisp = {w[1], w[2]}; end
          default: begin n = 4'd0; bdisp = sext8(op[7:0]); end
        endcase
        u.br = BR_BCC;
        u.br_target = q_pc + 32'd2 + bdisp;
        if (op[11:8] == 4'h1) begin                              // BSR
          u.cond = 4'h0;
          u.br_pred = 1'b1;
          u.ea_en = 1'b1; u.ea_mode = EAM_PREDEC;
          u.base_en = 1'b1; u.base = R_A7; u.step = 3'd4;
          u.store = 1'b1; u.msize = SZ_L;
          u.a_sel = OP_IMM;
        end else begin
          u.cond = op[11:8];
          u.br_pred = op[11:8] == 4'h0 || bdisp[31];
        end
      end

      // ------------------------------------------------------------ MOVEQ
      4'h7: begin
        bad = op[8];
        u.a_sel = OP_IMM;
        u.imm = sext8(op[7:0]);
        u.dst_en = 1'b1;
        u.dst = {2'b00, op[11:9]};
        u.cc = CC_LOGIC;
      end

      // ----------------------------------- OR, SUB, CMP/EOR, AND, ADD
      4'h8, 4'h9, 4'hB, 4'hC, 4'hD: begin
        logic [2:0] om;
        logic       arith, cmp, bcd;
        om = op[8:6];
        bcd = (op[15:12] == 4'hC || op[15:12] == 4'h8) && op[8:4] == 5'b10000;
        arith = op[15:12] == 4'h9 || op[15:12] == 4'hD;
        cmp = op[15:12] == 4'hB;
        n = s.nw;
        if ((op[15:12] == 4'hC || op[15:12] == 4'h8) && (om == 3'd3 || om == 3'd7)) begin
          // MULU.W, MULS.W, DIVU.W, DIVS.W
          s = ea_dec(op[5:3], op[2:0], SZ_W, 4'd1, w, q_pc);
          n = s.nw;
          bad = s.bad || s.kind == K_AREG;
          u = src_a(u, s, SZ_W);
          u.b_sel = OP_REG; u.b_reg = {2'b00, op[11:9]};
          u.dst_en = 1'b1;  u.dst = {2'b00, op[11:9]};
          u.size = SZ_L;
          if (op[15:12] == 4'hC) begin
            u.alu = om[2] ? ALU_MULS : ALU_MULU;
            u.cc = CC_LOGIC;
          end else begin
            u.alu = om[2] ? ALU_DIVS : ALU_DIVU;
            u.size = SZ_W;
            u.cc = CC_DIV;
            u.exc = EXC_DIVZ; u.exc_vec = 8'd5;
            u.exc_post = 1'b1; u.exc_fmt2 = 1'b1;
          end
        end else if (om == 3'd3 || om == 3'd7) begin             // ADDA, SUBA, CMPA
          sz = om[2] ? SZ_L : SZ_W;
          s = ea_dec(op[5:3], op[2:0], sz, 4'd1, w, q_pc);
          n = s.nw;
          bad = s.bad || !(arith || cmp);
          u = src_a(u, s, sz);
          u.a_sext_w = !om[2];
          u.b_sel = OP_REG; u.b_reg = {2'b01, op[11:9]};
          u.alu = (op[15:12] == 4'hD) ? ALU_ADD : ALU_SUB;
          if (cmp) u.cc = CC_CMP;
          else begin u.dst_en = 1'b1; u.dst = {2'b01, op[11:9]}; end
        end else if (om[2] && op[5:4] == 2'b00 && (arith || (cmp && op[3]) || bcd)) begin
          // ADDX, SUBX, ABCD, SBCD (Dy,Dx or -(Ay),-(Ax)), CMPM (Ay)+,(Ax)+
          logic [2:0] st;
          st = (sz == SZ_L) ? 3'd4 : (sz == SZ_W) ? 3'd2 : 3'd1;
          n = 4'd0;
          bad = 1'b0;
          u.size = sz;
          if (!op[3]) begin
            u.a_sel = OP_REG; u.a_reg = {2'b00, op[2:0]};
            u.b_sel = OP_REG; u.b_reg = {2'b00, op[11:9]};
            u.dst_en = 1'b1;  u.dst = {2'b00, op[11:9]};
          end else begin
            nsteps = 5'd2;
            u.ea_en = 1'b1; u.base_en = 1'b1;
            u.ea_mode = cmp ? EAM_POSTINC : EAM_PREDEC;
            u.load = 1'b1; u.msize = sz;
            if (step == 5'd0) begin                              // the source into T0
              u.base = {2'b01, op[2:0]};
              u.step = (op[2:0] == 3'd7 && sz == SZ_B) ? 3'd2 : st;
              u.a_sel = OP_MEM;
              u.dst_en = 1'b1; u.dst = R_T0;
              u.size = SZ_L;
            end else begin
              u.base = {2'b01, op[11:9]};
              u.step = (op[11:9] == 3'd7 && sz == SZ_B) ? 3'd2 : st;
              u.a_sel = OP_REG; u.a_reg = R_T0;
              u.b_sel = OP_MEM;
              u.store = !cmp;
            end
          end
          if (bcd)                     begin u.alu = (op[15:12] == 4'hC) ? ALU_ABCD : ALU_SBCD; u.cc = CC_BCD; end
          else if (cmp)                begin u.alu = ALU_SUB;  u.cc = CC_CMP; end
          else if (op[15:12] == 4'hD)  begin u.alu = ALU_ADDX; u.cc = CC_X; end
          else                         begin u.alu = ALU_SUBX; u.cc = CC_X; end
          if (op[3] && step == 5'd0) begin u.alu = ALU_MOVE; u.cc = CC_NONE; end
        end else if (op[15:12] == 4'h8 && (op[8:4] == 5'b10100 || op[8:4] == 5'b11000)) begin
          // PACK, UNPK: Dx,Dy or -(Ax),-(Ay), with the adjustment word
          logic unpk;
          unpk = op[7];
          n = 4'd1;
          bad = 1'b0;
          u.imm = {16'd0, w[1]};
          u.alu = unpk ? ALU_UNPK : ALU_PACK;
          if (!op[3]) begin
            u.a_sel = OP_REG; u.a_reg = {2'b00, op[2:0]};
            u.b_sel = OP_REG; u.b_reg = {2'b00, op[11:9]};
            u.dst_en = 1'b1;  u.dst = {2'b00, op[11:9]};
            u.size = unpk ? SZ_W : SZ_B;
          end else begin
            nsteps = 5'd2;
            u.ea_en = 1'b1; u.ea_mode = EAM_PREDEC; u.base_en = 1'b1;
            if (step == 5'd0) begin                              // the source into T0
              u.base = {2'b01, op[2:0]};
              u.load = 1'b1;
              u.msize = unpk ? SZ_B : SZ_W;
              u.step = (unpk && op[2:0] != 3'd7) ? 3'd1 : 3'd2;
              u.a_sel = OP_MEM;
              u.alu = ALU_MOVE;
              u.dst_en = 1'b1; u.dst = R_T0;
            end else begin
              u.base = {2'b01, op[11:9]};
              u.store = 1'b1;
              u.msize = unpk ? SZ_W : SZ_B;
              u.step = (!unpk && op[11:9] != 3'd7) ? 3'd1 : 3'd2;
              u.a_sel = OP_REG; u.a_reg = R_T0;
            end
          end
        end else if (op[15:12] == 4'hC && (op[8:3] == 6'b101000 || op[8:3] == 6'b101001 ||
                                           op[8:3] == 6'b110001)) begin   // EXG
          logic [4:0] rx, ry;
          rx = {1'b0, op[8:3] == 6'b101001, op[11:9]};
          ry = {1'b0, op[8:3] != 6'b101000, op[2:0]};
          n = 4'd0;
          bad = 1'b0;
          nsteps = 5'd3;
          u.a_sel = OP_REG;
          u.dst_en = 1'b1;
          case (step)
            5'd0:    begin u.a_reg = rx;   u.dst = R_T0; end
            5'd1:    begin u.a_reg = ry;   u.dst = rx; end
            default: begin u.a_reg = R_T0; u.dst = ry; end
          endcase
        end else if (!om[2]) begin                                // <ea>,Dn
          bad = s.bad || (s.kind == K_AREG && (sz == SZ_B || !(arith || cmp)));
          u = src_a(u, s, sz);
          u.b_sel = OP_REG; u.b_reg = {2'b00, op[11:9]};
          u.size = sz;
          if (!cmp) begin u.dst_en = 1'b1; u.dst = {2'b00, op[11:9]}; end
        end else begin                                           // Dn,<ea> and EOR
          bad = s.bad || s.kind == K_IMM || s.kind == K_AREG ||
                (s.kind == K_DREG && !cmp);                       // ADDX, ABCD, EXG...
          u.a_sel = OP_REG; u.a_reg = {2'b00, op[11:9]};
          u = rmw_b(u, s, sz);
          u.size = sz;
        end
        if (!(om == 3'd3 || om == 3'd7) && !(om[2] && op[5:4] == 2'b00 && (arith || (cmp && op[3]) || bcd)) &&
            !(op[15:12] == 4'h8 && (op[8:4] == 5'b10100 || op[8:4] == 5'b11000)) &&
            !(op[15:12] == 4'hC && op[8:4] == 5'b10100) && !(op[15:12] == 4'hC && op[8:3] == 6'b110001))
          case (op[15:12])
            4'h8: begin u.alu = ALU_OR;  u.cc = CC_LOGIC; end
            4'h9: begin u.alu = ALU_SUB; u.cc = CC_SUB; end
            4'hC: begin u.alu = ALU_AND; u.cc = CC_LOGIC; end
            4'hD: begin u.alu = ALU_ADD; u.cc = CC_ADD; end
            default:
              if (om[2]) begin u.alu = ALU_EOR; u.cc = CC_LOGIC; end
              else       begin u.alu = ALU_SUB; u.cc = CC_CMP; end
          endcase
      end

      // ------------------------------------------------ shifts and rotates
      4'hE: if (op[7:6] != 2'b11) begin                         // Dy by #n or Dx
        u.size = sz;
        if (op[5]) begin u.a_sel = OP_REG; u.a_reg = {2'b00, op[11:9]}; end
        else begin u.a_sel = OP_IMM; u.imm = {28'd0, op[11:9] == 3'd0, op[11:9]}; end
        u.b_sel = OP_REG; u.b_reg = {2'b00, op[2:0]};
        u.dst_en = 1'b1;  u.dst = {2'b00, op[2:0]};
        u.alu = shift_alu(op[4:3], op[8]);
        u.cc = CC_SHIFT;
      end else if (!op[11]) begin                                // <ea> by one, word
        s = ea_dec(op[5:3], op[2:0], SZ_W, 4'd1, w, q_pc);
        n = s.nw;
        bad = s.bad || s.kind != K_MEM;
        u.a_sel = OP_IMM; u.imm = 32'd1;
        u = rmw_b(u, s, SZ_W);
        u.size = SZ_W;
        u.alu = shift_alu(op[10:9], op[8]);
        u.cc = CC_SHIFT;
      end else begin                                             // bit fields
        logic [2:0]  kind;
        logic        modify, inreg;
        logic [15:0] x;
        x = w[1];
        kind = op[10:8];
        modify = kind == 3'b010 || kind == 3'b100 || kind == 3'b110 || kind == 3'b111;
        s = ea_dec(op[5:3], op[2:0], SZ_L, 4'd2, w, q_pc);
        n = 4'd1 + s.nw;
        inreg = s.kind == K_DREG;
        bad = s.bad || x[15] || s.kind == K_AREG || s.kind == K_IMM ||
              (s.kind == K_MEM && s.mode != EAM_PLAIN);
        nsteps = inreg ? 5'd2 : modify ? 5'd10 : 5'd5;
        u.cond = {inreg, kind};
        if (step == 5'd0) begin                                  // offset, BFINS source
          u.alu = ALU_BFSETUP;
          if (x[11]) begin u.b_sel = OP_REG; u.b_reg = {2'b00, x[8:6]}; end
          else begin u.b_sel = OP_IMM; u.imm = {27'd0, x[10:6]}; end
          if (kind == 3'b111) begin u.a_sel = OP_REG; u.a_reg = {2'b00, x[14:12]}; end
        end else if ((inreg && step == 5'd1) || (!inreg && step == 5'd4)) begin   // the operation
          u.alu = ALU_BFOP;
          if (x[5]) begin u.a_sel = OP_REG; u.a_reg = {2'b00, x[2:0]}; end
          else begin u.a_sel = OP_IMM; u.imm = {27'd0, x[4:0]}; end
          if (inreg) begin u.b_sel = OP_REG; u.b_reg = s.rg; end
          u.cc = CC_BF;
          if (kind == 3'b001 || kind == 3'b011 || kind == 3'b101) begin
            u.dst_en = 1'b1; u.dst = {2'b00, x[14:12]};
          end else if (inreg && modify) begin
            u.dst_en = 1'b1; u.dst = s.rg;
          end
        end else if (step == 5'd1) begin                         // T2: the first byte
          u = use_ea(u, s);
          u.a_sel = OP_EA;
          u.alu = ALU_BFADDR;
          u.dst_en = 1'b1; u.dst = R_T2;
        end else begin                                           // the bytes
          u.ea_en = 1'b1; u.ea_mode = EAM_PLAIN;
          u.base_en = 1'b1; u.base = R_T2;
          if (step == 5'd2) begin
            u.load = 1'b1; u.msize = SZ_L;
            u.a_sel = OP_MEM; u.alu = ALU_BFLD0;
          end else if (step == 5'd3) begin
            u.disp = 32'd4;
            u.load = 1'b1; u.msize = SZ_B;
            u.a_sel = OP_MEM; u.alu = ALU_BFLD1;
          end else begin
            u.disp = {27'd0, step - 5'd5};
            u.imm = {27'd0, step - 5'd5};
            u.store = 1'b1; u.msize = SZ_B;
            u.alu = ALU_BFST;
          end
        end
      end

      4'hA: ill = 1'b1;

      // ------------------------------------------------ F-line: the FPU
      4'hF: begin
        logic [15:0] c;
        logic [2:0]  m, r;
        logic        gen, cond, ftrapcc, fsr, memea, unimpl, src, single;
        logic [4:0]  ext;               // bytes after the opcode (and command word)
        logic [4:0]  full;
        c = w[1];
        m = op[5:3];
        r = op[2:0];
        gen = op[11:9] == 3'b001 && op[8:7] == 2'b00 && !(op[6] && m == 3'b111 && r > 3'd4);
        cond = gen && op[6];
        ftrapcc = cond && m == 3'b111 && r[2:1] != 2'b00;
        fsr = op[11:9] == 3'b001 && op[8:7] == 2'b10;          // FSAVE, FRESTORE
        memea = (m == 3'b101 || m == 3'b110 || (m == 3'b111 && !r[2])) && !ftrapcc;
        // the modes the instruction does not allow, FMOVECR: Line-F (as TG68K.C)
        src = c[15:13] == 3'b010 || c[15:13] == 3'b100 || c[15:13] == 3'b110;
        single = c[12:10] == 3'b100 || c[12:10] == 3'b010 || c[12:10] == 3'b001;
        unimpl = 1'b0;
        if (gen && !cond) begin
          if (c[15:13] != 3'b000) begin
            if (m == 3'b001 && !((c[15:13] == 3'b100 || c[15:13] == 3'b101) && c[12:10] == 3'b001)) unimpl = 1'b1;
            else if (m == 3'b000 && (c[15:13] == 3'b110 || c[15:13] == 3'b111 ||
                     ((c[15:13] == 3'b100 || c[15:13] == 3'b101) && !single) ||
                     ((c[15:13] == 3'b010 || c[15:13] == 3'b011) &&
                      (c[12:10] == 3'b010 || c[12:10] == 3'b011 || c[12:10] == 3'b101 || c[12:10] == 3'b111))))
              unimpl = 1'b1;
            else if (m == 3'b111 && (r[2:1] == 2'b11 || r == 3'b101)) unimpl = 1'b1;
            else if (m == 3'b111 && (r == 3'b100 || r == 3'b010 || r == 3'b011) && !src) unimpl = 1'b1;
            else if (c[15:13] == 3'b111 && m == 3'b011) unimpl = 1'b1;
            else if (c[15:13] == 3'b110 && m == 3'b100) unimpl = 1'b1;
          end
          if ((c[15:13] == 3'b000 || c[15:13] == 3'b010) && c[14] && c[12:10] == 3'b111) unimpl = 1'b1;
          if (c[15:13] == 3'b001) unimpl = 1'b1;
        end
        if (cond && c[15:5] != 11'd0) unimpl = 1'b1;
        if (MC68060 && gen && !cond) begin
          // FMOVECR with no <ea> goes to the FPU, which leaves it to the
          // M68060SP (vector 11, format $2); with one it stays Line-F
          if (c[15:10] == 6'b010111 && m == 3'b000 && r == 3'b000) unimpl = 1'b0;
          // the unimplemented effective addresses (UM 6.5.3): an extended
          // or packed immediate, FMOVEM.L #imm of more than one control
          // register, FMOVEM.X with a dynamic list
          uea = !unimpl &&
                ((c[15:13] == 3'b010 && (c[12:10] == 3'b010 || c[12:10] == 3'b011) && m == 3'b111 && r == 3'b100) ||
                 (c[15:13] == 3'b100 && m == 3'b111 && r == 3'b100 &&
                  (c[12:10] == 3'b011 || c[12:10] == 3'b101 || c[12:10] == 3'b110 || c[12:10] == 3'b111)) ||
                 ((c[15:13] == 3'b110 || c[15:13] == 3'b111) && c[11]));
        end
        // extension bytes (TG68K.C's fpu_ext)
        full = 5'd2;
        if (w[2][8]) begin                // the index word after the command word
          if (w[2][5:4] == 2'b10) full = full + 5'd2; else if (w[2][5:4] == 2'b11) full = full + 5'd4;
          if (w[2][1:0] == 2'b10) full = full + 5'd2; else if (w[2][1:0] == 2'b11) full = full + 5'd4;
        end
        if (fsr && w[1][8]) begin         // FSAVE/FRESTORE: right after the opcode
          full = 5'd2;
          if (w[1][5:4] == 2'b10) full = full + 5'd2; else if (w[1][5:4] == 2'b11) full = full + 5'd4;
          if (w[1][1:0] == 2'b10) full = full + 5'd2; else if (w[1][1:0] == 2'b11) full = full + 5'd4;
        end
        ext = 5'd0;
        if (ftrapcc)
          ext = (r == 3'b010) ? 5'd2 : (r == 3'b011) ? 5'd4 : 5'd0;
        else
          case (m)
            3'b001: if (cond) ext = 5'd2;                       // FDBcc displacement
            3'b101: ext = 5'd2;
            3'b110: ext = full;
            3'b111:
              case (r)
                3'b000, 3'b010: ext = 5'd2;
                3'b001: ext = 5'd4;
                3'b011: ext = full;
                3'b100:
                  if (c[15:13] == 3'b100)
                    ext = (c[12] ? 5'd4 : 5'd0) + (c[11] ? 5'd4 : 5'd0) + (c[10] ? 5'd4 : 5'd0);
                  else
                    case (c[12:10])
                      3'b000, 3'b001: ext = 5'd4;
                      3'b010, 3'b011: ext = 5'd12;
                      3'b101:         ext = 5'd8;
                      default:        ext = 5'd2;
                    endcase
                default: ext = 5'd0;
              endcase
            default: ext = 5'd0;
          endcase
        // the whole instruction is in the queue before deciding what it is
        // (Line-F included: the command word decides it)
        n = gen ? 4'd1 + 4'(ext >> 1) : 4'd0;
        // (a predicate above 31 is reserved; TG68K.C tests bits 3-0 of it,
        // bit 4 being the signaling one, and so does the core)
        if (op[11:9] == 3'b001 && op[8:7] == 2'b01) begin       // FBcc.W, FBcc.L
          n = op[6] ? 4'd2 : 4'd1;
          bdisp = op[6] ? {w[1], w[2]} : sext16(w[1]);
          u.fbcc = 1'b1;
          u.br = BR_BCC;
          u.br_target = q_pc + 32'd2 + bdisp;
          u.br_pred = bdisp[31];
        end else if ((gen || fsr) && !unimpl) begin
          n = (gen ? 4'd1 : 4'd0) + 4'(ext >> 1);
          // FSAVE, FRESTORE: privileged in any mode (TG68K.C's decode, 68040
          // mode); in supervisor mode the FPU runs every memory mode, as
          // TG68K.C, and a register or a mode 7 without an address is
          // Line-F, where TG68K.C uses an undefined address. The 68060 takes
          // that Line-F in user mode too: it comes before the privilege
          // violation (UM 8.3, exception priorities 2.1 and 2.3)
          priv = fsr;
          ill = fsr && (sup || MC68060) && (m == 3'b000 || m == 3'b001 || (m == 3'b111 && r >= 3'd5));
          u.fpu = 1'b1;
          u.sys = 1'b1;
          u.imm = {16'd0, c};             // the command or condition word
          // the operand address the core gives: the modes it computes, the
          // immediate data (a byte in the low half of its word), FDBcc's
          // displacement
          if (memea) begin
            s = ea_dec(m, r, SZ_L, gen ? 4'd2 : 4'd1, w, q_pc);
            u = use_ea(u, s);
            u.ea_mode = EAM_PLAIN;
          end else if (m == 3'b111 && r == 3'b100 || (cond && m == 3'b001)) begin
            u.ea_en = 1'b1; u.ea_mode = EAM_PLAIN;
            u.disp = q_pc + 32'd4 + ((m == 3'b111 && c[12:10] == 3'b110 && !cond) ? 32'd1 : 32'd0);
          end
        end else if (op[11:8] == 4'h4) begin                    // CINV, CPUSH: no caches yet,
          ill = op[4:3] == 2'b00;                               // but code written before runs
          priv = 1'b1;
          u.mmuop = 2'd3;
          u.sys = 1'b1;
          u.redir = 1'b1;
        end else if (MC68060 && op[11:8] == 4'h5 && (op[7:3] == 5'b10001 || op[7:3] == 5'b11001)) begin
          // PLPAW / PLPAR (An) (68060): An becomes its physical address, the
          // tables searched with DFC as for a write or a read
          priv = 1'b1;
          u.mmuop = 2'd1;
          u.a_sel = OP_REG; u.a_reg = {2'b01, op[2:0]};
          u.dst_en = 1'b1; u.dst = {2'b01, op[2:0]};
          u.sys = 1'b1;
        end else if (op[11:8] == 4'h5 && (op[7:5] == 3'b000 || op[7:3] == 5'b01001 || op[7:3] == 5'b01101)) begin
          // PFLUSH (An) / PFLUSHN / PFLUSHA / PFLUSHAN, PTESTW / PTESTR (An)
          // (the 68060 has no PTEST: Line-F)
          ill = MC68060 && op[6];
          priv = 1'b1;
          u.mmuop = op[6] ? 2'd1 : 2'd2;
          u.a_sel = OP_REG; u.a_reg = {2'b01, op[2:0]};
          u.sys = 1'b1;
        end else if (op[11:6] == 6'b011000 && (!op[5] || (op[4:3] == 2'b00 && w[1][15] && w[1][11:0] == 12'd0))) begin
          // MOVE16: the 16-byte line at the source to the one at the
          // destination (low four address bits ignored), (An)+ by 16 (once
          // if Ax = Ay): T2 the source line, T1 the destination's, four longs
          logic [4:0]  ax, ay;
          logic [31:0] abs_a;
          logic        incx, incy, absrc;
          ax = {2'b01, op[2:0]};
          ay = op[5] ? {2'b01, w[1][14:12]} : {2'b01, op[2:0]};
          abs_a = {w[1], w[2]};
          incx = op[5];
          incy = op[5] || !op[4];
          absrc = !op[5] && op[3];
          n = op[5] ? 4'd1 : 4'd2;
          nsteps = 5'd12;
          u.m16 = 1'b1;
          case (step)
            5'd0, 5'd1: begin                                    // the two addresses
              // step 0 the source, 1 the destination (as they are: the
              // accesses align them, an access error stacks them): (Ax)+
              // form both registers; else the register and the absolute one
              u.dst_en = 1'b1; u.dst = (step == 5'd0) ? R_T2 : R_T1;
              if (op[5]) begin u.a_sel = OP_REG; u.a_reg = (step == 5'd0) ? ax : ay; end
              else if ((step == 5'd0) == absrc) begin u.a_sel = OP_IMM; u.imm = abs_a; end
              else begin u.a_sel = OP_REG; u.a_reg = ay; end
            end
            5'd10: begin                                         // Ax += 16
              u.a_sel = OP_IMM; u.imm = 32'd16;
              u.b_sel = OP_REG; u.b_reg = op[5] ? ax : ay;
              u.alu = ALU_ADD;
              u.dst_en = op[5] ? incx : incy; u.dst = op[5] ? ax : ay;
            end
            5'd11: begin                                         // Ay += 16 (not again if Ax = Ay)
              u.a_sel = OP_IMM; u.imm = 32'd16;
              u.b_sel = OP_REG; u.b_reg = ay;
              u.alu = ALU_ADD;
              u.dst_en = op[5] && ay != ax; u.dst = ay;
            end
            default: begin                                       // the line into T3-T6, then out
              u.ea_en = 1'b1; u.ea_mode = EAM_PLAIN; u.base_en = 1'b1;
              u.msize = SZ_L;
              u.al16 = 1'b1;
              if (step <= 5'd5) begin                            // 2-5: loads
                u.disp = {27'd0, 3'(step - 5'd2), 2'b00};
                u.base = R_T2; u.load = 1'b1; u.a_sel = OP_MEM;
                u.dst_en = 1'b1; u.dst = R_T3 + (step - 5'd2);
              end else begin                                     // 6-9: stores
                u.disp = {27'd0, 3'(step - 5'd6), 2'b00};
                u.base = R_T1; u.store = 1'b1; u.a_sel = OP_REG; u.a_reg = R_T3 + (step - 5'd6);
              end
            end
          endcase
        end else
          ill = 1'b1;                                           // Line-F
      end

      default: bad = 1'b1;
    endcase

    // exceptions found here: no operands, the length of one word (a
    // pre-instruction exception stacks this PC, TRAP #n has no extension).
    // The whole instruction must be in the queue all the same: what it
    // is (MOVEC's register field) can depend on its extension words.
    nv = n;
    // what an F-line is can depend on its first extension word (the FPU's
    // command word, MOVE16's register word): it must be there, not a stale
    // word of the queue, before the instruction is found to be a Line-F
    if (op[15:12] == 4'hF && nv == 4'd0 &&
        ((op[11:9] == 3'b001 && op[8:7] == 2'b00) || op[11:5] == 7'b0110001))
      nv = 4'd1;
    // (an opcode or addressing mode no 68040 or 68060 has is illegal:
    // vector 4, an F-line's 11)
    if (op[15:12] == 4'hA) begin
      u = exc_u(8'd10, 1'b0, 1'b0);
      n = 4'd0;
      nsteps = 5'd1;
    end else if (ill || bad) begin
      u = exc_u(op[15:12] == 4'hF ? 8'd11 : 8'd4, 1'b0, 1'b0);
      n = 4'd0;
      nsteps = 5'd1;
    end else if (uea) begin
      u = exc_u(8'd60, 1'b0, 1'b0);
      n = 4'd0;
      nsteps = 5'd1;
    end else if (unimp) begin
      u = exc_u(8'd61, 1'b0, 1'b0);
      n = 4'd0;
      nsteps = 5'd1;
    end else if (priv && !sup && step == 5'd0) begin   // (the later uops of RTE run in the new mode)
      u = exc_u(8'd8, 1'b0, 1'b0);
      n = 4'd0;
      nsteps = 5'd1;
    end

    // an instruction whose words did not come (a fetch fault): the access
    // error, for the first word it needs
    if (step == 5'd0) begin
      logic       ff;
      logic [3:0] fi, nw_;
      ff = 1'b0; fi = 4'd0;
      nw_ = pre_en ? pre_nv : nv;
      for (int i = 15; i >= 0; i--)
        if (i <= int'(nw_) && qf[i][1]) begin ff = 1'b1; fi = 4'(i); end
      if (ff) begin
        u = '0;
        u.ifault = 1'b1;
        u.imm = q_pc + {27'd0, fi, 1'b0};
        u.cond = {3'd0, qf[fi][0]};
        n = 4'd0;
        nsteps = 5'd1;
      end
    end
    // a faulting write is held unless the instruction writes more than once,
    // is locked or is the FPU's (TG68K.C's acc_wdefer)
    u.wdefer = !(op[15:7] == 9'b010010001 ||                        // MOVEM to memory
                 (op[15:12] == 4'h0 && op[8] && op[5:3] == 3'b001) ||  // MOVEP
                 (op[15:11] == 5'b11101 && op[7:6] == 2'b11) ||       // bit fields
                 op[15:6] == 10'b0100101011 ||                       // TAS
                 (op[15:11] == 5'b00001 && op[10:9] != 2'b00 && op[8:6] == 3'b011) ||   // CAS, CAS2
                 op[15:12] == 4'hF);                                  // FPU, MOVE16

    len_own = 4'd1 + n;
    len = pre_en ? pre_len : len_own;
    u.pc = q_pc;
    u.opcode = op;
    u.next_pc = q_pc + {27'd0, len, 1'b0};
    u.first = step == 5'd0;
    u.last = step == nsteps - 5'd1;
    if (u.br == BR_NONE) u.br_pred = 1'b0;
    if (u.a_sel == OP_IMM && u.store && (u.br != BR_NONE)) u.imm = u.next_pc;  // BSR, JSR
    valid = q_count != 5'd0 && q_count >= {1'b0, 4'd1 + nv};
    nwait = nv;
    snw = s.nw;
    nst = nsteps;
    lbr = (nsteps == 5'd1) ? u.br : jsr_l ? BR_JMP : BR_NONE;
    lpred = (nsteps == 5'd1) ? (u.br != BR_NONE && u.br_pred) : (jsr_l && jsr_p);
  end

endmodule
