library verilog;
use verilog.vl_types.all;
entity or1200_dmmu_tlb is
    generic(
        dw              : integer := 32;
        aw              : integer := 32
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        tlb_en          : in     vl_logic;
        vaddr           : in     vl_logic_vector;
        hit             : out    vl_logic;
        ppn             : out    vl_logic_vector(31 downto 13);
        uwe             : out    vl_logic;
        ure             : out    vl_logic;
        swe             : out    vl_logic;
        sre             : out    vl_logic;
        ci              : out    vl_logic;
        spr_cs          : in     vl_logic;
        spr_write       : in     vl_logic;
        spr_addr        : in     vl_logic_vector(31 downto 0);
        spr_dat_i       : in     vl_logic_vector(31 downto 0);
        spr_dat_o       : out    vl_logic_vector(31 downto 0)
    );
end or1200_dmmu_tlb;
