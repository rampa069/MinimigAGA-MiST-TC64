library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- -----------------------------------------------------------------------
entity unamiga_top is
	port
	(
		CLOCK_50	:	 IN STD_LOGIC;
		LED         :   OUT STD_LOGIC;
		DRAM_CLK		:	 OUT STD_LOGIC;
		DRAM_CKE		:	 OUT STD_LOGIC;
		DRAM_ADDR		:	 OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		DRAM_BA		:	 OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		DRAM_DQ		:	 INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		DRAM_LDQM		:	 OUT STD_LOGIC;
		DRAM_UDQM		:	 OUT STD_LOGIC;
		DRAM_CS_N		:	 OUT STD_LOGIC;
		DRAM_WE_N		:	 OUT STD_LOGIC;
		DRAM_CAS_N		:	 OUT STD_LOGIC;
		DRAM_RAS_N		:	 OUT STD_LOGIC;
		VGA_HS		:	 OUT STD_LOGIC;
		VGA_VS		:	 OUT STD_LOGIC;
		VGA_R		:	 OUT UNSIGNED (5 DOWNTO 0);
		VGA_G		:	 OUT UNSIGNED (5 DOWNTO 0);
		VGA_B		:	 OUT UNSIGNED (5 DOWNTO 0);
		-- AUDIO
		SIGMA_R                     : OUT STD_LOGIC;
		SIGMA_L                     : OUT STD_LOGIC;
		-- SERIAL
		UART_TXD                     : OUT STD_LOGIC;
		UART_RXD                     : IN STD_LOGIC;
		-- JOYSTICK
		JOYA		:	 IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		JOYB		:	 IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		-- PS2
		PS2_KEYBOARD_CLK            :    INOUT STD_LOGIC;
		PS2_KEYBOARD_DAT            :    INOUT STD_LOGIC;
		PS2_MOUSE_CLK               :    INOUT STD_LOGIC;
		PS2_MOUSE_DAT               :    INOUT STD_LOGIC;

		-- SD Card
		SD_CS                       : out   std_logic := '1';
		SD_SCK                      : out   std_logic := '0';
		SD_MOSI                     : out   std_logic := '0';
		SD_MISO                     : in    std_logic
	
	);
END entity;


architecture RTL of unamiga_top is
   constant reset_cycles : integer := 131071;
	
-- System clocks

	signal sysclk : std_logic;

-- SPI signals

	signal diskled :std_logic;
	signal floppyled : std_logic;
	signal powerled : unsigned(1 downto 0);


	

-- PS/2 Keyboard socket - used for second mouse

	signal ps2_keyboard_clk_in : std_logic;
	signal ps2_keyboard_dat_in : std_logic;
	signal ps2_keyboard_clk_out : std_logic;
	signal ps2_keyboard_dat_out : std_logic;

-- PS/2 Mouse

	signal ps2_mouse_clk_in: std_logic;
	signal ps2_mouse_dat_in: std_logic;
	signal ps2_mouse_clk_out: std_logic;
	signal ps2_mouse_dat_out: std_logic;

	
-- Video
	signal vga_pixel : std_logic;
	signal vga_red: std_logic_vector(7 downto 0);
	signal vga_green: std_logic_vector(7 downto 0);
	signal vga_blue: std_logic_vector(7 downto 0);
	signal vga_window : std_logic;
	signal vga_selcsync : std_logic;
	signal vga_csync : std_logic;
	signal vga_hsync : std_logic;
	signal vga_vsync : std_logic;
	signal vbl : std_logic;
	signal osd_window : std_logic;
	signal osd_pixel : std_logic;
	
	signal VGA_HS_i : STD_LOGIC;
	signal VGA_VS_i : STD_LOGIC;
	signal VGA_R_i : UNSIGNED(5 DOWNTO 0);
	signal VGA_G_i : UNSIGNED(5 DOWNTO 0);
	signal VGA_B_i : UNSIGNED(5 DOWNTO 0);
	
-- RS232 serial
	signal rs232_rxd : std_logic;
	signal rs232_txd : std_logic;


	signal audio_l : std_logic_vector(15 downto 0);
	signal audio_r : std_logic_vector(15 downto 0);
	
-- IO
	signal joy_a : std_logic_vector(6 downto 0);
	signal joy_b : std_logic_vector(6 downto 0);
	signal joy_c : std_logic_vector(6 downto 0);
	signal joy_d : std_logic_vector(6 downto 0);

