library verilog;
use verilog.vl_types.all;
entity or1200_fpu_post_norm_mul is
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
        exp_10_i        : in     vl_logic_vector;
        fract_48_i      : in     vl_logic_vector;
        sign_i          : in     vl_logic;
        rmode_i         : in     vl_logic_vector(1 downto 0);
        output_o        : out    vl_logic_vector;
        ine_o           : out    vl_logic
    );
end or1200_fpu_post_norm_mul;
