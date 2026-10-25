// SPDX-License-Identifier: LGPL-3.0-or-later
// Bit field unit (BFTST BFEXTU BFCHG BFEXTS BFCLR BFFFO BFSET BFINS), a
// bit a cycle instead of the barrel shifters of the field: from the
// field's least significant bit up, each bit read (into the extracted
// value, the highest 1 for BFFFO, N and Z) and written back in place
// (changed, cleared, set, or the next bit of the BFINS source), in a data
// register (the field wraps around) or in the five bytes at the field in
// memory (BF_DATA). It gives what m68k_core's combinational bit field did:
// the result for a register destination, the new bytes, N and Z (of the
// inserted value for BFINS). done for one enabled cycle, width + 1 after
// start; a start drops an operation still running (its uop flushed).

module m68k_bfu (
  input  logic        clk,
  input  logic        rst,
  input  logic        ena,
  input  logic        start,
  input  logic        in_reg,        // the field is in a data register (else in memory)
  input  logic [2:0]  op,            // the opcode's bits 10-8 (cond[2:0] of the uop)
  input  logic [31:0] off,           // the offset
  input  logic [4:0]  w,             // the width (0: 32)
  input  logic [31:0] val,           // the register
  input  logic [39:0] data,          // the bytes at the field
  input  logic [31:0] ins,           // the BFINS source
  output logic        done,
  output logic [31:0] res,           // the result for a register destination
  output logic [39:0] newd,          // the bytes with the new field
  output logic        n,
  output logic        z
);

  logic        busy;
  logic [5:0]  bw, i;                // the width, the bit of the field
  logic [5:0]  p;                    // its position in the register or the bytes
  logic [31:0] r;                    // the register, rewritten
  logic [39:0] d;                    // the bytes, rewritten
  logic [31:0] fv;                   // the field, extracted (sign-extended for BFEXTS)
  logic [31:0] is;                   // the BFINS source, its next bit at 0
  logic        hi_v;                 // a 1 seen; the field bit of the highest
  logic [5:0]  hi;
  logic        nz, nb;               // a 1 in the value of N/Z, its last bit

  logic        b, nbit;
  assign b = in_reg ? r[p[4:0]] : d[p];
  always_comb
    case (op)
      3'b010:  nbit = !b;            // BFCHG
      3'b100:  nbit = 1'b0;          // BFCLR
      3'b110:  nbit = 1'b1;          // BFSET
      default: nbit = is[0];         // BFINS (the others write nothing)
    endcase

  always_ff @(posedge clk) begin
    if (rst) begin
      busy <= 1'b0;
      done <= 1'b0;
    end else if (ena) begin
      done <= 1'b0;
      if (start) begin               // (a new operation: what ran is dropped)
        logic [5:0] wd;
        wd = (w == 5'd0) ? 6'd32 : {1'b0, w};
        bw <= wd;
        i <= 6'd0;
        // the field's least significant bit
        p <= in_reg ? {1'b0, 5'(5'd0 - off[4:0] - wd[4:0])} : 6'd40 - {3'd0, off[2:0]} - wd;
        r <= val; d <= data; fv <= 32'd0; is <= ins;
        hi_v <= 1'b0; hi <= 6'd0; nz <= 1'b0; nb <= 1'b0;
        busy <= 1'b1;
      end else if (busy) begin
        logic fb;                    // the bit of the value for N and Z
        fb = (op == 3'b111) ? is[0] : b;
        if (in_reg) r[p[4:0]] <= nbit; else d[p] <= nbit;
        // the extracted value: this bit, and above it for BFEXTS its sign
        for (int k = 0; k < 32; k++)
          if (6'(k) == i) fv[k] <= b;
          else if (6'(k) > i && op == 3'b011) fv[k] <= b;
        if (b) begin hi_v <= 1'b1; hi <= i; end
        nz <= nz | fb;
        nb <= fb;
        is <= {1'b0, is[31:1]};
        p <= in_reg ? {1'b0, 5'(p[4:0] + 5'd1)} : p + 6'd1;
        i <= i + 6'd1;
        if (i == bw - 6'd1) begin
          busy <= 1'b0;
          done <= 1'b1;
        end
      end
    end
  end

  // what the operation gives, once done
  always_comb begin
    case (op)
      3'b001:  res = fv;                                   // BFEXTU
      3'b011:  res = fv;                                   // BFEXTS
      3'b101:  res = off + {26'd0, hi_v ? 6'(bw - 6'd1 - hi) : bw}; // BFFFO
      default: res = r;                                    // the register, rewritten
    endcase
    newd = d;
    n = nb;
    z = !nz;
  end

endmodule