-- LED
	signal TMPLED : std_logic;
	
	COMPONENT minimig_virtual_top
	generic
	( debug : boolean := false;
		havertg : boolean := true;
		haveaudio : boolean := true;
		havec2p : boolean := true;
		ram_64meg : boolean := false;
		haveiec : boolean := false;
		havereconfig : boolean := false
	);
	PORT
	(
		CLK_IN		:	 IN STD_LOGIC;
		CLK_28		:	 OUT STD_LOGIC;
		CLK_114		:	 OUT STD_LOGIC;
		RESET_N     :   IN STD_LOGIC;
		LED_POWER	:	 OUT STD_LOGIC;
		LED_DISK    :   OUT STD_LOGIC;
		MENU_BUTTON :   IN STD_LOGIC;
		CTRL_TX		:	 OUT STD_LOGIC;
		CTRL_RX		:	 IN STD_LOGIC;
		AMIGA_TX		:	 OUT STD_LOGIC;
		AMIGA_RX		:	 IN STD_LOGIC;
		VGA_PIXEL   : OUT STD_LOGIC;
		VGA_SELCS   : OUT STD_LOGIC;
		VGA_CS		:	 OUT STD_LOGIC;
		VGA_HS		:	 OUT STD_LOGIC;
		VGA_VS		:	 OUT STD_LOGIC;
		VGA_R		:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		VGA_G		:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		VGA_B		:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		SDRAM_DQ		:	 INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		SDRAM_A		:	 OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		SDRAM_DQML		:	 OUT STD_LOGIC;
		SDRAM_DQMH		:	 OUT STD_LOGIC;
		SDRAM_nWE		:	 OUT STD_LOGIC;
		SDRAM_nCAS		:	 OUT STD_LOGIC;
		SDRAM_nRAS		:	 OUT STD_LOGIC;
		SDRAM_nCS		:	 OUT STD_LOGIC;
		SDRAM_BA		:	 OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		SDRAM_CLK		:	 OUT STD_LOGIC;
		SDRAM_CKE		:	 OUT STD_LOGIC;
		AUDIO_L		:	 OUT STD_LOGIC_VECTOR(15 downto 0);
		AUDIO_R		:	 OUT STD_LOGIC_VECTOR(15 downto 0);
		PS2_DAT_I		:	 INOUT STD_LOGIC;
		PS2_CLK_I		:	 INOUT STD_LOGIC;
		PS2_MDAT_I	:	 INOUT STD_LOGIC;
		PS2_MCLK_I		:	 INOUT STD_LOGIC;
		PS2_DAT_O		:	 INOUT STD_LOGIC;
		PS2_CLK_O		:	 INOUT STD_LOGIC;
		PS2_MDAT_O		:	 INOUT STD_LOGIC;
		PS2_MCLK_O		:	 INOUT STD_LOGIC;
		AMIGA_RESET_N : IN STD_LOGIC;
		AMIGA_KEY	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		AMIGA_KEY_STB : IN STD_LOGIC;
		C64_KEYS	:	IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		JOYA		:	 IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		JOYB		:	 IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		JOYC		:	 IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		JOYD		:	 IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		SD_MISO	:	 IN STD_LOGIC;
		SD_MOSI	:	 OUT STD_LOGIC;
		SD_CLK	:	 OUT STD_LOGIC;
		SD_CS		:	 OUT STD_LOGIC;
		SD_ACK	:	 IN STD_LOGIC;
		RECONFIG	:	 OUT STD_LOGIC;
		IECSERIAL:	 OUT STD_LOGIC			
	);
	END COMPONENT;

signal iecserial : std_logic;
signal reconfig : std_logic;
signal clk_sys_out   : std_logic;
	
begin

-- SPI


vga_window<='1';

ps2_mouse_dat_in<=ps2_mouse_dat;
ps2_mouse_dat <= '0' when ps2_mouse_dat_out='0' else 'Z';
ps2_mouse_clk_in<=ps2_mouse_clk;
ps2_mouse_clk <= '0' when ps2_mouse_clk_out='0' else 'Z';

ps2_keyboard_dat_in <=ps2_keyboard_dat;
ps2_keyboard_dat <= '0' when ps2_keyboard_dat_out='0' else 'Z';
ps2_keyboard_clk_in<=ps2_keyboard_clk;
ps2_keyboard_clk <= '0' when ps2_keyboard_clk_out='0' else 'Z';


virtual_top : COMPONENT minimig_virtual_top
generic map
	(
		debug => false,
		havertg => true,
		haveaudio => true,
		havec2p => true,
		ram_64meg => false,
		haveiec => false,
		havereconfig => false		
	)
