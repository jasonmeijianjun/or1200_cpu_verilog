library verilog;
use verilog.vl_types.all;
entity or1200_mem2reg is
    generic(
        width           : integer := 32
    );
    port(
        addr            : in     vl_logic_vector(1 downto 0);
        lsu_op          : in     vl_logic_vector(3 downto 0);
        memdata         : in     vl_logic_vector;
        regdata         : out    vl_logic_vector
    );
end or1200_mem2reg;
