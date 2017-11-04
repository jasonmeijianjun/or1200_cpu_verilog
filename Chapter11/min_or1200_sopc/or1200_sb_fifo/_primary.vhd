library verilog;
use verilog.vl_types.all;
entity or1200_sb_fifo is
    generic(
        dw              : integer := 68;
        fw              : integer := 2;
        fl              : integer := 4
    );
    port(
        clk_i           : in     vl_logic;
        rst_i           : in     vl_logic;
        dat_i           : in     vl_logic_vector;
        wr_i            : in     vl_logic;
        rd_i            : in     vl_logic;
        dat_o           : out    vl_logic_vector;
        full_o          : out    vl_logic;
        empty_o         : out    vl_logic
    );
end or1200_sb_fifo;
