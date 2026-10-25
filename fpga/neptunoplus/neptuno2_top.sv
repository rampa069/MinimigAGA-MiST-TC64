module neptuno2_top (
	input         CLOCK_50,
	//input         KEY0,
	//input         KEY1,
	output        LED           = 1'b1, // '0' is LED on,

	output  [7:0] VGA_R,
	output  [7:0] VGA_G,
	output  [7:0] VGA_B,
	output        VGA_HS,
	output        VGA_VS,

	input         SPI_SCK,
	inout         SPI_DO,
	input         SPI_DI,
	input         SPI_SS2,    // data_io
	input         SPI_SS3,    // OSD
	input         CONF_DATA0, // SPI_SS for user_io
	input         SPI_SS4,

	output [12:0] SDRAM_A,
	inout  [15:0] SDRAM_DQ,
	output        SDRAM_DQML,
	output        SDRAM_DQMH,
	output        SDRAM_nWE,
	output        SDRAM_nCAS,
	output        SDRAM_nRAS,
	output        SDRAM_nCS,
	output  [1:0] SDRAM_BA,
	output        SDRAM_CLK,
	output        SDRAM_CKE,

`ifdef MINIMIG_DUAL_SDRAM
	// the second SDRAM (64 Mbytes), on the expansion connector's pins
	output [12:0] SDRAM2_A,
	inout  [15:0] SDRAM2_DQ,
	output        SDRAM2_DQML,
	output        SDRAM2_DQMH,
	output        SDRAM2_nWE,
	output        SDRAM2_nCAS,
	output        SDRAM2_nRAS,
	output        SDRAM2_nCS,
	output  [1:0] SDRAM2_BA,
	output        SDRAM2_CLK,
	output        SDRAM2_CKE,
`endif

	output        AUDIO_L,
	output        AUDIO_R,

	output        I2S_BCK,
	output        I2S_LRCK,
	output        I2S_DATA,

	//joystick reflection
	input        JOY_XCLK,
	input        JOY_XLOAD,
	output       JOY_XDATA,	

	// db9 joystick
	output        JOY_CLK       = 1'b1,
	output        JOY_LOAD      = 1'b1,
	input         JOY_DATA,
//	output        JOY_SEL       = 1'b1,	
	
`ifdef USE_AUDIO_IN
	input         AUDIO_IN,
`endif
	input         UART_RX,
	output        UART_TX,

	input         SD_SCK,		//SD_SCK is being driven by middleboard
	input         SD_MISO
);

minimig_mist_top guest
 (
 .CLOCK_50	 (CLOCK_50),
 .LED		 (LED),
 .SDRAM_DQ	 (SDRAM_DQ),	
 .SDRAM_A	 (SDRAM_A),
 .SDRAM_DQML (SDRAM_DQML),
 .SDRAM_DQMH (SDRAM_DQMH),
 .SDRAM_nWE	 (SDRAM_nWE),
 .SDRAM_nCAS (SDRAM_nCAS),
 .SDRAM_nRAS (SDRAM_nRAS),
 .SDRAM_nCS	 (SDRAM_nCS),
 .SDRAM_BA	 (SDRAM_BA),
 .SDRAM_CLK	 (SDRAM_CLK),
 .SDRAM_CKE	 (SDRAM_CKE),
`ifdef MINIMIG_DUAL_SDRAM
 .SDRAM2_DQ	 (SDRAM2_DQ),
 .SDRAM2_A	 (SDRAM2_A),
 .SDRAM2_DQML (SDRAM2_DQML),
 .SDRAM2_DQMH (SDRAM2_DQMH),
 .SDRAM2_nWE (SDRAM2_nWE),
 .SDRAM2_nCAS (SDRAM2_nCAS),
 .SDRAM2_nRAS (SDRAM2_nRAS),
 .SDRAM2_nCS (SDRAM2_nCS),
 .SDRAM2_BA	 (SDRAM2_BA),
 .SDRAM2_CLK (SDRAM2_CLK),
 .SDRAM2_CKE (SDRAM2_CKE),
`endif
		 			
 .SPI_DO	 (spi_do_int),
 //.SPI_DO	 (SPI_DO),
 .SPI_DI	 (SPI_DI),
 .SPI_SCK	 (SPI_SS4 ? SPI_SCK : SD_SCK),
 //.SPI_SCK	 (SPI_SCK),
 .SPI_SS2	 (SPI_SS2),
 .SPI_SS3	 (SPI_SS3),
 .SPI_SS4	 (SPI_SS4),
 .CONF_DATA0 (CONF_DATA0),

 // AUDIO
 .AUDIO_L    (AUDIO_L),
 .AUDIO_R    (AUDIO_R),
 .I2S_BCK	 (I2S_BCK),
 .I2S_LRCK	 (I2S_LRCK),
 .I2S_DATA	 (I2S_DATA),

 .VGA_HS	 (VGA_HS),
 .VGA_VS	 (VGA_VS),
 .VGA_R	 	 (VGA_R),
 .VGA_G		 (VGA_G),
 .VGA_B		 (VGA_B),
`ifdef USE_AUDIO_IN
 .AUDIO_IN   (AUDIO_IN),
`endif
 .UART_RX	 (UART_RX),	
 .UART_TX	 (UART_TX) 
);

// direct upload fix
wire spi_do_int;
assign spi_do_int = SPI_SS4 ? 1'bz : SD_MISO;
assign SPI_DO = spi_do_int;

// DB9 Joystick reflection
assign JOY_CLK = JOY_XCLK; 
assign JOY_LOAD = JOY_XLOAD; 
assign JOY_XDATA = JOY_DATA;

endmodule
