// SPDX-License-Identifier: LGPL-3.0-or-later
// Line port unit: between the caches' bus requests and the bus interface,
// it sends those to a window of memory (LP_LO to LP_HI, while lp_en is set,
// but for a hole of 8 Mbytes while lp_hole_en is: A31-A24 lp_hole_base, A23
// set, a board's registers on the bus among the RAM's addresses)
// through a port that moves 16-byte lines, instead of the 16-bit bus. The
// machine around the core answers it from its memory controller's bursts
// (MinimigAGA: the SDRAM controller's line reads and long writes).
//
//   - a read in the window within one line is answered from a one-line
//     buffer; a miss reads the line through the port first (the requests
//     of a cache's fill, four longs of one line, then hit)
//   - a write in the window within one long goes through the port with its
//     byte enables; it is answered on the next edge and the port finishes it
//     behind (anything else for the port, or for the bus interface in the
//     window, waits for that); it updates the buffer if the line is there
//   - anything else (outside the window, across a line or a long) goes to
//     the bus interface as before, once the port is idle; a write of those
//     in the window drops the buffer if it touches its line
//
// LP_ALL: nothing in the window goes to the bus interface (the port's
// machine is then the memory's only master: it may run on another clock
// than the wrapper's bus). A write across a long is two long writes on the
// port, answered when taken; a read across a line, two line reads (the
// buffer's line first if it is one of them), answered with the second.
//
// The port's outputs change on enabled edges only and its inputs are taken
// on them: lp_req is held until lp_done is seen, the machine keeps lp_done
// and lp_rdata until lp_req falls, then drops lp_done (four phases). So the
// core's paths keep their four cycles and the machine's side may run on
// every clock. lp_rdata has the line's first byte in 127-120.

module m68k_lpu
  import m68k_pkg::*;
