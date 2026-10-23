// SPDX-License-Identifier: LGPL-3.0-or-later
// MinimigAGA's side of m68k_cpu's line port: on the system clock (114 MHz,
// no clock enable), it serves the core's line reads and long writes in the
// first Zorro III block through the CPU port of MinimigAGA's SDRAM
// controllers (sdram_ctrl: its cpu_cache_new), word by word at the system
// clock instead of one word per clock enable of the kernel's bus. The port
// is shared with TG68K.vhd, which keeps everything else (chip RAM, the
// Kickstart, registers):
//
//   - tg_*: what TG68K.vhd drives (ramaddr, cpustate = {longword, cs_n,
//     busstate}, byte strobes, write data), and its ramready (tg_cpuena),
//     held low while the port is the line port's
//   - m_*: what the SDRAM controllers get; s_cpuena and s_cout their answer
//
// Each word is put on the port for three clocks with cs_n high before cs_n
// falls, as TG68K.vhd's wrapper does (cpu_cache_new takes the access's kind
// through registers: a write is answered only if it was there two clocks
// before, and fewer clocks fail reads after writes too).
// The port changes hands only between accesses: never between the two
// words of a long write of TG68K.vhd (MinimigAGA's cache completes a write
// made with longword with the next write), and back to TG68K.vhd with three
// clocks of cs_n high, so that its access is there as long before.
//
// The core's lp_ signals change on its enabled edges, which come at least
// four clocks apart, and the SDC gives paths from the kernel four cycles:
// so they are taken only once seen stable for four clocks.
//
// The window is the first Zorro III block: $40000000-$43FFFFFF with two
// SDRAMs (all of the second one), $40000000-$40FFFFFF with one, mapped to
// the SDRAM address as TG68K.vhd maps it (its DUALRAM_ADDR / SINGLERAM_ADDR).

