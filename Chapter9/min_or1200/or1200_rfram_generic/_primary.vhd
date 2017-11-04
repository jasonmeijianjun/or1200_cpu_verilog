library verilog;
use verilog.vl_types.all;
entity or1200_rfram_generic is
    generic(
        dw              : integer := 32;
        aw              : integer := 5
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ce_a            : in     vl_logic;
        addr_a          : in     vl_logic_vector;
        do_a            : out    vl_logic_vector;
        ce_b            : in     vl_logic;
        addr_b          : in     vl_logic_vector;
        do_b            : out    vl_logic_vector;
        ce_w            : in     vl_logic;
        we_w            : in     vl_logic;
        addr_w          : in     vl_logic_vector;
        di_w            : in     vl_logic_vector
    );
end or1200_rfram_generic;
