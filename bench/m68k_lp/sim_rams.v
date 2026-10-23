// The Altera RAMs of cpu_cache_new, for simulation: the inferred ones
module dpram_256x32 (
  input  wire [7:0]  address_a, address_b,
  input  wire        clock,
  input  wire [31:0] data_a, data_b,
  input  wire        wren_a, wren_b,
  output wire [31:0] q_a, q_b
);
  dpram_inf_256x32 r (.clock(clock), .wren_a(wren_a), .address_a(address_a), .data_a(data_a), .q_a(q_a),
                      .wren_b(wren_b), .address_b(address_b), .data_b(data_b), .q_b(q_b));
endmodule

module dpram_be_1024x32 (
  input  wire [9:0]  address_a, address_b,
  input  wire [3:0]  byteena_a, byteena_b,
  input  wire        clock,
  input  wire [31:0] data_a, data_b,
  input  wire        wren_a, wren_b,
  output wire [31:0] q_a, q_b
);
  dpram_inf_be_1024x32 r (.clock(clock), .wren_a(wren_a), .byteena_a(byteena_a), .address_a(address_a),
                          .data_a(data_a), .q_a(q_a), .wren_b(wren_b), .byteena_b(byteena_b),
                          .address_b(address_b), .data_b(data_b), .q_b(q_b));
endmodule