#(
  parameter bit          LINE_PORT = 1'b0,
  parameter logic [31:0] LP_LO = 32'h40000000,
  parameter logic [31:0] LP_HI = 32'h48000000,
  parameter bit          LP_ALL = 1'b0
)
(
  input  logic         clk,
  input  logic         rst,
  input  logic         ce,
  input  logic         lp_en,          // the window is served (e.g. its board is configured)
  input  logic         lp_hole_en,     // the hole is not
  input  logic [7:0]   lp_hole_base,

  // the instruction cache's requests (aligned longs)
  input  logic         ci_req,
  input  logic [31:0]  ci_addr,
  input  logic [2:0]   ci_fc,
  output logic         ci_gnt,
  output logic         ci_rvalid,
  output logic         ci_err,
  output logic [31:0]  ci_rdata,

  // the data cache's requests
  input  logic         cd_req,
  input  logic         cd_we,
  input  logic [31:0]  cd_addr,
  input  size_e        cd_size,
  input  logic [31:0]  cd_wdata,
  input  logic [2:0]   cd_fc,
  output logic         cd_gnt,
  output logic         cd_rvalid,
  output logic         cd_err,
  output logic [31:0]  cd_rdata,

  // to the bus interface
  output logic         bi_req,
  output logic [31:0]  bi_addr,
  output logic [2:0]   bi_fc,
  input  logic         bi_gnt,
  input  logic         bi_rvalid,
  input  logic         bi_err,
  input  logic [31:0]  bi_rdata,
  output logic         bd_req,
  output logic         bd_we,
  output logic [31:0]  bd_addr,
  output size_e        bd_size,
  output logic [31:0]  bd_wdata,
  output logic [2:0]   bd_fc,
  input  logic         bd_gnt,
  input  logic         bd_rvalid,
  input  logic         bd_err,
  input  logic [31:0]  bd_rdata,

  // the line port
  output logic         lp_req,
  output logic         lp_we,
  output logic [31:0]  lp_addr,         // a read: the line's; a write: the long's
  output logic [3:0]   lp_be,           // a write's bytes (3: the long's first)
  output logic [31:0]  lp_wdata,
  input  logic         lp_done,
  input  logic [127:0] lp_rdata
);

  function automatic logic [2:0] nbytes(input size_e s);
    return (s == SZ_B) ? 3'd1 : (s == SZ_W) ? 3'd2 : 3'd4;
  endfunction

  /* verilator lint_off UNSIGNED */      // (a window from 0)
  function automatic logic in_win(input logic [31:0] a);
    return LINE_PORT && lp_en && a >= LP_LO && a < LP_HI &&
           !(lp_hole_en && a[31:24] == lp_hole_base && a[23]);
  endfunction
  /* verilator lint_on UNSIGNED */

  // the line buffer
  logic         lb_v;
  logic [31:4]  lb_line;
  logic [127:0] lb_data;

  // the port: idle, a read or write on it, or waiting for lp_done to drop
  typedef enum logic [1:0] { LP_IDLE, LP_RD, LP_WR, LP_DROP } lps_e;
  lps_e lps;

  // what each request is
  logic i_lp, i_hit, d_lp, d_hit, d_wr_ok, d_fit_line;
  assign i_lp = in_win(ci_addr);
  assign i_hit = i_lp && lb_v && lb_line == ci_addr[31:4];
  assign d_lp = in_win(cd_addr);
  assign d_fit_line = {1'b0, cd_addr[3:0]} + {2'b00, nbytes(cd_size)} <= 5'd16;
  assign d_hit = d_lp && !cd_we && d_fit_line && lb_v && lb_line == cd_addr[31:4];
  assign d_wr_ok = d_lp && cd_we && {1'b0, cd_addr[1:0]} + nbytes(cd_size) <= 3'd4;

  // where each client's outstanding request went
  logic i_src_lp, d_src_lp;
  logic ri_v, rd_v;                     // answers from the buffer or the port
  logic [31:0] ri_d, rd_d;

  // (LP_ALL) an access across a long (a write) or a line (a read): its
  // steps, x_* its parts
  typedef enum logic [2:0] { X_IDLE, X_W1, X_W2, X_R1, X_R2, X_ANS } xs_e;
  xs_e          xs;
  logic [31:0]  x_addr;
  size_e        x_size;
  logic [63:0]  x_w;                    // the write's bytes over two longs
  logic [7:0]   x_be;
  logic [127:0] x_la;                   // the read's first line
  logic d_x;
  assign d_x = LP_ALL && d_lp && (cd_we ? !d_wr_ok : !d_fit_line);

  // a request in the window that is neither a hit nor a long write goes to
  // the bus interface only with the port idle (behind its writes)
  logic lp_quiet;
  assign lp_quiet = lps == LP_IDLE && xs == X_IDLE;
  logic i_to_biu, d_to_biu;
  assign i_to_biu = !i_lp;              // (a fetch in the window is a long within a line)
  assign d_to_biu = !d_lp || (!LP_ALL && ((!d_fit_line && !cd_we && lp_quiet) || (cd_we && !d_wr_ok && lp_quiet)));

  // a miss in the window starts a line read; a long write starts a write
  logic d_start_rd, i_start_rd, d_start_wr, d_start_x;
  assign d_start_wr = cd_req && d_wr_ok && lp_quiet;
  assign d_start_rd = cd_req && d_lp && !cd_we && d_fit_line && !d_hit && lp_quiet;
  assign d_start_x = cd_req && d_x && lp_quiet;
  assign i_start_rd = ci_req && i_lp && !i_hit && lp_quiet && !d_start_wr && !d_start_rd && !d_start_x;

  // grants: to the bus interface as it grants, a hit at once, a write when
  // the port takes it
  assign bi_req = ci_req && i_to_biu;
  assign bi_addr = ci_addr;
  assign bi_fc = ci_fc;
  assign bd_req = cd_req && d_to_biu;
  assign bd_we = cd_we;
  assign bd_addr = cd_addr;
  assign bd_size = cd_size;
  assign bd_wdata = cd_wdata;
  assign bd_fc = cd_fc;
  assign ci_gnt = i_to_biu ? bi_gnt : (ci_req && i_hit && xs == X_IDLE);
  assign cd_gnt = d_to_biu ? bd_gnt : (cd_req && ((d_hit && xs == X_IDLE) || d_start_wr || d_start_x));

  assign ci_rvalid = i_src_lp ? ri_v : bi_rvalid;
  assign ci_err = i_src_lp ? 1'b0 : bi_err;
  assign ci_rdata = i_src_lp ? ri_d : bi_rdata;
  assign cd_rvalid = d_src_lp ? rd_v : bd_rvalid;
  assign cd_err = d_src_lp ? 1'b0 : bd_err;
  assign cd_rdata = d_src_lp ? rd_d : bd_rdata;

  // the bytes of an access within the line, right-justified
  function automatic logic [31:0] from_line(input logic [127:0] l, input logic [3:0] off, input size_e s);
    logic [127:0] v;
    v = l << (8 * off);
    return (s == SZ_B) ? {24'd0, v[127:120]} : (s == SZ_W) ? {16'd0, v[127:112]} : v[127:96];
  endfunction

  // the bytes of an access across two lines, right-justified
  function automatic logic [31:0] from_line2(input logic [127:0] a, input logic [127:0] b, input logic [3:0] off,
                                             input size_e s);
    logic [255:0] v;
    v = {a, b} << (8 * off);
    return (s == SZ_B) ? {24'd0, v[255:248]} : (s == SZ_W) ? {16'd0, v[255:240]} : v[255:224];
  endfunction

  // a long write merged into the line
  function automatic logic [127:0] into_line(input logic [127:0] l, input logic [1:0] li,
                                             input logic [3:0] be, input logic [31:0] d);
    logic [127:0] r;
    r = l;
    for (int b = 0; b < 4; b++)
      if (be[3 - b]) r[127 - 32 * int'(li) - 8 * b -: 8] = d[31 - 8 * b -: 8];
    return r;
  endfunction

  // a write's long-aligned data and byte enables
  logic [3:0]  w_be;
  logic [31:0] w_data;
  always_comb begin
    logic [3:0]  m;
    logic [31:0] v;
    m = (cd_size == SZ_B) ? 4'b1000 : (cd_size == SZ_W) ? 4'b1100 : 4'b1111;
    v = (cd_size == SZ_B) ? {cd_wdata[7:0], 24'd0} : (cd_size == SZ_W) ? {cd_wdata[15:0], 16'd0} : cd_wdata;
    w_be = m >> cd_addr[1:0];
    w_data = v >> (8 * cd_addr[1:0]);
  end

  always_ff @(posedge clk) begin
    if (rst) begin
      lb_v <= 1'b0;
      lps <= LP_IDLE;
      xs <= X_IDLE;
      lp_req <= 1'b0;
      lp_we <= 1'b0;
      ri_v <= 1'b0;
      rd_v <= 1'b0;
      i_src_lp <= 1'b0;
      d_src_lp <= 1'b0;
    end else if (ce) begin
      ri_v <= 1'b0;
      rd_v <= 1'b0;

      // the instruction cache: a hit answered on the next edge
      if (ci_gnt) begin
        i_src_lp <= !i_to_biu;
        if (!i_to_biu) begin
          ri_v <= 1'b1;
          ri_d <= from_line(lb_data, ci_addr[3:0], SZ_L);
        end
      end
      // a write to the bus interface in the window (across a long): the
      // buffer's line may be in it
      if (bd_req && bd_gnt && bd_we && d_lp &&
          (cd_addr[31:4] == lb_line || cd_addr[31:4] + 28'd1 == lb_line))
        lb_v <= 1'b0;
      // the data cache: a hit, or a write once the port is done
      if (cd_gnt) begin
        d_src_lp <= !d_to_biu;
        if (!d_to_biu && !(d_start_x && !cd_we)) begin
          rd_v <= 1'b1;                 // a read from the buffer, or a write taken
          rd_d <= from_line(lb_data, cd_addr[3:0], cd_size);
        end
      end

      // (LP_ALL) an access across a long or a line, in its parts
      if (d_start_x) begin
        logic [31:0] m, v;
        m = (cd_size == SZ_B) ? 32'hFF000000 : (cd_size == SZ_W) ? 32'hFFFF0000 : 32'hFFFFFFFF;
        v = (cd_size == SZ_B) ? {cd_wdata[7:0], 24'd0} : (cd_size == SZ_W) ? {cd_wdata[15:0], 16'd0} : cd_wdata;
        x_addr <= cd_addr; x_size <= cd_size;
        x_w <= {v, 32'd0} >> (8 * cd_addr[1:0]);
        x_be <= {m[31], m[23], m[15], m[7], 4'd0} >> cd_addr[1:0];
        xs <= cd_we ? X_W1 : X_R1;
      end
      case (xs)
        X_W1, X_W2:                       // a long of it on the port, once idle
          if (lps == LP_IDLE) begin
            logic [31:0] la;
            logic [3:0]  be;
            logic [31:0] d;
            la = xs == X_W1 ? {x_addr[31:2], 2'b00} : {x_addr[31:2], 2'b00} + 32'd4;
            be = xs == X_W1 ? x_be[7:4] : x_be[3:0];
            d = xs == X_W1 ? x_w[63:32] : x_w[31:0];
            lps <= LP_WR;
            lp_req <= 1'b1; lp_we <= 1'b1;
            lp_addr <= la; lp_be <= be; lp_wdata <= d;
            if (lb_v && lb_line == la[31:4]) lb_data <= into_line(lb_data, la[3:2], be, d);
            xs <= xs == X_W1 ? X_W2 : X_IDLE;
          end
        X_R1, X_R2: begin                 // a line of it: the buffer's, or read
          logic [31:4] ln;
          ln = xs == X_R1 ? x_addr[31:4] : x_addr[31:4] + 28'd1;
          if (lps == LP_IDLE) begin
            if (lb_v && lb_line == ln) begin
              if (xs == X_R1) begin x_la <= lb_data; xs <= X_R2; end
              else begin
                rd_v <= 1'b1;
                rd_d <= from_line2(x_la, lb_data, x_addr[3:0], x_size);
                xs <= X_IDLE;
              end
            end else begin
              lps <= LP_RD;
              lp_req <= 1'b1; lp_we <= 1'b0;
              lp_addr <= {ln, 4'h0};
              lb_v <= 1'b0;
            end
          end
        end
        default: ;
      endcase

      case (lps)
        LP_IDLE:
          if (d_start_wr) begin
            lps <= LP_WR;
            lp_req <= 1'b1; lp_we <= 1'b1;
            lp_addr <= {cd_addr[31:2], 2'b00}; lp_be <= w_be; lp_wdata <= w_data;
            if (lb_v && lb_line == cd_addr[31:4])
              lb_data <= into_line(lb_data, cd_addr[3:2], w_be, w_data);
          end else if (d_start_rd || i_start_rd) begin
            lps <= LP_RD;
            lp_req <= 1'b1; lp_we <= 1'b0;
            lp_addr <= d_start_rd ? {cd_addr[31:4], 4'h0} : {ci_addr[31:4], 4'h0};
            lb_v <= 1'b0;
          end
        LP_RD:
          if (lp_done) begin
            lb_v <= 1'b1;
            lb_line <= lp_addr[31:4];
            lb_data <= lp_rdata;
            lp_req <= 1'b0;
            lps <= LP_DROP;
          end
        LP_WR:
          if (lp_done) begin            // (the write was answered when taken)
            lp_req <= 1'b0;
            lps <= LP_DROP;
          end
        default:                        // LP_DROP
          if (!lp_done) lps <= LP_IDLE;
      endcase
    end
  end

endmodule
