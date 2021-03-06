library verilog;
use verilog.vl_types.all;
entity or1200_reg2mem is
    generic(
        width           : integer := 32
    );
    port(
        addr            : in     vl_logic_vector(1 downto 0);
        lsu_op          : in     vl_logic_vector(3 downto 0);
        regdata         : in     vl_logic_vector;
        memdata         : out    vl_logic_vector
    );
end or1200_reg2mem;
