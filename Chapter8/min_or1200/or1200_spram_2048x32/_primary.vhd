library verilog;
use verilog.vl_types.all;
entity or1200_spram_2048x32 is
    generic(
        aw              : integer := 11;
        dw              : integer := 32
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ce              : in     vl_logic;
        we              : in     vl_logic;
        oe              : in     vl_logic;
        addr            : in     vl_logic_vector;
        di              : in     vl_logic_vector;
        doq             : out    vl_logic_vector
    );
end or1200_spram_2048x32;
