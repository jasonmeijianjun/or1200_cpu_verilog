library verilog;
use verilog.vl_types.all;
entity or1200_fpu_mul is
    generic(
        FP_WIDTH        : integer := 32;
        MUL_SERIAL      : integer := 0;
        MUL_COUNT       : integer := 11;
        FRAC_WIDTH      : integer := 23;
        EXP_WIDTH       : integer := 8;
        ZERO_VECTOR     : integer := 0;
        INF             : integer := 2139095040;
        QNAN            : integer := 2143289344;
        SNAN            : integer := 2139095041;
        t_state_waiting : integer := 0;
        t_state_busy    : integer := 1
    );
    port(
        clk_i           : in     vl_logic;
        fracta_i        : in     vl_logic_vector;
        fractb_i        : in     vl_logic_vector;
        signa_i         : in     vl_logic;
        signb_i         : in     vl_logic;
        start_i         : in     vl_logic;
        fract_o         : out    vl_logic_vector;
        sign_o          : out    vl_logic;
        ready_o         : out    vl_logic
    );
end or1200_fpu_mul;