module m68k_lp_minimig #(
  parameter bit DUALSDRAM = 1'b1
) (
  input  logic         clk,
  input  logic         reset_n,
  input  logic         z3ram_ena,      // the Zorro III RAM board is configured

  // the core's line port
  output logic         lp_en,
  input  logic         lp_req,
  input  logic         lp_we,
  input  logic [31:0]  lp_addr,
  input  logic [3:0]   lp_be,
  input  logic [31:0]  lp_wdata,
  output logic         lp_done,
  output logic [127:0] lp_rdata,

  // TG68K.vhd's side of the SDRAM controllers' CPU port
  input  logic [26:1]  tg_cad,
  input  logic [3:0]   tg_cpustate,
  input  logic         tg_cuds,
  input  logic         tg_clds,
  input  logic [15:0]  tg_cin,
  output logic         tg_cpuena,

  // to the SDRAM controllers
  output logic [26:1]  m_cad,
  output logic [3:0]   m_cpustate,
  output logic         m_cuds,
  output logic         m_clds,
  output logic [15:0]  m_cin,
  input  logic         s_cpuena,
  input  logic [15:0]  s_cout
);

  // the SDRAM address of a CPU address in the window (TG68K.vhd's ramaddr)
  function automatic logic [26:1] ramaddr(input logic [31:0] a);
    logic [26:0] r;
    logic z3, z3b;
    if (DUALSDRAM) begin
      z3 = a[31:30] == 2'b01 && !a[26];
      z3b = a[31:30] == 2'b01 && a[26];
      r[26] = z3;
      r[25] = a[25] ^ z3b;
      r[24] = a[24] ^ a[25];
    end else begin
      z3 = a[31:30] == 2'b01 && a[26:24] == 3'b000;
      z3b = a[31:30] == 2'b01 && a[25];
      r[26] = 1'b0;
      r[25] = z3b;
      r[24] = (a[24] && z3b) || z3;
    end
    r[23] = a[23] ^ (a[22] || a[21]);
    r[22:0] = a[22:0];
    return r[26:1];
  endfunction

  always_ff @(posedge clk) lp_en <= z3ram_ena;

  // the core's request, taken once stable for four clocks
  logic [2:0] req_st, nreq_st;
  logic       req_on, req_off;
  always_ff @(posedge clk) begin
    req_st <= lp_req ? (req_st == 3'd4 ? 3'd4 : req_st + 3'd1) : 3'd0;
    nreq_st <= !lp_req ? (nreq_st == 3'd4 ? 3'd4 : nreq_st + 3'd1) : 3'd0;
  end
  assign req_on = req_st == 3'd4;
  assign req_off = nreq_st == 3'd4;

  // the job: the line's eight words, or a long's one or two
  typedef enum logic [2:0] { J_IDLE, J_WAIT, J_ADDR, J_CS, J_DONE } js_e;
  js_e         js;
  logic        j_we;
  logic [31:0] j_addr;                 // the word's CPU address
  logic [2:0]  j_left;                 // words after this one
  logic [3:0]  j_be;
  logic [31:0] j_wdata;
  logic        j_hi;                   // a write: this is the long's high word
  logic [127:0] j_line;
  logic [1:0]  j_setup;                // clocks of the word's address before cs_n

  // the port's owner, and TG68K.vhd's long write half done
  logic own_lp, tg_lw_pend;
  logic [1:0] guard_n;                 // clocks of cs_n high still owed to TG68K.vhd's access
  logic guard;
  assign guard = guard_n != 2'd0;
  logic tg_wants;
  assign tg_wants = !tg_cpustate[2];

  // TG68K.vhd's access answered (once per access: the answer may stay up
  // for more than a clock, until cs_n rises)
  logic tg_acked;
  always_ff @(posedge clk) begin
    if (!tg_wants) tg_acked <= 1'b0;
    else if (!own_lp && !guard && s_cpuena) tg_acked <= 1'b1;
    // a long write of TG68K.vhd: its high word answered with longword set,
    // until its next write is answered
    if (!own_lp && !guard && tg_wants && s_cpuena && !tg_acked && tg_cpustate[1:0] == 2'b11)
      tg_lw_pend <= tg_cpustate[3];
    if (!reset_n) begin tg_lw_pend <= 1'b0; tg_acked <= 1'b0; end
  end

  always_ff @(posedge clk) begin
    if (guard_n != 2'd0) guard_n <= guard_n - 2'd1;
    if (!reset_n) begin
      guard_n <= 2'd0;
      js <= J_IDLE;
      lp_done <= 1'b0;
      own_lp <= 1'b0;
    end else begin
      case (js)
        J_IDLE:
          if (req_on && !lp_done) begin
            j_we <= lp_we;
            j_be <= lp_be;
            j_wdata <= lp_wdata;
            if (lp_we) begin
              // the long's words that have bytes to write
              j_hi <= lp_be[3:2] != 2'b00;
              j_addr <= lp_be[3:2] != 2'b00 ? lp_addr : lp_addr + 32'd2;
              j_left <= (lp_be[3:2] != 2'b00 && lp_be[1:0] != 2'b00) ? 3'd1 : 3'd0;
            end else begin
              j_hi <= 1'b0;
              j_addr <= {lp_addr[31:4], 4'h0};
              j_left <= 3'd7;
            end
            js <= J_WAIT;
          end
        J_WAIT:                         // for the port, between TG68K.vhd's accesses
          if (!tg_wants && !tg_lw_pend) begin
            own_lp <= 1'b1;
            j_setup <= 2'd2;
            js <= J_ADDR;
          end
        J_ADDR:                         // the word three clocks before cs_n
          if (j_setup == 2'd0) js <= J_CS;
          else j_setup <= j_setup - 2'd1;
        J_CS:
          if (s_cpuena) begin
            if (!j_we) j_line <= {j_line[111:0], s_cout};
            if (j_left == 3'd0) begin
              js <= J_DONE;
              own_lp <= 1'b0;
              guard_n <= 2'd3;
            end else begin
              j_left <= j_left - 3'd1;
              j_addr <= j_addr + 32'd2;
              j_hi <= 1'b0;
              j_setup <= 2'd2;
              js <= J_ADDR;
            end
          end
        default: begin                  // J_DONE: until the core lets go
          if (!lp_done) begin
            lp_done <= 1'b1;
            lp_rdata <= j_line;
          end else if (req_off) begin
            lp_done <= 1'b0;
            js <= J_IDLE;
          end
        end
      endcase
    end
  end

  // the port: the line port's word, or TG68K.vhd's access (cs_n held high
  // for three clocks after the line port lets go)
  always_comb begin
    if (own_lp) begin
      m_cad = ramaddr(j_addr);
      m_cpustate = {j_we && j_hi && j_left != 3'd0, js != J_CS, j_we ? 2'b11 : 2'b10};
      m_cuds = !(j_we ? (j_hi ? j_be[3] : j_be[1]) : 1'b1);
      m_clds = !(j_we ? (j_hi ? j_be[2] : j_be[0]) : 1'b1);
      m_cin = j_hi ? j_wdata[31:16] : j_wdata[15:0];
    end else begin
      m_cad = tg_cad;
      m_cpustate = {tg_cpustate[3], tg_cpustate[2] || guard, tg_cpustate[1:0]};
      m_cuds = tg_cuds;
      m_clds = tg_clds;
      m_cin = tg_cin;
    end
  end
  assign tg_cpuena = s_cpuena && !own_lp && !guard;

endmodule
