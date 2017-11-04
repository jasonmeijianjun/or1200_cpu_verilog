library verilog;
use verilog.vl_types.all;
entity wb_conmax_msel is
    generic(
        pri_sel         : vl_logic_vector(1 downto 0) := (Hi0, Hi0)
    );
    port(
        clk_i           : in     vl_logic;
        rst_i           : in     vl_logic;
        conf            : in     vl_logic_vector(15 downto 0);
        req             : in     vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(2 downto 0);
        \next\          : in     vl_logic
    );
    attribute pri_sel_mti_vect_attrib : integer;
    attribute pri_sel_mti_vect_attrib of pri_sel : constant is 0;
end wb_conmax_msel;
