// SPDX-License-Identifier: LGPL-3.0-or-later
// The length of an instruction from its words, as m68k_decode finds it,
// for the core's early decode (PRELEN, the 68060's IED): only the
// extension words, flat: the effective address's words at each place it
// can begin, made in parallel, then the instruction's form picks. It
// gives decode's length for every instruction decode takes (one that
// raises an exception there may differ: decode gives it one word);
// tools/test_ilen.py checks it against m68k_decode on every opcode.
// Also what decode finds of a jump: its last uop's (BR_NONE for the
// multi-uop ones but JSR), the target of the ones it knows, its static
// prediction.

module m68k_ilen
  import m68k_pkg::*;
#(
  parameter bit MC68060 = 1'b0
)
(
  input  logic [15:0] w [16],
  input  logic [31:0] pc,
  output logic [3:0]  len,            // in words
  output br_e         lbr,
  output logic [31:0] tgt,
  output logic        lpred
);

  // the extension words of an effective address (mode, reg) of size sz
  // whose first extension word is x (the brief or full format word)
  function automatic logic [3:0] eanw(input logic [2:0] mode, input logic [2:0] r,
                                      input size_e sz, input logic [15:0] x);
    logic [3:0] ix;
    ix = !x[8] ? 4'd1 :
         4'd1 + ((x[5:4] == 2'b10) ? 4'd1 : (x[5:4] == 2'b11) ? 4'd2 : 4'd0)
              + ((x[1:0] == 2'b10) ? 4'd1 : (x[1:0] == 2'b11) ? 4'd2 : 4'd0);
    case (mode)
      3'd5:    return 4'd1;
      3'd6:    return ix;
      3'd7:
        case (r)
          3'd0, 3'd2: return 4'd1;
          3'd1:       return 4'd2;
          3'd3:       return ix;
          3'd4:       return (sz == SZ_L) ? 4'd2 : 4'd1;
          default:    return 4'd0;
        endcase
      default: return 4'd0;
    endcase
  endfunction

  function automatic size_e sz2(input logic [1:0] s);
    return (s == 2'b00) ? SZ_B : (s == 2'b01) ? SZ_W : SZ_L;
  endfunction

  logic [15:0] op;
  assign op = w[0];

  always_comb begin
    size_e       sz, msz, csz;
    logic [3:0]  s1, s1w, s1l, s1b, s2, s2l, s2c, s3, d1, n;
    logic [3:0]  ms;                   // MOVE: the source's words
    logic [3:0]  md [6];               // MOVE: the destination's, after 0-5 of the source's
    logic [2:0]  om;
    logic [15:0] c;                    // F-line
    logic [2:0]  m, r;
    logic        gen, cond, ftrapcc, fsr;
    logic [4:0]  ext, full;
    sz = sz2(op[7:6]);
    om = op[8:6];
    // the F-line's extension (as decode, TG68K.C's fpu_ext)
    c = w[1];
    m = op[5:3];
    r = op[2:0];
    gen = op[11:9] == 3'b001 && op[8:7] == 2'b00 && !(op[6] && m == 3'b111 && r > 3'd4);
    cond = gen && op[6];
    ftrapcc = cond && m == 3'b111 && r[2:1] != 2'b00;
    fsr = op[11:9] == 3'b001 && op[8:7] == 2'b10;
    full = 5'd2;
    if (w[2][8]) begin
      if (w[2][5:4] == 2'b10) full = full + 5'd2; else if (w[2][5:4] == 2'b11) full = full + 5'd4;
      if (w[2][1:0] == 2'b10) full = full + 5'd2; else if (w[2][1:0] == 2'b11) full = full + 5'd4;
    end
    if (fsr && w[1][8]) begin
      full = 5'd2;
      if (w[1][5:4] == 2'b10) full = full + 5'd2; else if (w[1][5:4] == 2'b11) full = full + 5'd4;
      if (w[1][1:0] == 2'b10) full = full + 5'd2; else if (w[1][1:0] == 2'b11) full = full + 5'd4;
    end
    ext = 5'd0;
    if (ftrapcc)
      ext = (r == 3'b010) ? 5'd2 : (r == 3'b011) ? 5'd4 : 5'd0;
    else
      case (m)
        3'b001: if (cond) ext = 5'd2;
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
    // the source (or only) effective address at word 1, 2 or 3
    s1  = eanw(op[5:3], op[2:0], sz, w[1]);
    s1w = eanw(op[5:3], op[2:0], SZ_W, w[1]);
    s1l = eanw(op[5:3], op[2:0], SZ_L, w[1]);
    s1b = eanw(op[5:3], op[2:0], SZ_B, w[1]);
    s2  = eanw(op[5:3], op[2:0], sz, w[2]);
    s2l = eanw(op[5:3], op[2:0], SZ_L, w[2]);
    csz = (op[10:9] == 2'b00) ? SZ_B : (op[10:9] == 2'b01) ? SZ_W : SZ_L;     // CMP2, CHK2
    s2c = eanw(op[5:3], op[2:0], csz, w[2]);
    s3  = eanw(op[5:3], op[2:0], sz, w[3]);
    // MOVE: the destination after the source's words
    msz = (op[13:12] == 2'b01) ? SZ_B : (op[13:12] == 2'b11) ? SZ_W : SZ_L;
    ms = eanw(op[5:3], op[2:0], msz, w[1]);
    for (int i = 0; i < 6; i++) md[i] = eanw(op[8:6], op[11:9], msz, w[1 + i]);
    d1 = (ms < 4'd6) ? md[ms[2:0]] : 4'd0;

    n = 4'd0;
    case (op[15:12])
      4'h1, 4'h2, 4'h3: n = ms + d1;
      4'h0:
        if (op[5:0] == 6'h3C && !op[8] && !op[7] &&
            (op[11:9] == 3'b000 || op[11:9] == 3'b001 || op[11:9] == 3'b101))
          n = 4'd1;                                            // to CCR, SR
        else if (!op[11] && !op[8] && op[7:6] == 2'b11 && op[10:9] != 2'b11)
          n = 4'd1 + s2c;                                      // CMP2, CHK2
        else if (op[11] && !op[8] && op[7:6] == 2'b11 && op[10:9] != 2'b00)
          n = (op[5:0] != 6'h3C) ? 4'd1 + s2l : 4'd2;           // CAS, CAS2 (no immediate)
        else if (op[8] && op[5:3] == 3'b001)
          n = 4'd1;                                            // MOVEP
        else if (op[8])
          n = s1b;                                             // BTST.. Dn,<ea>
        else if (op[11:8] == 4'b1000)
          n = 4'd1 + eanw(op[5:3], op[2:0], SZ_B, w[2]);       // BTST.. #n,<ea>
        else if (op[11:8] == 4'b1110 && op[7:6] != 2'b11)
          n = MC68060 ? 4'd1 + s2 : 4'd0;                      // MOVES
        else
          n = ((sz == SZ_L) ? 4'd2 : 4'd1) + ((sz == SZ_L) ? s3 : s2);   // ORI, ANDI, SUBI, ADDI, EORI, CMPI
      4'h4:
        if (op[11:6] == 6'b011011 || op[11:6] == 6'b010011)
          n = s1w;                                             // MOVE to SR, CCR
        else if (op[11:6] == 6'b001011 || op[11:6] == 6'b000011 || op == 16'h4AFC)
          n = s1;                                              // MOVE from SR, CCR; ILLEGAL (as decode)
        else if (op == 16'h4E72 || op == 16'h4E74 || op[11:1] == 11'b11100111101)
          n = 4'd1;                                            // STOP, RTD, MOVEC
        else if (op[11:4] == 8'hE4 || op[11:4] == 8'hE6 || op[11:3] == 9'b111001011 ||
                 op == 16'h4E70 || op == 16'h4E71 || op == 16'h4E73 || op == 16'h4E75 ||
                 op == 16'h4E76 || op == 16'h4E77 || op[11:3] == 9'b100001000)
          n = 4'd0;                                            // TRAP, MOVE USP, UNLK, RESET.., SWAP
        else if (op[11:3] == 9'b111001010)
          n = 4'd1;                                            // LINK.W
        else if (op[11:3] == 9'b100000001)
          n = 4'd2;                                            // LINK.L
        else if (op[5:3] == 3'b000 && (op[11:6] == 6'b100010 || op[11:6] == 6'b100011 || op[11:6] == 6'b100111))
          n = 4'd0;                                            // EXT, EXTB
        else if (op[11:7] == 5'b11000)
          n = 4'd1 + s2l;                                      // MULx.L, DIVx.L
        else if (op[11] && op[9:7] == 3'b001)
          n = 4'd1 + s2;                                       // MOVEM
        else if (op[8:6] == 3'b110)
          n = s1w;                                             // CHK.W
        else if (op[8:6] == 3'b100 && !(op[11:6] == 6'b100000 || op[11:6] == 6'b001000 || op[11:6] == 6'b010000 ||
                                        op[11:6] == 6'b011000 || op[11:6] == 6'b101000 || op[11:6] == 6'b000000))
          n = s1l;                                             // CHK.L
        else if (op[11:6] == 6'b100000 || op[11:6] == 6'b101011)
          n = s1b;                                             // NBCD, TAS
        else
          n = s1;                                              // LEA, PEA, JMP, JSR, CLR, NEG.., TST
      4'h5:
        if (op[7:6] == 2'b11) begin
          if (op[5:3] == 3'b111 && op[2:0] >= 3'd2 && op[2:0] <= 3'd4)
            n = (op[2:0] == 3'd2) ? 4'd1 : (op[2:0] == 3'd3) ? 4'd2 : 4'd0;   // TRAPcc
          else if (op[5:3] == 3'b001)
            n = 4'd1;                                          // DBcc
          else
            n = s1b;                                           // Scc
        end else
          n = s1;                                              // ADDQ, SUBQ
      4'h6: n = (op[7:0] == 8'h00) ? 4'd1 : (op[7:0] == 8'hFF) ? 4'd2 : 4'd0;
      4'h7, 4'hA: n = 4'd0;
      4'h8, 4'h9, 4'hB, 4'hC, 4'hD:
        if ((op[15:12] == 4'hC || op[15:12] == 4'h8) && (om == 3'd3 || om == 3'd7))
          n = s1w;                                             // MUL.W, DIV.W
        else if (om == 3'd3 || om == 3'd7)
          n = om[2] ? s1l : s1w;                               // ADDA, SUBA, CMPA
        else if (op[15:12] == 4'h8 && (op[8:4] == 5'b10100 || op[8:4] == 5'b11000))
          n = 4'd1;                                            // PACK, UNPK
        else if (om[2] && op[5:4] == 2'b00 && op[15:12] != 4'hB)
          n = 4'd0;                                            // ADDX, SUBX, ABCD, SBCD, EXG
        else if (op[15:12] == 4'hB && om[2] && op[5:3] == 3'b001)
          n = 4'd0;                                            // CMPM
        else
          n = s1;
      4'hE:
        if (op[7:6] != 2'b11) n = 4'd0;
        else if (!op[11]) n = s1w;
        else n = 4'd1 + s2l;                                   // bit fields
      default: begin                                           // F-line
        if (op[11:9] == 3'b001 && op[8:7] == 2'b01)
          n = op[6] ? 4'd2 : 4'd1;                             // FBcc
        else if (gen || fsr)
          n = (gen ? 4'd1 : 4'd0) + 4'(ext >> 1);
        else if (op[11:6] == 6'b011000)
          n = op[5] ? 4'd1 : 4'd2;                             // MOVE16
        else
          n = 4'd0;
        // (decode waits for the word that tells what it is: as there)
        if (n == 4'd0 && ((op[11:9] == 3'b001 && op[8:7] == 2'b00) || op[11:5] == 7'b0110001))
          n = 4'd1;
      end
    endcase
    len = 4'd1 + n;
  end

  // the jump
  always_comb begin
    logic [31:0] bd, jd, fd, xb;
    logic        jk, jf;               // JMP, JSR: a target known here; by the full format
    lbr = BR_NONE; tgt = 32'd0; lpred = 1'b0;
    bd = (op[7:0] == 8'h00) ? {{16{w[1][15]}}, w[1]} : (op[7:0] == 8'hFF) ? {w[1], w[2]} :
         {{24{op[7]}}, op[7:0]};
    // (also the full format with the base and the index suppressed and no
    // memory indirection: bd, after the PC unless BS for (bd,PC))
    xb = (w[1][5:4] == 2'b10) ? {{16{w[2][15]}}, w[2]} : (w[1][5:4] == 2'b11) ? {w[2], w[3]} : 32'd0;
    jf = w[1][8] && w[1][6] && w[1][2:0] == 3'b000 &&
         ((op[5:3] == 3'b110 && w[1][7]) || (op[5:3] == 3'b111 && op[2:0] == 3'd3));
    jk = (op[5:3] == 3'b111 && op[2:0] <= 3'd2) || jf;
    fd = op[6] ? {w[1], w[2]} : {{16{w[1][15]}}, w[1]};
    jd = jf ? ((op[5:3] == 3'b111 && !w[1][7]) ? pc + 32'd2 + xb : xb) :
         (op[2:0] == 3'd0) ? {{16{w[1][15]}}, w[1]} : (op[2:0] == 3'd1) ? {w[1], w[2]} :
         pc + 32'd2 + {{16{w[1][15]}}, w[1]};
    case (op[15:12])
      4'h6: begin
        lbr = BR_BCC; tgt = pc + 32'd2 + bd;
        lpred = op[11:8] == 4'h1 || op[11:8] == 4'h0 || bd[31];
      end
      4'h5:
        if (op[7:6] == 2'b11 && op[5:3] == 3'b001) begin    // DBcc
          lbr = BR_DBCC; tgt = pc + 32'd2 + {{16{w[1][15]}}, w[1]}; lpred = w[1][15];
        end
      4'h4:
        if (op == 16'h4E75) lbr = BR_JMP;                  // RTS
        else if (op[11:6] == 6'b111011 || op[11:6] == 6'b111010) begin   // JMP, JSR
          lbr = BR_JMP; tgt = jk ? jd : 32'd0; lpred = jk;
        end
      4'hF:
        if (op[11:9] == 3'b001 && op[8:7] == 2'b01) begin   // FBcc
          lbr = BR_BCC; tgt = pc + 32'd2 + fd; lpred = fd[31];
        end
      default: ;
    endcase
  end

endmodule
