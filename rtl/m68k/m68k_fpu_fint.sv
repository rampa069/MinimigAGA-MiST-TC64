// SPDX-License-Identifier: LGPL-3.0-or-later
// The 68060's FINT and FINTRZ (m68k_fpu): an extended value to an integer
// in rounding mode rm, over a few cycles instead of two 64-bit barrel
// shifters: the mantissa shifted right 8 bits a cycle while 8 or more are
// left, then 1 (the bits out kept as the rounding bit and the sticky
// bit), rounded, then normalized left the same way. {inexact, result}, as
// the function it replaces gave; done for one enabled cycle.

module m68k_fpu_fint (
  input  logic        clk,
  input  logic        reset,
  input  logic        ena,
  input  logic        start,
  input  logic [79:0] x,
  input  logic [1:0]  rm,            // 00 nearest, 01 zero, 10 minus, 11 plus
  output logic        done,
  output logic [80:0] res
);

  typedef enum logic [1:0] {F_IDLE, F_RIGHT, F_ROUND, F_LEFT} st_e;
  st_e         st;
  logic        sg, half, rest;
  logic [1:0]  m_rm;
  logic [63:0] m;
  logic [6:0]  n;                    // right: bits still to shift out
  logic [14:0] e;                    // left: the result's exponent
  logic [79:0] x0;                   // the operand (a result as it is)

  always_ff @(posedge clk) begin
    if (reset) begin
      st <= F_IDLE;
      done <= 1'b0;
    end else if (ena) begin
      done <= 1'b0;
      case (st)
        F_IDLE:
          if (start) begin
            int sh;
            x0 <= x;
            sg <= x[79]; m <= x[63:0]; m_rm <= rm;
            half <= 1'b0; rest <= 1'b0;
            sh = 16446 - int'(x[78:64]);                 // fraction bits
            if (x[78:64] == 15'h7FFF || x[63:0] == 64'd0 || sh <= 0) begin
              res <= {1'b0, x};                            // NaN, infinity, zero, an integer
              done <= 1'b1;
            end else begin
              n <= (sh > 65) ? 7'd65 : 7'(sh);             // (past 64 bits all is sticky)
              st <= F_RIGHT;
            end
          end
        F_RIGHT:
          if (n >= 7'd8) begin
            rest <= rest | half | (m[6:0] != 7'd0);
            half <= m[7];
            m <= {8'd0, m[63:8]};
            n <= n - 7'd8;
          end else if (n != 7'd0) begin
            rest <= rest | half;
            half <= m[0];
            m <= {1'b0, m[63:1]};
            n <= n - 7'd1;
          end else
            st <= F_ROUND;
        F_ROUND: begin
          logic up, fr;
          fr = half | rest;
          case (m_rm)
            2'b00:   up = half && (rest || m[0]);        // to nearest, even
            2'b01:   up = 1'b0;                          // to zero
            2'b10:   up = sg && fr;                      // to minus infinity
            default: up = !sg && fr;                     // to plus infinity
          endcase
          if (m == 64'd0 && !up) begin
            res <= {fr, sg, 79'd0};
            done <= 1'b1;
            st <= F_IDLE;
          end else if (m == 64'hFFFF_FFFF_FFFF_FFFF && up) begin
            // (cannot happen: at least one fraction bit went out)
            res <= {fr, sg, 15'(16383 + 64), 64'h8000_0000_0000_0000};
            done <= 1'b1;
            st <= F_IDLE;
          end else begin
            m <= m + {63'd0, up};
            e <= 15'(16383 + 63);
            half <= fr;                                  // (kept: inexact)
            st <= F_LEFT;
          end
        end
        F_LEFT:
          if (m[63:56] == 8'd0) begin
            m <= {m[55:0], 8'd0};
            e <= e - 15'd8;
          end else if (!m[63]) begin
            m <= {m[62:0], 1'b0};
            e <= e - 15'd1;
          end else begin
            res <= {half, sg, e, m};
            done <= 1'b1;
            st <= F_IDLE;
          end
        default: st <= F_IDLE;
      endcase
    end
  end

  logic unused;
  assign unused = &{1'b0, x0};

endmodule
