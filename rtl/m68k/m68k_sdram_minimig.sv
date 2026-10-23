// SPDX-License-Identifier: LGPL-3.0-or-later
// A controller of its own for MinimigAGA's second SDRAM (its Zorro III
// Fast RAM, which nothing but the CPU uses), in place of the sdram_ctrl
// and cpu_cache_new that served it word by word: the core's line port gets
// a line read as one burst of eight words and a long write as two single
// writes with their byte masks, as an accelerator's own RAM would. On the
// system clock (114 MHz, no clock enable). Two users, one at a time:
//
//   - the core's line port (lp_*), in the first Zorro III block, mapped to
//     the SDRAM address as TG68K.vhd maps it (DUALRAM_ADDR); a write is
//     answered once taken and done behind (the next access waits for it)
//   - TG68K.vhd's accesses to this SDRAM (tg_*: ramaddr with bit 26 set,
//     cpustate = {longword, cs_n, busstate}, byte strobes, write data),
//     those the line port leaves to the kernel's bus: one word each,
//     answered with tg_cpuena for one clock (as sdram_ctrl's cpuena: the
//     kernel's clock enable follows it), a write once taken
//
// The SDRAM as sdram_ctrl has it (its address bits, CAS latency 3, bursts
// of eight for reads and single writes, the read data taken through a
// register four clocks after the READ command), every access in a row of
// its own with auto precharge, and a refresh every 780 clocks (7.8 us).
//
// The core's lp_ signals change on its enabled edges, which come at least
// four clocks apart, and the SDC gives paths from the kernel four cycles:
// so they are taken only once seen stable for four clocks. TG68K.vhd holds
// cs_n high for three clocks after each enabled edge; its access is taken
// once cs_n has been low for two. sd_rst_n, reset_n and z3ram_ena are taken
// through two flip-flops (they may come from another clock domain: the
// core's own clock, MINIMIG_M68K_ACCEL, puts this on the second SDRAM's PLL).

