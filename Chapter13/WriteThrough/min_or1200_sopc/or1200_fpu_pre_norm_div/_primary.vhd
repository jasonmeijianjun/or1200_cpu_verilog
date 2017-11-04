library verilog;
use verilog.vl_types.all;
entity or1200_fpu_pre_norm_div is
    generic(
        FP_WIDTH        : integer := 32;
        MUL_SERIAL      : integer := 0;
        MUL_COUNT       : integer := 11;
        FRAC_WIDTH      : integer := 23;
        EXP_WIDTH       : integer := 8;
        ZERO_VECTOR     : integer := 0;
        INF             : integer := 2139095040;
        QNAN            : integer := 2143289344;
        SNAN            : integer := 2139095041
    );
    port(
        clk_i           : in     vl_logic;
        opa_i           : in     vl_logic_vector;
        opb_i           : in     vl_logic_vector;
        exp_10_o        : out    vl_logic_vector;
        dvdnd_50_o      : out    vl_logic_vector;
        dvsor_27_o      : out    vl_logic_vector
    );
end or1200_fpu_pre_norm_div;
