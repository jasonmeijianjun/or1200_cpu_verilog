library verilog;
use verilog.vl_types.all;
entity or1200_dpram_256x32 is
    generic(
        aw              : integer := 8;
        dw              : integer := 32
    );
    port(
        clk_a           : in     vl_logic;
        rst_a           : in     vl_logic;
        ce_a            : in     vl_logic;
        oe_a            : in     vl_logic;
        addr_a          : in     vl_logic_vector;
        do_a            : out    vl_logic_vector;
        clk_b           : in     vl_logic;
        rst_b           : in     vl_logic;
        ce_b            : in     vl_logic;
        we_b            : in     vl_logic;
        addr_b          : in     vl_logic_vector;
        di_b            : in     vl_logic_vector
    );
end or1200_dpram_256x32;