module m68k_sdram_minimig (
  input  logic         clk,
  input  logic         sd_rst_n,       // the SDRAM's start (sdram_ctrl's reset_in)
  input  logic         reset_n,        // the CPU's reset: the handshakes
  input  logic         z3ram_ena,      // the Zorro III RAM board is configured
  output logic         init_done,

  // the core's line port
  output logic         lp_en,
  input  logic         lp_req,
  input  logic         lp_we,
  input  logic [31:0]  lp_addr,
  input  logic [3:0]   lp_be,
  input  logic [31:0]  lp_wdata,
  output logic         lp_done,
  output logic [127:0] lp_rdata,

  // TG68K.vhd's side of the CPU port (sdram_ctrl's cpuAddr and so on)
  input  logic [26:1]  tg_cad,
  input  logic [3:0]   tg_cpustate,
  input  logic         tg_cuds,
  input  logic         tg_clds,
  input  logic [15:0]  tg_cin,
  output logic         tg_cpuena,
  output logic [15:0]  tg_cout,

  // the SDRAM
  inout  wire  [15:0]  sd_dq,
  output logic [12:0]  sd_a,
  output logic [1:0]   sd_ba,
  output logic [1:0]   sd_dqm,
  output logic         sd_cs_n,
  output logic         sd_ras_n,
  output logic         sd_cas_n,
  output logic         sd_we_n
);

  localparam logic [3:0] CMD_NOP = 4'b0111, CMD_ACTIVE = 4'b0011, CMD_READ = 4'b0101,
                         CMD_WRITE = 4'b0100, CMD_PRECHARGE = 4'b0010, CMD_REFRESH = 4'b0001,
                         CMD_MODE = 4'b0000, CMD_INHIBIT = 4'b1111;
  localparam logic [12:0] MODE = 13'b0001000110011;   // single writes, CAS latency 3, bursts of 8
  localparam int REFRESH_EVERY = 780;
  localparam int START_WAIT = 12000;                  // 105 us of NOPs before the start

  // the SDRAM address of a CPU address in the window (TG68K.vhd's ramaddr,
  // two SDRAMs: the first block is all of the second one)
  function automatic logic [25:1] ramaddr(input logic [31:0] a);
    logic [25:0] r;
    r[25] = a[25];
    r[24] = a[24] ^ a[25];
    r[23] = a[23] ^ (a[22] || a[21]);
    r[22:0] = a[22:0];
    return r[25:1];
  endfunction

  // the pins, all from registers
  logic [3:0]  cmd;
  logic [15:0] dq_out, dq_in;
  logic        dq_oe;
  assign {sd_cs_n, sd_ras_n, sd_cas_n, sd_we_n} = cmd;
  assign sd_dq = dq_oe ? dq_out : 16'bz;
  always_ff @(posedge clk) dq_in <= sd_dq;

  logic [1:0] s_sdr, s_rst, s_z3;
  logic       i_sd_rst_n, i_reset_n;
  always_ff @(posedge clk) begin
    s_sdr <= {s_sdr[0], sd_rst_n};
    s_rst <= {s_rst[0], reset_n};
    s_z3 <= {s_z3[0], z3ram_ena};
  end
  assign i_sd_rst_n = s_sdr[1];
  assign i_reset_n = s_rst[1];
  always_ff @(posedge clk) lp_en <= s_z3[1];

  // the core's request, taken once stable for four clocks
  logic [2:0] req_st, nreq_st;
  logic       req_on, req_off;
  always_ff @(posedge clk) begin
    req_st <= lp_req ? (req_st == 3'd4 ? 3'd4 : req_st + 3'd1) : 3'd0;
    nreq_st <= !lp_req ? (nreq_st == 3'd4 ? 3'd4 : nreq_st + 3'd1) : 3'd0;
  end
  assign req_on = req_st == 3'd4;
  assign req_off = nreq_st == 3'd4;

  // TG68K.vhd's access to this SDRAM, taken after two clocks of cs_n low
  logic       tg_sel;
  logic [1:0] tg_st;
  assign tg_sel = !tg_cpustate[2] && tg_cad[26] && tg_cpustate[1:0] != 2'b01;
  always_ff @(posedge clk) tg_st <= tg_sel ? (tg_st == 2'd2 ? 2'd2 : tg_st + 2'd1) : 2'd0;

  // the operations: what is to be done, one at a time
  typedef enum logic [2:0] { S_START, S_IDLE, S_READ, S_WRITE, S_REFRESH } st_e;
  st_e         st;
  logic [4:0]  t;                       // clocks into the operation
  logic [15:0] start_n;
  logic [3:0]  start_step;

  logic        lp_pend, lp_pwe;         // the line port's operation, taken
  logic [25:1] lp_pa;
  logic [3:0]  lp_pbe;
  logic [31:0] lp_pd;
  logic        lp_wait;                 // a read under way: lp_done when its line is in
  logic        tg_pend, tg_pwe, tg_acked;
  logic        tg_older;                // both taken: TG68K.vhd's came first
  logic [25:1] tg_pa;
  logic [1:0]  tg_pdqm;
  logic [15:0] tg_pd;

  logic        o_lp, o_we;               // the operation under way: whose, a write
  logic [25:1] o_a;                      // its first word
  logic [3:0]  o_be;
  logic [31:0] o_d;
  logic [127:0] line;

  logic [9:0]  ref_n;
  logic        ref_pend;

  // a row's address and a column's: bank 24-23, row 22-10, column 25 and 9-1
  function automatic logic [12:0] col(input logic [25:1] a, input logic ap);
    return {2'b00, ap, a[25], a[9:1]};
  endfunction

  always_ff @(posedge clk) begin
    cmd <= CMD_NOP;
    dq_oe <= 1'b0;
    sd_dqm <= 2'b00;
    tg_cpuena <= 1'b0;

    // the refresh clock
    if (ref_n == 10'd0) begin
      ref_n <= 10'(REFRESH_EVERY - 1);
      ref_pend <= 1'b1;
    end else
      ref_n <= ref_n - 10'd1;

    // the line port's handshake: a write is answered when taken, a read
    // when its line is in; lp_done drops once the core lets go
    if (!lp_pend && !lp_wait && !lp_done && req_on) begin
      lp_pend <= 1'b1;
      lp_pwe <= lp_we;
      lp_pa <= lp_we ? ramaddr(lp_addr) : ramaddr({lp_addr[31:4], 4'h0});
      lp_pbe <= lp_be;
      lp_pd <= lp_wdata;
      tg_older <= tg_pend;
      if (lp_we) lp_done <= 1'b1;
      else lp_wait <= 1'b1;
    end
    if (lp_done && req_off) lp_done <= 1'b0;

    // TG68K.vhd's: a write is answered when taken, a read with its word;
    // then nothing until cs_n rises
    if (!tg_sel) tg_acked <= 1'b0;
    if (tg_st == 2'd2 && !tg_pend && !tg_acked) begin
      tg_pend <= 1'b1;
      tg_acked <= 1'b1;
      tg_pwe <= &tg_cpustate[1:0];
      tg_pa <= tg_cad[25:1];
      tg_pdqm <= {tg_cuds, tg_clds};
      tg_pd <= tg_cin;
      tg_older <= !lp_pend;
      if (&tg_cpustate[1:0]) tg_cpuena <= 1'b1;
    end

    t <= t + 5'd1;
    case (st)
      S_START: begin                    // NOPs, precharge all, eight refreshes, the mode
        cmd <= CMD_INHIBIT;
        if (start_n != 16'd0) begin
          start_n <= start_n - 16'd1;
          t <= 5'd0;
        end else if (t == 5'd15) begin
          t <= 5'd0;
          start_step <= start_step + 4'd1;
          if (start_step == 4'd0) begin
            cmd <= CMD_PRECHARGE;
            sd_a <= 13'b0010000000000;  // all banks
          end else if (start_step <= 4'd8)
            cmd <= CMD_REFRESH;
          else if (start_step == 4'd9) begin
            cmd <= CMD_MODE;
            sd_a <= MODE;
            sd_ba <= 2'b00;
          end else begin
            init_done <= 1'b1;
            st <= S_IDLE;
          end
        end
      end

      S_IDLE: begin
        t <= 5'd0;
        if (ref_pend) begin
          cmd <= CMD_REFRESH;
          ref_pend <= 1'b0;
          st <= S_REFRESH;
        end else if (lp_pend || tg_pend) begin
          // in the order taken (a write of either is answered before it is done)
          logic lp_go;
          lp_go = lp_pend && !(tg_pend && tg_older);
          o_lp <= lp_go;
          if (lp_go) begin
            lp_pend <= 1'b0;
            o_we <= lp_pwe; o_a <= lp_pa; o_be <= lp_pwe ? lp_pbe : 4'hF; o_d <= lp_pd;
          end else begin
            tg_pend <= 1'b0;
            o_we <= tg_pwe; o_a <= tg_pa; o_be <= {~tg_pdqm, ~tg_pdqm}; o_d <= {tg_pd, tg_pd};
          end
          cmd <= CMD_ACTIVE;
          sd_a <= lp_go ? lp_pa[22:10] : tg_pa[22:10];
          sd_ba <= lp_go ? lp_pa[24:23] : tg_pa[24:23];
          st <= (lp_go ? lp_pwe : tg_pwe) ? S_WRITE : S_READ;
        end
      end

      // ACTIVE on the pins at t 0, READ at 3 (tRCD 3), the burst's words
      // in dq_in at 7 to 14; precharged by READ + 8 + tRP, the next ACTIVE
      // at 16 at the earliest
      S_READ: begin
        if (t == 5'd2) begin
          cmd <= CMD_READ;
          sd_a <= col(o_a, 1'b1);
          sd_ba <= o_a[24:23];
        end
        if (t >= 5'd7 && t <= 5'd14) line <= {line[111:0], dq_in};
        if (t == 5'd7 && !o_lp) begin
          tg_cout <= dq_in;
          tg_cpuena <= 1'b1;
        end
        if (t == 5'd14) begin
          if (o_lp) begin
            lp_rdata <= {line[111:0], dq_in};
            lp_done <= 1'b1;
            lp_wait <= 1'b0;
          end
          st <= S_IDLE;
        end
      end

      // ACTIVE at t 0, the long's high word at 3, its low word at 4 with
      // auto precharge (a word of TG68K.vhd: once, at 3); tWR + tRP, the
      // next ACTIVE at 10 at the earliest (tRAS, tRC kept)
      S_WRITE: begin
        if (t == 5'd2 || (t == 5'd3 && o_lp)) begin
          cmd <= CMD_WRITE;
          sd_ba <= o_a[24:23];
          dq_oe <= 1'b1;
          if (t == 5'd2) begin
            sd_a <= col(o_a, !o_lp);
            dq_out <= o_d[31:16];
            sd_dqm <= ~o_be[3:2];
          end else begin
            sd_a <= col({o_a[25:2], 1'b1}, 1'b1);
            dq_out <= o_d[15:0];
            sd_dqm <= ~o_be[1:0];
          end
        end
        if (t == 5'd8) st <= S_IDLE;
      end

      default: begin                    // S_REFRESH: tRFC (the next ACTIVE at 11)
        if (t == 5'd9) st <= S_IDLE;
      end
    endcase

    if (!i_reset_n) begin               // (what was taken is still done)
      lp_done <= 1'b0;
      tg_acked <= 1'b0;
    end
    if (!i_sd_rst_n) begin
      st <= S_START;
      start_n <= 16'(START_WAIT);
      start_step <= 4'd0;
      t <= 5'd0;
      init_done <= 1'b0;
      ref_n <= 10'(REFRESH_EVERY - 1);
      ref_pend <= 1'b0;
      lp_pend <= 1'b0;
      tg_pend <= 1'b0;
      lp_done <= 1'b0;
      lp_wait <= 1'b0;
      tg_acked <= 1'b0;
      cmd <= CMD_INHIBIT;
    end
  end

endmodule
