library verilog;
use verilog.vl_types.all;
entity or1200_spram_32_bw is
    generic(
        aw              : integer := 10;
        dw              : integer := 32
    );
    port(
        clk             : in     vl_logic;
        ce              : in     vl_logic;
        we              : in     vl_logic_vector(3 downto 0);
        addr            : in     vl_logic_vector;
        di              : in     vl_logic_vector;
        doq             : out    vl_logic_vector
    );
end or1200_spram_32_bw;
