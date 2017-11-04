library verilog;
use verilog.vl_types.all;
entity or1200_fpu_arith is
    generic(
        FP_WIDTH        : integer := 32;
        MUL_SERIAL      : integer := 1;
        MUL_COUNT       : integer := 34;
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
        opa_i           : in     vl_logic_vector;
        opb_i           : in     vl_logic_vector;
        fpu_op_i        : in     vl_logic_vector(2 downto 0);
        rmode_i         : in     vl_logic_vector(1 downto 0);
        output_o        : out    vl_logic_vector;
        start_i         : in     vl_logic;
        ready_o         : out    vl_logic;
        ine_o           : out    vl_logic;
        overflow_o      : out    vl_logic;
        underflow_o     : out    vl_logic;
        div_zero_o      : out    vl_logic;
        inf_o           : out    vl_logic;
        zero_o          : out    vl_logic;
        qnan_o          : out    vl_logic;
        snan_o          : out    vl_logic
    );
end or1200_fpu_arith;
