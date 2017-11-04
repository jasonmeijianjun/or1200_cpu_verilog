library verilog;
use verilog.vl_types.all;
entity wb_conbus_arb is
    generic(
        grant0          : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi0);
        grant1          : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi1);
        grant2          : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi0);
        grant3          : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi1);
        grant4          : vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi0);
        grant5          : vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi1);
        grant6          : vl_logic_vector(2 downto 0) := (Hi1, Hi1, Hi0);
        grant7          : vl_logic_vector(2 downto 0) := (Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        req             : in     vl_logic_vector(7 downto 0);
        gnt             : out    vl_logic_vector(2 downto 0)
    );
    attribute grant0_mti_vect_attrib : integer;
    attribute grant0_mti_vect_attrib of grant0 : constant is 0;
    attribute grant1_mti_vect_attrib : integer;
    attribute grant1_mti_vect_attrib of grant1 : constant is 1;
    attribute grant2_mti_vect_attrib : integer;
    attribute grant2_mti_vect_attrib of grant2 : constant is 2;
    attribute grant3_mti_vect_attrib : integer;
    attribute grant3_mti_vect_attrib of grant3 : constant is 3;
    attribute grant4_mti_vect_attrib : integer;
    attribute grant4_mti_vect_attrib of grant4 : constant is 4;
    attribute grant5_mti_vect_attrib : integer;
    attribute grant5_mti_vect_attrib of grant5 : constant is 5;
    attribute grant6_mti_vect_attrib : integer;
    attribute grant6_mti_vect_attrib of grant6 : constant is 6;
    attribute grant7_mti_vect_attrib : integer;
    attribute grant7_mti_vect_attrib of grant7 : constant is 7;
end wb_conbus_arb;
