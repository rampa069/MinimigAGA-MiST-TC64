// SPDX-License-Identifier: LGPL-3.0-or-later
// 68040 FPU: arithmetic unit, fast. m68k_fpu_alu (TG68K_FPU_ALU.vhd) with
// the same results and exception bits in fewer cycles: normalizing with a
// leading zero count and aligning and denormalizing in one shift (the
// sticky bit the same as the 8- and 1-bit steps gave), multiplying 64 x 16
// bits a cycle, dividing and taking square roots two bits a cycle.
// tools/test_fpu_alu.py --fast checks it on the testbed's vectors.
//
// A small sequential unit for the operations the MC68040 FPU performs in
// hardware (M68040 User's Manual, section 9): move with rounding, FABS,
// FNEG, FSQRT, FADD, FSUB, FMUL, FDIV, FCMP, FTST, FSGLDIV, FSGLMUL and the
// conversion of an extended value to an integer. Operands and results are
// 80-bit extended values as held in FP0-FP7. Denormalized and unnormalized
// operands are normalized and tiny results are denormalized here, so nothing
// is left to the M68040FPSP that the 68040 would trap for.
//
// A biased exponent of 0 weighs 2^-16383 like any other exponent (the
// 68881/68882/68040 extended format, not the x87 one): $0000 8000...0 is
// the normalized 2^-16383, the extended minimum exponent is -16383 and a
// denormal is 0.f x 2^-16383 (M68040FPSP round.S nrm_zero).
//
// Intermediate result (68040 UM figure 9-7): sign, 18-bit two's complement
// exponent and a 68-bit mantissa m: m[67] overflow, m[66] integer bit,
// m[65:3] fraction, m[2] guard, m[1] round, m[0] sticky. The result is
// rounded at bit 3 (extended), 14 (double) or 43 (single), within the
// exponent range of that precision.
//
// One operation at a time: start with op, rounding mode and precision and
// the operands (dst is FPn, src the source); done is set for one cycle with
// result and the FPSR EXC bits it sets (snan operr ovfl unfl dz inex2).
// With done, the intermediate result for the exception state frames:
// ires_* before rounding (sign, unbiased exponent and the mantissa with
// guard, round and sticky, as UNFL leaves it in WBTEMP) and rres_* rounded
// to the precision with the exponent unbounded (OVFL).
//
// op   0 move   1 abs   2 neg   3 sqrt   4 add   5 sub   6 mul   7 div
//      8 cmp    9 tst   10 to integer (size in rprec: 0 byte, 1 word,
//                          2 long; the integer is in result[31:0])
//      11 sgldiv  12 sglmul: rounded to a single precision mantissa within
//         the extended exponent range, whatever rprec; FSGLMUL multiplies
//         the operands' mantissas truncated to single precision (PRM; the
//         behaviour of WinUAE's softfloat, from the Previous emulator)
// rprec  0 extended, 1 single, 2 double; to_mem keeps a denormal result of
//        single or double precision as a denormal (for a memory store),
//        where a register keeps it normalized.
//
// Copyright (c) 2026 Ramon Martinez. LGPL-3.0-or-later, as TG68K.C.

