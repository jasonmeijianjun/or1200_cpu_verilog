library verilog;
use verilog.vl_types.all;
entity or1200_fpu_intfloat_conv is
    generic(
        INF             : integer := 2139095040;
        QNAN            : integer := 2143289345;
        \SNAN\          : integer := 2139095041
    );
    port(
        clk             : in     vl_logic;
        rmode           : in     vl_logic_vector(1 downto 0);
        fpu_op          : in     vl_logic_vector(2 downto 0);
        opa             : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0);
        snan            : out    vl_logic;
        ine             : out    vl_logic;
        inv             : out    vl_logic;
        overflow        : out    vl_logic;
        underflow       : out    vl_logic;
        zero            : out    vl_logic
    );
end or1200_fpu_intfloat_conv;
