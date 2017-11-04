library verilog;
use verilog.vl_types.all;
entity ram is
    generic(
        aw              : integer := 13;
        dw              : integer := 32
    );
    port(
        rst             : in     vl_logic;
        addr            : in     vl_logic_vector;
        sel             : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        di              : in     vl_logic_vector;
        we              : in     vl_logic;
        doq             : out    vl_logic_vector
    );
end ram;
