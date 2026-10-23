// tb_sd: m68k_sdram_minimig against Micron's model. Two agents run at
// once, cycle by cycle:
//   - the core's line port, its signals changing every fourth clock (the
//     core's enabled edges): line reads and long writes at random in a 16 KB
//     part of the Zorro III window ($40000000 up), checked against a shadow
//   - a fake TG68K.vhd: word reads and writes, and long writes (longword on
//     the high word), at random in 16 KB of the same SDRAM, apart from the
//     window's, checked against its own shadow
// Usage: tb_sd [operations] [seed] [which]; it prints the counts, the line
// port's clocks from request to answer, and any mismatch.

#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <vector>
#include "Vtb_sd.h"
#include "verilated.h"

static Vtb_sd *tb;
static uint64_t cycle = 0;
static double ts = 0;
double sc_time_stamp() { return ts; }

static void step() {
    tb->clk_114 = 1; tb->eval(); ts += 4.38;
    tb->clk_114 = 0; tb->eval(); ts += 4.38;
    cycle++;
}

static uint32_t rs = 1;
static uint32_t rnd() { rs ^= rs << 13; rs ^= rs >> 17; rs ^= rs << 5; return rs; }

static const uint32_t LP_BASE = 0x40000000, LP_SIZE = 0x4000;
static const uint32_t TG_BASE = 0x00100000, TG_SIZE = 0x4000;
static std::vector<uint8_t> lp_mem(LP_SIZE), tg_mem(TG_SIZE);
static int errors = 0;

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    long ops = argc > 1 ? atol(argv[1]) : 20000;
    rs = argc > 2 ? (uint32_t)atol(argv[2]) | 1 : 1;
    int which = argc > 3 ? atoi(argv[3]) : 3;   // 1: the line port only, 2: the CPU only, 3: both
    long lp_target = which & 1 ? ops : 0, tg_target = which & 2 ? ops : 0;
    tb = new Vtb_sd;

    tb->reset = 0;
    tb->cpuState = 1; tb->cpuL = 1; tb->cpuU = 1; tb->cpuLongWord = 0; tb->cpuWR = 0; tb->cpuAddr = 0;
    tb->lp_req = 0; tb->lp_we = 0; tb->lp_addr = 0; tb->lp_be = 0; tb->lp_wdata = 0;
    for (int i = 0; i < 4; i++) step();
    tb->reset = 1;
    while (!tb->reset_out) step();
    for (int i = 0; i < 2000; i++) step();

    // fill both regions through their own path first, so every read is known
    long lp_ops = 0, tg_ops = 0, lp_reads = 0, tg_reads = 0;
    uint32_t lp_fill = 0, tg_fill = 0;

    // the core's agent
    int lp_state = 0;                   // 0 idle, 1 request up, 2 waiting for done to drop
    uint64_t lp_t0 = 0, rd_clk = 0, wr_clk = 0, op_clk = 0, n_wr = 0;
    bool lp_rd = false;
    uint32_t lp_a = 0;
    // the fake CPU's agent
    int tg_state = 0;                   // 0 choose, 1 access on, 2 internal cycles
    int tg_kind = 0;                    // 0 read, 1 write, 2 long write high, 3 long write low
    uint32_t tg_a = 0, tg_long = 0;
    int tg_idle = 0;
    bool tg_en = true, tg_en_next = false;

    while ((lp_ops < lp_target || tg_ops < tg_target) && cycle < 400000000ull) {
        // the core: acts on every fourth clock
        if (cycle % 4 == 0) {
            if (lp_state == 0 && lp_ops < lp_target) {
                bool fill = lp_fill < LP_SIZE;
                bool wr = fill || (rnd() % 3 == 0);
                if (wr) {
                    uint32_t off = fill ? lp_fill : (rnd() % LP_SIZE) & ~3u;
                    uint32_t be = fill ? 0xF : (rnd() % 15) + 1;
                    uint32_t d = rnd();
                    if (fill) lp_fill += 4;
                    tb->lp_we = 1; tb->lp_addr = LP_BASE + off; tb->lp_be = be; tb->lp_wdata = d;
                    for (int b = 0; b < 4; b++)
                        if (be & (8 >> b)) lp_mem[off + b] = (d >> (24 - 8 * b)) & 0xFF;
                    lp_rd = false;
                } else {
                    lp_a = (rnd() % LP_SIZE) & ~15u;
                    tb->lp_we = 0; tb->lp_addr = LP_BASE + lp_a;
                    lp_rd = true;
                }
                tb->lp_req = 1;
                lp_state = 1;
                lp_t0 = cycle;
            } else if (lp_state == 1 && tb->lp_done) {
                if (lp_rd) rd_clk += cycle - lp_t0; else { wr_clk += cycle - lp_t0; n_wr++; }
                if (lp_rd) {
                    lp_reads++;
                    for (int i = 0; i < 16; i++) {
                        uint8_t got = (tb->lp_rdata[3 - i / 4] >> (24 - 8 * (i % 4))) & 0xFF;
                        if (got != lp_mem[lp_a + i] && errors++ < 20)
                            printf("cycle %llu: line read %08X byte %d: %02X, wanted %02X\n",
                                   (unsigned long long)cycle, LP_BASE + lp_a, i, got, lp_mem[lp_a + i]);
                    }
                }
                tb->lp_req = 0;
                lp_state = 2;
                lp_ops++;
            } else if (lp_state == 2 && !tb->lp_done) {
                lp_state = 0;
                op_clk += cycle - lp_t0;
            }
        }

        // the fake TG68K.vhd: inputs held through its access until clkena
        if (tg_state == 0 && tg_ops < tg_target && tg_en) {
            if (tg_idle > 0) { tg_idle--; tb->cpuState = 1; }
            else {
                bool fill = tg_fill < TG_SIZE;
                int k = fill ? 1 : (rnd() % 4 == 0 ? 2 : (rnd() % 2));
                tg_kind = k;
                if (k == 2) {
                    tg_a = (rnd() % TG_SIZE) & ~3u;
                    tg_long = rnd();
                    tb->cpuAddr = (TG_BASE + tg_a) >> 1; tb->cpuState = 3; tb->cpuLongWord = 1;
                    tb->cpuL = 0; tb->cpuU = 0; tb->cpuWR = tg_long >> 16;
                } else {
                    tg_a = fill ? tg_fill : (rnd() % TG_SIZE) & ~1u;
                    if (fill) tg_fill += 2;
                    tb->cpuAddr = (TG_BASE + tg_a) >> 1; tb->cpuLongWord = 0;
                    tb->cpuL = 0; tb->cpuU = 0;
                    if (k == 1) { tb->cpuState = 3; tb->cpuWR = rnd() & 0xFFFF; }
                    else tb->cpuState = 2;
                }
                tg_state = 1;
            }
        }

        bool tg_done = tg_state == 1 && tb->clkena;
        tg_en_next = tb->clkena;         // TG68K.vhd changes its access on enabled edges only
        uint16_t tg_rd = tb->cpuRD;      // (taken on the enabling edge)
        step();
        tg_en = tg_en_next;

        if (tg_done) {
            if (tg_kind == 0) {
                tg_reads++;
                uint16_t want = (tg_mem[tg_a] << 8) | tg_mem[tg_a + 1];
                if (tg_rd != want && tg_fill >= TG_SIZE && errors++ < 20)
                    printf("cycle %llu: CPU read %08X: %04X, wanted %04X\n",
                           (unsigned long long)cycle, TG_BASE + tg_a, tg_rd, want);
            } else {
                uint16_t d = tb->cpuWR;
                tg_mem[tg_a] = d >> 8; tg_mem[tg_a + 1] = d & 0xFF;
            }
            if (tg_kind == 2) {             // the low word follows at once
                tg_kind = 3; tg_a += 2;
                tb->cpuAddr = (TG_BASE + tg_a) >> 1; tb->cpuLongWord = 0; tb->cpuWR = tg_long & 0xFFFF;
            } else {
                tg_state = 0;
                tg_ops++;
                tg_idle = rnd() % 4;
                tb->cpuState = 1;
            }
        }
    }
    if (lp_ops)
        printf("line port: %.1f clocks to the answer of a line read, %.1f of a write, %.1f an operation in all\n",
               lp_reads ? (double)rd_clk / lp_reads : 0.0, n_wr ? (double)wr_clk / n_wr : 0.0, (double)op_clk / lp_ops);
    printf("%ld line port operations (%ld line reads), %ld CPU accesses (%ld reads), %llu cycles, %d errors\n",
           lp_ops, lp_reads, tg_ops, tg_reads, (unsigned long long)cycle, errors);
    delete tb;
    return errors ? 1 : 0;
}
