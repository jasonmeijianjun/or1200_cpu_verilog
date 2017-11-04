library verilog;
use verilog.vl_types.all;
entity wb_conbus_top is
    generic(
        s0_addr_w       : integer := 4;
        s0_addr         : integer := 0;
        s1_addr_w       : integer := 4;
        s1_addr         : integer := 1;
        s27_addr_w      : integer := 8;
        s2_addr         : integer := 146;
        s3_addr         : integer := 147;
        s4_addr         : integer := 148;
        s5_addr         : integer := 149;
        s6_addr         : integer := 150;
        s7_addr         : integer := 151
    );
    port(
        clk_i           : in     vl_logic;
        rst_i           : in     vl_logic;
        m0_dat_i        : in     vl_logic_vector(31 downto 0);
        m0_dat_o        : out    vl_logic_vector(31 downto 0);
        m0_adr_i        : in     vl_logic_vector(31 downto 0);
        m0_sel_i        : in     vl_logic_vector(3 downto 0);
        m0_we_i         : in     vl_logic;
        m0_cyc_i        : in     vl_logic;
        m0_stb_i        : in     vl_logic;
        m0_ack_o        : out    vl_logic;
        m0_err_o        : out    vl_logic;
        m0_rty_o        : out    vl_logic;
        m0_cab_i        : in     vl_logic;
        m1_dat_i        : in     vl_logic_vector(31 downto 0);
        m1_dat_o        : out    vl_logic_vector(31 downto 0);
        m1_adr_i        : in     vl_logic_vector(31 downto 0);
        m1_sel_i        : in     vl_logic_vector(3 downto 0);
        m1_we_i         : in     vl_logic;
        m1_cyc_i        : in     vl_logic;
        m1_stb_i        : in     vl_logic;
        m1_ack_o        : out    vl_logic;
        m1_err_o        : out    vl_logic;
        m1_rty_o        : out    vl_logic;
        m1_cab_i        : in     vl_logic;
        m2_dat_i        : in     vl_logic_vector(31 downto 0);
        m2_dat_o        : out    vl_logic_vector(31 downto 0);
        m2_adr_i        : in     vl_logic_vector(31 downto 0);
        m2_sel_i        : in     vl_logic_vector(3 downto 0);
        m2_we_i         : in     vl_logic;
        m2_cyc_i        : in     vl_logic;
        m2_stb_i        : in     vl_logic;
        m2_ack_o        : out    vl_logic;
        m2_err_o        : out    vl_logic;
        m2_rty_o        : out    vl_logic;
        m2_cab_i        : in     vl_logic;
        m3_dat_i        : in     vl_logic_vector(31 downto 0);
        m3_dat_o        : out    vl_logic_vector(31 downto 0);
        m3_adr_i        : in     vl_logic_vector(31 downto 0);
        m3_sel_i        : in     vl_logic_vector(3 downto 0);
        m3_we_i         : in     vl_logic;
        m3_cyc_i        : in     vl_logic;
        m3_stb_i        : in     vl_logic;
        m3_ack_o        : out    vl_logic;
        m3_err_o        : out    vl_logic;
        m3_rty_o        : out    vl_logic;
        m3_cab_i        : in     vl_logic;
        m4_dat_i        : in     vl_logic_vector(31 downto 0);
        m4_dat_o        : out    vl_logic_vector(31 downto 0);
        m4_adr_i        : in     vl_logic_vector(31 downto 0);
        m4_sel_i        : in     vl_logic_vector(3 downto 0);
        m4_we_i         : in     vl_logic;
        m4_cyc_i        : in     vl_logic;
        m4_stb_i        : in     vl_logic;
        m4_ack_o        : out    vl_logic;
        m4_err_o        : out    vl_logic;
        m4_rty_o        : out    vl_logic;
        m4_cab_i        : in     vl_logic;
        m5_dat_i        : in     vl_logic_vector(31 downto 0);
        m5_dat_o        : out    vl_logic_vector(31 downto 0);
        m5_adr_i        : in     vl_logic_vector(31 downto 0);
        m5_sel_i        : in     vl_logic_vector(3 downto 0);
        m5_we_i         : in     vl_logic;
        m5_cyc_i        : in     vl_logic;
        m5_stb_i        : in     vl_logic;
        m5_ack_o        : out    vl_logic;
        m5_err_o        : out    vl_logic;
        m5_rty_o        : out    vl_logic;
        m5_cab_i        : in     vl_logic;
        m6_dat_i        : in     vl_logic_vector(31 downto 0);
        m6_dat_o        : out    vl_logic_vector(31 downto 0);
        m6_adr_i        : in     vl_logic_vector(31 downto 0);
        m6_sel_i        : in     vl_logic_vector(3 downto 0);
        m6_we_i         : in     vl_logic;
        m6_cyc_i        : in     vl_logic;
        m6_stb_i        : in     vl_logic;
        m6_ack_o        : out    vl_logic;
        m6_err_o        : out    vl_logic;
        m6_rty_o        : out    vl_logic;
        m6_cab_i        : in     vl_logic;
        m7_dat_i        : in     vl_logic_vector(31 downto 0);
        m7_dat_o        : out    vl_logic_vector(31 downto 0);
        m7_adr_i        : in     vl_logic_vector(31 downto 0);
        m7_sel_i        : in     vl_logic_vector(3 downto 0);
        m7_we_i         : in     vl_logic;
        m7_cyc_i        : in     vl_logic;
        m7_stb_i        : in     vl_logic;
        m7_ack_o        : out    vl_logic;
        m7_err_o        : out    vl_logic;
        m7_rty_o        : out    vl_logic;
        m7_cab_i        : in     vl_logic;
        s0_dat_i        : in     vl_logic_vector(31 downto 0);
        s0_dat_o        : out    vl_logic_vector(31 downto 0);
        s0_adr_o        : out    vl_logic_vector(31 downto 0);
        s0_sel_o        : out    vl_logic_vector(3 downto 0);
        s0_we_o         : out    vl_logic;
        s0_cyc_o        : out    vl_logic;
        s0_stb_o        : out    vl_logic;
        s0_ack_i        : in     vl_logic;
        s0_err_i        : in     vl_logic;
        s0_rty_i        : in     vl_logic;
        s0_cab_o        : out    vl_logic;
        s1_dat_i        : in     vl_logic_vector(31 downto 0);
        s1_dat_o        : out    vl_logic_vector(31 downto 0);
        s1_adr_o        : out    vl_logic_vector(31 downto 0);
        s1_sel_o        : out    vl_logic_vector(3 downto 0);
        s1_we_o         : out    vl_logic;
        s1_cyc_o        : out    vl_logic;
        s1_stb_o        : out    vl_logic;
        s1_ack_i        : in     vl_logic;
        s1_err_i        : in     vl_logic;
        s1_rty_i        : in     vl_logic;
        s1_cab_o        : out    vl_logic;
        s2_dat_i        : in     vl_logic_vector(31 downto 0);
        s2_dat_o        : out    vl_logic_vector(31 downto 0);
        s2_adr_o        : out    vl_logic_vector(31 downto 0);
        s2_sel_o        : out    vl_logic_vector(3 downto 0);
        s2_we_o         : out    vl_logic;
        s2_cyc_o        : out    vl_logic;
        s2_stb_o        : out    vl_logic;
        s2_ack_i        : in     vl_logic;
        s2_err_i        : in     vl_logic;
        s2_rty_i        : in     vl_logic;
        s2_cab_o        : out    vl_logic;
        s3_dat_i        : in     vl_logic_vector(31 downto 0);
        s3_dat_o        : out    vl_logic_vector(31 downto 0);
        s3_adr_o        : out    vl_logic_vector(31 downto 0);
        s3_sel_o        : out    vl_logic_vector(3 downto 0);
        s3_we_o         : out    vl_logic;
        s3_cyc_o        : out    vl_logic;
        s3_stb_o        : out    vl_logic;
        s3_ack_i        : in     vl_logic;
        s3_err_i        : in     vl_logic;
        s3_rty_i        : in     vl_logic;
        s3_cab_o        : out    vl_logic;
        s4_dat_i        : in     vl_logic_vector(31 downto 0);
        s4_dat_o        : out    vl_logic_vector(31 downto 0);
        s4_adr_o        : out    vl_logic_vector(31 downto 0);
        s4_sel_o        : out    vl_logic_vector(3 downto 0);
        s4_we_o         : out    vl_logic;
        s4_cyc_o        : out    vl_logic;
        s4_stb_o        : out    vl_logic;
        s4_ack_i        : in     vl_logic;
        s4_err_i        : in     vl_logic;
        s4_rty_i        : in     vl_logic;
        s4_cab_o        : out    vl_logic;
        s5_dat_i        : in     vl_logic_vector(31 downto 0);
        s5_dat_o        : out    vl_logic_vector(31 downto 0);
        s5_adr_o        : out    vl_logic_vector(31 downto 0);
        s5_sel_o        : out    vl_logic_vector(3 downto 0);
        s5_we_o         : out    vl_logic;
        s5_cyc_o        : out    vl_logic;
        s5_stb_o        : out    vl_logic;
        s5_ack_i        : in     vl_logic;
        s5_err_i        : in     vl_logic;
        s5_rty_i        : in     vl_logic;
        s5_cab_o        : out    vl_logic;
        s6_dat_i        : in     vl_logic_vector(31 downto 0);
        s6_dat_o        : out    vl_logic_vector(31 downto 0);
        s6_adr_o        : out    vl_logic_vector(31 downto 0);
        s6_sel_o        : out    vl_logic_vector(3 downto 0);
        s6_we_o         : out    vl_logic;
        s6_cyc_o        : out    vl_logic;
        s6_stb_o        : out    vl_logic;
        s6_ack_i        : in     vl_logic;
        s6_err_i        : in     vl_logic;
        s6_rty_i        : in     vl_logic;
        s6_cab_o        : out    vl_logic;
        s7_dat_i        : in     vl_logic_vector(31 downto 0);
        s7_dat_o        : out    vl_logic_vector(31 downto 0);
        s7_adr_o        : out    vl_logic_vector(31 downto 0);
        s7_sel_o        : out    vl_logic_vector(3 downto 0);
        s7_we_o         : out    vl_logic;
        s7_cyc_o        : out    vl_logic;
        s7_stb_o        : out    vl_logic;
        s7_ack_i        : in     vl_logic;
        s7_err_i        : in     vl_logic;
        s7_rty_i        : in     vl_logic;
        s7_cab_o        : out    vl_logic
    );
end wb_conbus_top;