PORT map
	(
		CLK_IN => CLOCK_50,
		CLK_114 => sysclk,
		RESET_N => '1',
		LED_POWER => open,
		LED_DISK => TMPLED,
		MENU_BUTTON => '1',
		CTRL_TX => open,
		CTRL_RX => '1',
		AMIGA_TX => UART_TXD,
		AMIGA_RX => UART_RXD,
		VGA_PIXEL => vga_pixel,
		VGA_SELCS => vga_selcsync,
		VGA_CS => vga_csync,
		VGA_HS => vga_hsync,
		VGA_VS => vga_vsync,
		VGA_R	=> vga_red,
		VGA_G	=> vga_green,
		VGA_B	=> vga_blue,
	
		SDRAM_DQ	=> DRAM_DQ,
		SDRAM_A => DRAM_ADDR,
		SDRAM_DQML => DRAM_LDQM,
		SDRAM_DQMH => DRAM_UDQM,
		SDRAM_nWE => DRAM_WE_N,
		SDRAM_nCAS => DRAM_CAS_N,
		SDRAM_nRAS => DRAM_RAS_N,
--		SDRAM_nCS => DRAM_CS_N,
		SDRAM_BA => DRAM_BA,
		SDRAM_CLK => DRAM_CLK,
--		SDRAM_CKE => DRAM_CKE,

		AUDIO_L => audio_l,
		AUDIO_R => audio_r,
		
		PS2_DAT_I => ps2_keyboard_dat_in,
		PS2_CLK_I => ps2_keyboard_clk_in,
		PS2_MDAT_I => ps2_mouse_dat_in,
		PS2_MCLK_I => ps2_mouse_clk_in,

		PS2_DAT_O => ps2_keyboard_dat_out,
		PS2_CLK_O => ps2_keyboard_clk_out,
		PS2_MDAT_O => ps2_mouse_dat_out,
		PS2_MCLK_O => ps2_mouse_clk_out,
		
		AMIGA_RESET_N => '1',
		AMIGA_KEY => (others=>'-'),
		AMIGA_KEY_STB => '0',
		C64_KEYS => X"FEDCBA9876543210",
		
		JOYA => JOY_A,
		JOYB => JOY_B,
		JOYC => JOY_C,
		JOYD => JOY_D,
		
		SD_MISO => sd_miso,
		SD_MOSI => sd_mosi,
		SD_CLK => sd_sck,
		SD_CS => sd_cs,
		SD_ACK => '1',
		RECONFIG => reconfig,
		IECSERIAL => iecserial
	);

DRAM_CS_N <= '0';
DRAM_CKE  <= '1'; 
		
JOY_A<='1' & JOYA;
JOY_B<='1' & JOYB;
JOY_C<=(others=>'1');
JOY_D<=(others=>'1');

mydither : entity work.video_vga_dither
	generic map(
		outbits => 6
	)
	port map(
		clk=>sysclk,
		pixel=> vga_pixel,
		vidEna=>vga_window,
		iSelcsync=>vga_selcsync,
		iCsync=>vga_csync,
		iHsync=>vga_hsync,
		iVsync=>vga_vsync,
		iRed =>   unsigned(vga_red),
		iGreen => unsigned(vga_green),
		iBlue =>  unsigned(vga_blue),
		oHsync=>VGA_HS_i,
		oVsync=>VGA_VS_i,
		oRed(7 downto 2) => VGA_R_i,
		oGreen(7 downto 2) => VGA_G_i,
		oBlue(7 downto 2) => VGA_B_i
	);

	
process(sysclk)
begin
	if rising_edge(sysclk) then
		VGA_R<=VGA_R_i;
		VGA_G<=VGA_G_i;
		VGA_B<=VGA_B_i;
		VGA_HS<=VGA_HS_i;
		VGA_VS<=VGA_VS_i;
	end if;
end process;

LED <= VGA_HS_i;

dac_l: entity work.dac_dsm2v  
generic map
	(
	  nbits_g => 16
	)
port map
(	
   clock_i  => sysclk,
   reset_i  => '0',
   dac_i    => signed(AUDIO_L),
   dac_o    => SIGMA_L
);

dac_r: entity work.dac_dsm2v  
generic map
	(
	  nbits_g => 16
	)
port map
(	
   clock_i  => sysclk,
   reset_i  => '0',
   dac_i    => signed(AUDIO_R),
   dac_o    => SIGMA_R
);

end rtl;

