library verilog;
use verilog.vl_types.all;
entity or1200_dc_tag is
    generic(
        dw              : integer := 21;
        aw              : integer := 9
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        addr            : in     vl_logic_vector;
        en              : in     vl_logic;
        we              : in     vl_logic;
        datain          : in     vl_logic_vector;
        tag_v           : out    vl_logic;
        tag             : out    vl_logic_vector;
        dirty           : out    vl_logic
    );
end or1200_dc_tag;
