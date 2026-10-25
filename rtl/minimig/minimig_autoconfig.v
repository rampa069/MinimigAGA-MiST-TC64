// Minimig autoconfig logic

module minimig_autoconfig #(
	parameter TOCCATA_SND = 1'b0, // Toccata sound card enabled?
	parameter CONTROL_BOARD = 1'b0, // Control board enabled?
	// (A4000) with the most Fast RAM: no Zorro II RAM (as an A4000), the
	// Zorro III RAM and the RTG board (mfr $139C, product $30) after it,
	// its framebuffer where the Zorro II RAM was
	parameter A4000 = 1'b0
) (
	input clk,
	input clk7_en,
	input reset,
	input [8:1] address_in,	//cpu address bus input
	output [15:0] data_out,
	input [15:0] data_in,
	input	rd,					//cpu read
	input	hwr,				//cpu high write
	input	lwr,				//cpu low write
	input sel,
	input [1:0] slowram_config,
	input	[1:0] fastram_config,
	input m68020,
	input [1:0] ram_64meg,
	output reg [5:0] board_configured,
	output reg [5:0] board_shutup,
	output reg [7:0] toccata_base_addr, // Base address for the cards
	output reg [7:0] control_base_addr, // Base address for the cards
	output reg autoconfig_done,
	output reg rtg_ena,             // (A4000) the RTG board is configured
	output reg [7:0] rtg_base       // at A31-A24
);

wire a4k_z3 = A4000 && (&fastram_config) && m68020;


reg [2:0] acdevice;
reg [3:0] ramsize;
wire [8:0] roma_rd;
reg [8:0] roma_wr;
wire [3:0] rom_q;
reg rom_we;