module m68k_fpu_alu_fast (
  input  logic               clk,
  input  logic               reset,
  input  logic               ena,      // clock enable
  input  logic               start,
  input  logic [3:0]         op,
  input  logic [1:0]         rmode,
  input  logic [1:0]         rprec,
  input  logic               to_mem,
  input  logic [79:0]        dst,
  input  logic [79:0]        src,
  output logic               busy,
  output logic               done,
  output logic [79:0]        result,
  output logic [5:0]         exc,      // snan operr ovfl unfl dz inex2
  output logic               ires_s,
  output logic signed [17:0] ires_e,
  output logic [67:0]        ires_m,
  output logic signed [17:0] rres_e,
  output logic [67:0]        rres_m
);

  localparam logic [3:0] OP_MOVE = 4'd0, OP_ABS = 4'd1, OP_NEG = 4'd2, OP_SQRT = 4'd3,
                         OP_ADD = 4'd4, OP_SUB = 4'd5, OP_MUL = 4'd6, OP_DIV = 4'd7,
                         OP_CMP = 4'd8, OP_TST = 4'd9, OP_INT = 4'd10,
                         OP_SGLDIV = 4'd11, OP_SGLMUL = 4'd12;

  localparam logic signed [17:0] BIAS = 18'sd16383;
  localparam logic [79:0] DEFAULT_NAN = 80'h7FFF_FFFFFFFFFFFFFFFF;
  localparam logic [14:0] EXP_MAX = 15'h7FFF;

  typedef enum logic [4:0] {
    IDLE, NORM_A, NORM_B, DISPATCH, ALIGN, ADDSUB, MUL_LOOP, DIV_LOOP,
    SQRT_LOOP, DIV_END, SQRT_END, NORMALIZE, DENORM, RND, POSTRND, RENORM,
    PACK, INT_PACK, FINISH
  } state_e;
  state_e state;

  logic [3:0]  opi;
  logic [1:0]  rm, pr;
  logic        tomem;
  logic        sgl;                    // FSGLDIV, FSGLMUL: single mantissa, extended range

  // operands: a = dst, b = src
  logic [79:0]        raw_a, raw_b;
  logic               sa, sb;
  logic signed [17:0] ea, eb;
  logic [63:0]        ma, mb;
  logic               za, zb, ia, ib, na, nb;   // zero, infinity, NaN

  // intermediate result
  logic               s_r;
  logic signed [17:0] e_r;
  logic [67:0]        m_r;
  logic signed [17:0] emin, emax;
  logic               tiny;

  // addition
  logic [67:0]        msm;
  logic signed [17:0] d_r;
  logic               sub_r;
  // multiplication
  logic [63:0]        acc, mbs;
  logic               mstk;
  // division and square root
  logic [64:0]        rem_d;
  logic [70:0]        rem_s;
  logic [133:0]       rad;
  logic [66:0]        root;
  logic [6:0]         cnt;

  logic               x_snan, x_operr, x_ovfl, x_unfl, x_dz, x_inex;
  logic signed [17:0] pre_e, rnd_e;
  logic [67:0]        pre_m, rnd_m;
  logic [79:0]        res;
  logic               done_r;

  // leading zeros of the n most significant bits of v (v holds a 1 there)
  function automatic logic [6:0] lz(input logic [67:0] v, input int n);
    logic [6:0] c;
    logic       f;
    c = 7'd0; f = 1'b0;
    for (int i = 67; i >= 0; i--)
      if (i < n && !f) begin
        if (v[i]) f = 1'b1; else c = c + 7'd1;
      end
    return c;
  endfunction

  // v shifted right by d, the bits shifted out ORed into bit 0
  function automatic logic [67:0] shr_sticky(input logic [67:0] v, input logic [17:0] d);
    logic [67:0] mask;
    if (d >= 18'd68) return {67'd0, v != 68'd0};
    mask = (68'd1 << d) - 68'd1;
    return (v >> d) | {67'd0, (v & mask) != 68'd0};
  endfunction

  // one quotient bit: the remainder and the quotient so far
  function automatic logic [131:0] div_step(input logic [64:0] rd, input logic [66:0] q, input logic [63:0] d);
    if (rd >= {1'b0, d}) return {rd[63:0] - d, 1'b0, q[65:0], 1'b1};
    return {rd[63:0], 1'b0, q[65:0], 1'b0};
  endfunction

  // one root bit: remainder, radicand, root
  function automatic logic [271:0] sqrt_step(input logic [70:0] rs, input logic [133:0] rd, input logic [66:0] rt);
    logic [70:0] r71, tr;
    r71 = {rs[68:0], rd[133:132]};
    tr = {2'b00, rt, 2'b01};
    if (r71 >= tr) return {r71 - tr, rd[131:0], 2'b00, rt[65:0], 1'b1};
    return {r71, rd[131:0], 2'b00, rt[65:0], 1'b0};
  endfunction

  function automatic int lsb_of(input logic [1:0] p);
    case (p)
      2'b01:   return 43;              // single: 24 bits
      2'b10:   return 14;              // double: 53 bits
      default: return 3;               // extended: 64 bits
    endcase
  endfunction

  assign busy   = state != IDLE;
  assign done   = done_r;
  assign result = res;
  assign exc    = {x_snan, x_operr, x_ovfl, x_unfl, x_dz, x_inex};
  assign ires_s = s_r;
  assign ires_e = pre_e;
  assign ires_m = pre_m;
  assign rres_e = rnd_e;
  assign rres_m = rnd_m;

  always_ff @(posedge clk) begin
    logic [80:0]        t81;
    logic [79:0]        p80;
    logic [131:0]       ds;
    logic [271:0]       ss;
    int                 l;
    logic               g, stk, up, inx;
    logic [67:0]        mask;
    logic               sbe;
    logic               a_big;
    logic [70:0]        trial, r71;
    logic signed [17:0] bexp;
    logic [63:0]        lim, ival;
    logic               nsgn;
    logic [67:0]        mr;
    logic signed [17:0] er;

    if (reset) begin
      state  <= IDLE;
      done_r <= 1'b0;
    end else if (ena) begin
      done_r <= 1'b0;
      case (state)
        IDLE:
          if (start) begin
            opi <= op;
            rm <= rmode;
            pr <= rprec;
            sgl <= 1'b0;
            if (op == OP_SGLDIV) begin
              opi <= OP_DIV; pr <= 2'b01; sgl <= 1'b1;
            end else if (op == OP_SGLMUL) begin
              opi <= OP_MUL; pr <= 2'b01; sgl <= 1'b1;
            end
            tomem <= to_mem;
            raw_a <= dst;
            raw_b <= src;
            x_snan <= 1'b0; x_operr <= 1'b0; x_ovfl <= 1'b0;
            x_unfl <= 1'b0; x_dz <= 1'b0; x_inex <= 1'b0;
            tiny <= 1'b0;
            // unpack both operands
            sa <= dst[79];
            sb <= src[79];
            ma <= dst[63:0];
            mb <= src[63:0];
            ea <= $signed({3'b000, dst[78:64]}) - BIAS;
            eb <= $signed({3'b000, src[78:64]}) - BIAS;
            if (dst[78:64] == EXP_MAX) begin
              za <= 1'b0;
              if (dst[62:0] == 63'd0) begin ia <= 1'b1; na <= 1'b0; end
              else begin ia <= 1'b0; na <= 1'b1; end
            end else begin
              ia <= 1'b0; na <= 1'b0;
              za <= dst[63:0] == 64'd0;
            end
            if (src[78:64] == EXP_MAX) begin
              zb <= 1'b0;
              if (src[62:0] == 63'd0) begin ib <= 1'b1; nb <= 1'b0; end
              else begin ib <= 1'b0; nb <= 1'b1; end
            end else begin
              ib <= 1'b0; nb <= 1'b0;
              zb <= src[63:0] == 64'd0;
            end
            // normalized, zero, infinite and NaN operands need no
            // normalization: straight to DISPATCH (or NORM_B)
            if (dst[78:64] == EXP_MAX || dst[63] || dst[63:0] == 64'd0) begin
              if (src[78:64] == EXP_MAX || src[63] || src[63:0] == 64'd0)
                state <= DISPATCH;
              else
                state <= NORM_B;
            end else
              state <= NORM_A;
          end

        // normalize denormal and unnormal operands in one shift
        NORM_A:
          if (za || ia || na || ma[63])
            state <= NORM_B;
          else begin
            ma <= ma << lz({ma, 4'd0}, 68);
            ea <= ea - $signed({11'd0, lz({ma, 4'd0}, 68)});
          end
        NORM_B:
          if (zb || ib || nb || mb[63])
            state <= DISPATCH;
          else begin
            mb <= mb << lz({mb, 4'd0}, 68);
            eb <= eb - $signed({11'd0, lz({mb, 4'd0}, 68)});
          end

        // special operands, or the start of the arithmetic
        DISPATCH: begin
          // precision limits (also the to-integer range: e = 63)
          case (pr)
            2'b01:   begin emin <= -18'sd126;   emax <= 18'sd127;   end
            2'b10:   begin emin <= -18'sd1022;  emax <= 18'sd1023;  end
            default: begin emin <= -18'sd16383; emax <= 18'sd16383; end
          endcase
          if (opi == OP_INT) begin
            emin <= 18'sd63;
            emax <= 18'sd63;
          end
          if (sgl) begin
            emin <= -18'sd16383; emax <= 18'sd16383;
          end
          sbe = (opi == OP_SUB) ? !sb : sb;
          state <= FINISH;
          done_r <= 1'b1;
          // NaN operands: the destination NaN, else the source, quieted;
          // an SNaN sets SNAN (68040 UM 9.7.2)
          if ((opi == OP_ADD || opi == OP_SUB || opi == OP_MUL || opi == OP_DIV || opi == OP_CMP) &&
              (na || nb)) begin
            x_snan <= (na && !raw_a[62]) || (nb && !raw_b[62]);
            if (na) res <= {raw_a[79:63], 1'b1, raw_a[61:0]};
            else    res <= {raw_b[79:63], 1'b1, raw_b[61:0]};
          end else if (nb) begin
            x_snan <= !raw_b[62];
            res <= {raw_b[79:63], 1'b1, raw_b[61:0]};
            if (opi == OP_INT) begin
              // the most significant bits of the quieted mantissa, as the
              // M68040FPSP stores them (68040 UM 9.7.2.2)
              x_operr <= 1'b1;
              res[31:0] <= {raw_b[63], 1'b1, raw_b[61:32]};
              if (pr == 2'b01)
                res[15:0] <= {raw_b[63], 1'b1, raw_b[61:48]};
              else if (pr == 2'b00)
                res[7:0] <= {raw_b[63], 1'b1, raw_b[61:56]};
            end
          end else
            case (opi)
              OP_MOVE, OP_ABS, OP_NEG, OP_TST: begin
                if (opi == OP_ABS)      nsgn = 1'b0;
                else if (opi == OP_NEG) nsgn = !sb;
                else                    nsgn = sb;
                if (ib)
                  res <= {nsgn, EXP_MAX, 64'd0};
                else if (zb)
                  res <= {nsgn, 15'd0, 64'd0};
                else if (opi == OP_TST)
                  res <= raw_b;
                else begin
                  s_r <= nsgn; e_r <= eb; m_r <= {1'b0, mb, 3'b000};
                  state <= NORMALIZE; done_r <= 1'b0;
                end
              end
              OP_INT:
                if (ib) begin
                  // out of range: INT_PACK saturates and sets OPERR
                  s_r <= sb; e_r <= 18'sd1000;
                  m_r <= 68'd1 << 66;
                  state <= INT_PACK; done_r <= 1'b0;
                end else if (zb)
                  res <= 80'd0;
                else begin
                  s_r <= sb; e_r <= eb; m_r <= {1'b0, mb, 3'b000};
                  state <= NORMALIZE; done_r <= 1'b0;
                end
              OP_SQRT:
                if (zb)
                  res <= {sb, 15'd0, 64'd0};
                else if (sb) begin
                  x_operr <= 1'b1; res <= DEFAULT_NAN;
                end else if (ib)
                  res <= {1'b0, EXP_MAX, 64'd0};
                else begin
                  s_r <= 1'b0;
                  e_r <= eb >>> 1;
                  if (eb[0]) rad <= {mb, 70'd0};
                  else       rad <= {1'b0, mb, 69'd0};
                  rem_s <= '0;
                  root <= '0;
                  cnt <= 7'd0;
                  state <= SQRT_LOOP; done_r <= 1'b0;
                end
              OP_ADD, OP_SUB:
                if (ia && ib && sa != sbe) begin
                  x_operr <= 1'b1; res <= DEFAULT_NAN;
                end else if (ia)
                  res <= {sa, EXP_MAX, 64'd0};
                else if (ib)
                  res <= {sbe, EXP_MAX, 64'd0};
                else if (za && zb) begin
                  if (sa == sbe)        res <= {sa, 15'd0, 64'd0};
                  else if (rm == 2'b10) res <= {1'b1, 15'd0, 64'd0};
                  else                  res <= {1'b0, 15'd0, 64'd0};
                end else if (za) begin
                  s_r <= sbe; e_r <= eb; m_r <= {1'b0, mb, 3'b000};
                  state <= NORMALIZE; done_r <= 1'b0;
                end else if (zb) begin
                  s_r <= sa; e_r <= ea; m_r <= {1'b0, ma, 3'b000};
                  state <= NORMALIZE; done_r <= 1'b0;
                end else begin
                  a_big = ea > eb || (ea == eb && ma >= mb);
                  if (a_big) begin
                    s_r <= sa; e_r <= ea; m_r <= {1'b0, ma, 3'b000};
                    msm <= {1'b0, mb, 3'b000}; d_r <= ea - eb;
                  end else begin
                    s_r <= sbe; e_r <= eb; m_r <= {1'b0, mb, 3'b000};
                    msm <= {1'b0, ma, 3'b000}; d_r <= eb - ea;
                  end
                  sub_r <= sa ^ sbe;
                  state <= ALIGN; done_r <= 1'b0;
                end
              OP_MUL:
                if ((za && ib) || (ia && zb)) begin
                  x_operr <= 1'b1; res <= DEFAULT_NAN;
                end else if (ia || ib)
                  res <= {sa ^ sb, EXP_MAX, 64'd0};
                else if (za || zb)
                  res <= {sa ^ sb, 15'd0, 64'd0};
                else begin
                  s_r <= sa ^ sb;
                  e_r <= ea + eb;
                  acc <= '0;
                  mbs <= mb;
                  if (sgl) begin
                    ma <= {ma[63:40], 40'd0};
                    mbs <= {mb[63:40], 40'd0};
                  end
                  mstk <= 1'b0;
                  cnt <= 7'd0;
                  state <= MUL_LOOP; done_r <= 1'b0;
                end
              OP_DIV:
                if ((za && zb) || (ia && ib)) begin
                  x_operr <= 1'b1; res <= DEFAULT_NAN;
                end else if (ia)
                  res <= {sa ^ sb, EXP_MAX, 64'd0};
                else if (ib)
                  res <= {sa ^ sb, 15'd0, 64'd0};
                else if (zb) begin
                  x_dz <= 1'b1;
                  res <= {sa ^ sb, EXP_MAX, 64'd0};
                end else if (za)
                  res <= {sa ^ sb, 15'd0, 64'd0};
                else begin
                  s_r <= sa ^ sb;
                  if (ma < mb) begin
                    rem_d <= {ma, 1'b0};
                    e_r <= ea - eb - 18'sd1;
                  end else begin
                    rem_d <= {1'b0, ma};
                    e_r <= ea - eb;
                  end
                  m_r <= '0;
                  cnt <= 7'd0;
                  state <= DIV_LOOP; done_r <= 1'b0;
                end
              OP_CMP:
                // condition codes of the PRM FCMP table (I always clear)
                if ((za && zb) || (ia && ib && sa == sb))
                  res <= {sa, 15'd0, 64'd0};
                else begin
                  // order: -inf < finite < +inf; equal finite values give Z
                  if (raw_a == raw_b && !ia)            res <= 80'd0;
                  else if (ia)                          res <= {sa, 15'h3FFF, 64'h8000000000000000};
                  else if (ib)                          res <= {!sb, 15'h3FFF, 64'h8000000000000000};
                  else if (za)                          res <= {!sb, 15'h3FFF, 64'h8000000000000000};
                  else if (zb)                          res <= {sa, 15'h3FFF, 64'h8000000000000000};
                  else if (sa != sb)                    res <= {sa, 15'h3FFF, 64'h8000000000000000};
                  else if (ea == eb && ma == mb)        res <= 80'd0;
                  else if (ea > eb || (ea == eb && ma > mb))
                    // |a| > |b|: a < b when both are negative
                    res <= {sa, 15'h3FFF, 64'h8000000000000000};
                  else
                    res <= {!sa, 15'h3FFF, 64'h8000000000000000};
                end
              default:
                res <= 80'd0;
            endcase
        end

        // addition: align the smaller operand, 8 or 1 bits a cycle
        ALIGN:
          if (d_r == 18'sd0)
            state <= ADDSUB;
          else begin
            if (d_r > 18'sd70) msm <= 68'd1;  // only the sticky bit is left
            else               msm <= shr_sticky(msm, d_r);
            d_r <= '0;
          end
        ADDSUB:
          if (sub_r) begin
            m_r <= m_r - msm;
            if (m_r == msm) begin
              // exact cancellation: +0, or -0 rounding toward minus infinity
              if (rm == 2'b10) res <= {1'b1, 15'd0, 64'd0};
              else             res <= {1'b0, 15'd0, 64'd0};
              state <= FINISH;
              done_r <= 1'b1;
            end else
              state <= NORMALIZE;
          end else begin
            m_r <= m_r + msm;
            state <= NORMALIZE;
          end

        // multiplication: 64 x 16 bits a cycle, least significant first;
        // acc holds the product shifted right by 16 per cycle
        MUL_LOOP: begin
          p80 = {16'd0, ma} * {64'd0, mbs[15:0]};
          t81 = {17'd0, acc} + {1'b0, p80};
          acc <= t81[79:16];
          mbs <= {16'h0000, mbs[63:16]};
          if (cnt == 7'd3) begin
            m_r <= {t81[79:16], t81[15], t81[14], t81[13], (|t81[12:0]) | mstk};
            state <= NORMALIZE;
          end else begin
            if (t81[15:0] != 16'h0000) mstk <= 1'b1;
            cnt <= cnt + 7'd1;
          end
        end

        // division: one quotient bit a cycle, weights 2^0 to 2^-66
        DIV_LOOP: begin                        // two bits a cycle, the last one alone
          ds = div_step(rem_d, m_r[66:0], mb);
          if (cnt != 7'd66) ds = div_step(ds[131:67], ds[66:0], mb);
          rem_d <= ds[131:67];
          m_r <= {1'b0, ds[66:0]};
          if (cnt >= 7'd65) state <= DIV_END;
          else              cnt <= cnt + 7'd2;
        end
        DIV_END: begin                         // a non-zero remainder is sticky
          if (rem_d != 65'd0) m_r[0] <= 1'b1;
          state <= NORMALIZE;
        end

        // square root: one root bit a cycle, weights 2^0 to 2^-66
        SQRT_LOOP: begin                       // two bits a cycle, the last one alone
          ss = sqrt_step(rem_s, rad, root);
          if (cnt != 7'd66) ss = sqrt_step(ss[271:201], ss[200:67], ss[66:0]);
          rem_s <= ss[271:201];
          rad <= ss[200:67];
          root <= ss[66:0];
          if (cnt >= 7'd65) state <= SQRT_END;
          else              cnt <= cnt + 7'd2;
        end
        SQRT_END: begin                        // a non-zero remainder is sticky
          m_r <= {1'b0, root};
          if (rem_s != 71'd0) m_r[0] <= 1'b1;
          state <= NORMALIZE;
        end

        // bring the integer bit to m[66]
        NORMALIZE:
          if (m_r == 68'd0)
            state <= PACK;
          else if (m_r[67]) begin
            m_r <= {1'b0, m_r[67:2], m_r[1] | m_r[0]};
            e_r <= e_r + 18'sd1;
          end else if (m_r[66]) begin
            pre_e <= e_r;
            pre_m <= m_r;
            if (e_r >= emin) state <= RND;     // not tiny: no DENORM step
            else             state <= DENORM;
          end else begin
            m_r <= m_r << lz({m_r[66:0], 1'b0}, 68);
            e_r <= e_r - $signed({11'd0, lz({m_r[66:0], 1'b0}, 68)});
          end

        // a tiny result is shifted right to the minimum exponent
        DENORM:
          if (e_r >= emin)
            state <= RND;
          else begin
            if (opi != OP_INT) tiny <= 1'b1;
            if (emin - e_r > 18'sd70) m_r <= 68'd1;
            else                      m_r <= shr_sticky(m_r, emin - e_r);
            e_r <= emin;
          end

        // round at the precision's last bit
        RND: begin
          l = (opi == OP_INT) ? 3 : lsb_of(pr);
          g = m_r[l - 1];
          stk = 1'b0;
          for (int i = 0; i <= 66; i++)
            if (i < l - 1 && m_r[i]) stk = 1'b1;
          inx = g | stk;
          case (rm)
            2'b00:   up = g & (stk | m_r[l]);
            2'b01:   up = 1'b0;
            2'b10:   up = inx & s_r;
            default: up = inx & !s_r;
          endcase
          mask = '1;
          for (int i = 0; i <= 66; i++)
            if (i < l) mask[i] = 1'b0;
          if (up) mr = (m_r & mask) + (68'd1 << l);
          else    mr = m_r & mask;
          // a carry out of the rounding (what POSTRND did)
          er = e_r;
          if (mr[67]) begin
            mr = {1'b0, mr[67:1]};
            er = e_r + 18'sd1;
          end
          m_r <= mr;
          e_r <= er;
          rnd_m <= mr;
          rnd_e <= er;
          if (inx) x_inex <= 1'b1;
          if (tiny) x_unfl <= 1'b1;
          state <= (opi == OP_INT) ? INT_PACK : PACK;
        end

        POSTRND: begin
          if (m_r[67]) begin
            m_r <= {1'b0, m_r[67:1]};
            e_r <= e_r + 18'sd1;
          end
          state <= (opi == OP_INT) ? INT_PACK : PACK;
        end

        // store the result as an extended value
        PACK: begin
          done_r <= 1'b1;
          state <= FINISH;
          if (m_r[66:0] == 67'd0)
            res <= {s_r, 15'd0, 64'd0};
          else if (e_r > emax) begin
            x_ovfl <= 1'b1;
            x_inex <= 1'b1;
            if (rm == 2'b00 || (rm == 2'b10 && s_r) || (rm == 2'b11 && !s_r))
              res <= {s_r, EXP_MAX, 64'd0};
            else begin
              // largest number of the precision; FSGLDIV and FSGLMUL give
              // the largest extended number (M68040FPSP util.S ovf_fsgl)
              bexp = emax + BIAS;
              if (sgl)
                res <= {s_r, bexp[14:0], 64'hFFFFFFFFFFFFFFFF};
              else
                case (pr)
                  2'b01:   res <= {s_r, bexp[14:0], 64'hFFFFFF0000000000};
                  2'b10:   res <= {s_r, bexp[14:0], 64'hFFFFFFFFFFFFF800};
                  default: res <= {s_r, bexp[14:0], 64'hFFFFFFFFFFFFFFFF};
                endcase
            end
          end else if (m_r[66]) begin
            bexp = e_r + BIAS;
            res <= {s_r, bexp[14:0], m_r[66:3]};
          end else if (pr == 2'b00 || tomem || sgl) begin
            // denormal at the precision's minimum exponent
            if (pr == 2'b00 || sgl)
              res <= {s_r, 15'd0, m_r[66:3]};
            else begin
              bexp = e_r + BIAS;
              res <= {s_r, bexp[14:0], m_r[66:3]};
            end
          end else begin
            // a single or double denormal is a normal extended number
            done_r <= 1'b0;
            state <= RENORM;
          end
        end
        RENORM:
          if (m_r[66]) begin
            bexp = e_r + BIAS;
            res <= {s_r, bexp[14:0], m_r[66:3]};
            done_r <= 1'b1;
            state <= FINISH;
          end else begin
            m_r <= m_r << lz({m_r[66:0], 1'b0}, 68);
            e_r <= e_r - $signed({11'd0, lz({m_r[66:0], 1'b0}, 68)});
          end

        // integer result: magnitude in m[66:3], range by size
        INT_PACK: begin
          done_r <= 1'b1;
          state <= FINISH;
          ival = m_r[66:3];
          case (pr)
            2'b00:   lim = s_r ? 64'h80 : 64'h7F;
            2'b01:   lim = s_r ? 64'h8000 : 64'h7FFF;
            default: lim = s_r ? 64'h80000000 : 64'h7FFFFFFF;
          endcase
          if (e_r > emax || ival > lim) begin
            // saturate: the largest integer of the sign (for a negative
            // value lim is already the pattern of -2^(n-1))
            x_operr <= 1'b1;
            x_inex <= 1'b0;
            res <= {48'd0, lim[31:0]};
          end else if (s_r)
            res <= {16'd0, 64'd0 - ival};
          else
            res <= {16'd0, ival};
        end

        FINISH:
          state <= IDLE;

        default:
          state <= IDLE;
      endcase
    end
  end

endmodule