assign roma_rd[5:0] = address_in[6:1];
assign roma_rd[8:6] = acdevice;
assign data_out = sel ? {rom_q,12'hfff} : 16'h0000;

minimig_autoconfig_rom acrom
(
	.clk(clk),
	.a_read(roma_rd),
	.a_write(roma_wr),	// We only write to change the size of the ZII RAM board
	.we(rom_we),
	.d(ramsize),
	.q(rom_q)
);

reg init;

always @(posedge clk)
begin
	rom_we<=1'b0;

	if(reset)
	begin
		init<=1'b1;
		board_configured<=6'b000000;
		acdevice<=3'b000;
		ramsize<=4'b1111;	// Disable RAM briefly at reset
		roma_wr<=9'h001;
		board_shutup<=6'b000000;
		autoconfig_done<=1'b0;
		toccata_base_addr<=8'h0;
		rtg_ena<=1'b0;
		rtg_base<=8'h0;
	end
	
	if(init)
	begin
		case(fastram_config)
			2'b00 : ramsize <= 4'b1111;  // don't care, disabled
			2'b01 : ramsize <= 4'b0110;	// 2 Meg
			2'b10 : ramsize <= 4'b0111;	// 4 Meg
			2'b11	: ramsize <= 4'b0000;  // 8 Meg
		endcase
		roma_wr[8:0] <= 9'h001;	// Write address for modifying size of ZII RAM.
		rom_we<=1'b1;
	
		// Either 1st board (ZII fast RAM) or null board if RAM is disabled
		acdevice <= |fastram_config ? 3'b000 : (TOCCATA_SND == 1'b1 ? 3'b101 : 3'b111);
		if (a4k_z3) begin
			// (A4000) the 1st ZIII RAM first, sized as the ZII board's configuration does
			roma_wr[8:0] <= 9'h041;
			ramsize <= ram_64meg[1] ? 4'b0010 : 4'b0000; // 64 meg or 16 meg
			acdevice <= 3'b001;
		end
		init<=1'b0;
	end
	else
	begin
		if(clk7_en && sel)
			autoconfig_done <= (acdevice==3'b111) ? 1'b1 : 1'b0;
	
		if(clk7_en && sel && (lwr|hwr))
		begin

			case({address_in,1'b0})
				9'h048 : begin	// Zorro II configures at 48
					case(acdevice)
						3'b000 : begin // ZII RAM
								roma_wr[8:6] <= 3'b001;	// First ZIII entry
								roma_wr[5:0] <= 6'h01;	// Write address for modifying size of 1st ZIII RAM.
								ramsize <= ram_64meg[1] ? 4'b0010 : 4'b0000; // 64 meg or 16 meg
								rom_we<=1'b1;

								board_configured[0] <= 1'b1;
								acdevice<=(&fastram_config & m68020) ? 3'b001 : (TOCCATA_SND == 1'b1 ? 3'b101 : 3'b111); // ZIII RAM or Toccata next
							end
						3'b101: begin // Toccata sound card
								board_configured[4] <= 1'b1;
								acdevice<=CONTROL_BOARD ? 3'b110 : 3'b111; // NULL device to terminate the chain
								toccata_base_addr <= data_in[7:0]; // Store Toccata base address
							end
						3'b110: begin // Minimig Control board
								board_configured[5] <= 1'b1;
								acdevice<=3'b111; // NULL device to terminate the chain
								control_base_addr <= data_in[7:0]; // Store Toccata base address
							end
						default :
							;
					endcase
				end
				9'h044 : begin // Zorro III configures at 44 if in ZIII space, should be 48 in ZII space but seems to configure twice?
					case(acdevice)
						3'b001 : begin // ZIII RAM
								board_configured[1] <= 1'b1;
								
								roma_wr[8:6] <= 3'b011;	// Third ZIII entry
								roma_wr[5:0] <= 6'h05;	// Write address for modifying size of 3rd ZIII RAM.
								ramsize <= ram_64meg[1] ? 4'b1111 : (|slowram_config ? 4'b1000 : 4'b0111); // 16 meg if dual SDRAM, otherwise 2 meg or 4 meg depending on slowram config.
								rom_we<=1'b1;
								// skip straight to 3'b011 on 32 meg platforms
								case (ram_64meg)
									2'b00 : acdevice <= 3'b011;	// Leftover space next on 32-meg platforms
									2'b01 : acdevice <= 3'b010; // Extra 32 meg next on 64-meg platforms
									2'b10 : acdevice <= 3'b010; // Extra 32 meg next on dual SDRAM platforms
									default : acdevice <= 3'b111; // No more otherwise
								endcase
							end
						3'b010 : begin // ZIII RAM 2 - 2nd 32 meg on 64 meg platforms
								board_configured[2] <= 1'b1;
								acdevice<=3'b011;
							end
						3'b011 : begin // ZIII RAM 3 - Use leftover space in the memory map.
								board_configured[3] <= 1'b1;
								if (a4k_z3) begin
									acdevice<=3'b100; // (A4000) the RTG board
								end else if (TOCCATA_SND == 1'b1) begin
									acdevice<=3'b101; // Toccata sound card
								end else begin
									acdevice<=CONTROL_BOARD ? 3'b110 : 3'b111; // Either control board or NULL device to terminate the chain
								end
							end
						3'b100 : begin // (A4000) the RTG board: its base
								rtg_ena <= 1'b1;
								rtg_base <= data_in[15:8];
								acdevice<=TOCCATA_SND ? 3'b101 : (CONTROL_BOARD ? 3'b110 : 3'b111);
							end
						default:
							;
					endcase
				end
				9'h04c : begin // Zorro II / III shut up register
					case(acdevice)
						3'b100: begin // Shut up the RTG board
								acdevice<=TOCCATA_SND ? 3'b101 : (CONTROL_BOARD ? 3'b110 : 3'b111);
							end
						3'b101: begin // Shut up Toccata Sound card
								acdevice<=CONTROL_BOARD ? 3'b110 : 3'b111; // Either control board or NULL device to terminate the chain
								board_shutup[4] <= 1'b1;
							end
						3'b110: begin // Shut up Control board
								acdevice<=3'b111; // NULL device to terminate the chain
								board_shutup[5] <= 1'b1;
							end
						default:
							;
					endcase
				end
				default:
					;
			endcase
		end
	end
end


endmodule
