module or1200_sopc(

    input clk_i,
    input rst_i
);

 

       // **************************************************

       // Wires from OR1200 Inst Master to Conmax m0

       // **************************************************

       wire wire_iwb_ack_i;

       wire wire_iwb_cyc_o;

       wire wire_iwb_stb_o;

       wire [31:0] wire_iwb_data_i;

       wire [31:0] wire_iwb_data_o;

       wire [31:0] wire_iwb_addr_o;

       wire [3:0] wire_iwb_sel_o;

       wire wire_iwb_we_o;

       wire wire_iwb_err_i;

       wire wire_iwb_rty_i;

      

       // **************************************************

       // Wires from OR1200 Data Master to Conmax m1

       // **************************************************

       wire wire_dwb_ack_i;

       wire wire_dwb_cyc_o;

       wire wire_dwb_stb_o;

       wire [31:0] wire_dwb_data_i;

       wire [31:0] wire_dwb_data_o;

       wire [31:0] wire_dwb_addr_o;

       wire [3:0] wire_dwb_sel_o;

       wire wire_dwb_we_o;

       wire wire_dwb_err_i;

       wire wire_dwb_rty_i;

      

       // **************************************************

       // Wires from Conmax s0 to onchip_ram0

       // **************************************************

       wire wire_ram0_ack_o;

       wire wire_ram0_cyc_i;

       wire wire_ram0_stb_i;

       wire [31:0] wire_ram0_data_i;

       wire [31:0] wire_ram0_data_o;

       wire [31:0] wire_ram0_addr_i;

       wire [3:0] wire_ram0_sel_i;

       wire wire_ram0_we_i;

or1200_top u_or1200(

  // System

  .clk_i(clk_i),

  .rst_i(rst_i),

  .pic_ints_i({18'b0,1'b0,1'b0}),

  .clmode_i(2'b00),

 

  // Instruction WISHBONE INTERFACE

  .iwb_clk_i(clk_i),

  .iwb_rst_i(rst_i),

  .iwb_ack_i(wire_iwb_ack_i),

  .iwb_err_i(wire_iwb_err_i),

  .iwb_rty_i(wire_iwb_rty_i),

  .iwb_dat_i(wire_iwb_data_i),

  .iwb_cyc_o(wire_iwb_cyc_o),

  .iwb_adr_o(wire_iwb_addr_o),

  .iwb_stb_o(wire_iwb_stb_o),

  .iwb_we_o(wire_iwb_we_o),

  .iwb_sel_o(wire_iwb_sel_o),

  .iwb_dat_o(wire_iwb_data_o),

`ifdef OR1200_WB_CAB

  .iwb_cab_o(),

`endif

//`ifdef OR1200_WB_B3

//  iwb_cti_o(),

//  iwb_bte_o(),

//`endif

  // Data WISHBONE INTERFACE

  .dwb_clk_i(clk_i),

  .dwb_rst_i(rst_i),

  .dwb_ack_i(wire_dwb_ack_i),

  .dwb_err_i(wire_dwb_err_i),

  .dwb_rty_i(wire_dwb_rty_i),

  .dwb_dat_i(wire_dwb_data_i),

  .dwb_cyc_o(wire_dwb_cyc_o),

  .dwb_adr_o(wire_dwb_addr_o),

  .dwb_stb_o(wire_dwb_stb_o),

  .dwb_we_o(wire_dwb_we_o),

  .dwb_sel_o(wire_dwb_sel_o),

  .dwb_dat_o(wire_dwb_data_o),

`ifdef OR1200_WB_CAB

  .dwb_cab_o(),

`endif

//`ifdef OR1200_WB_B3

//  dwb_cti_o(),

//  dwb_bte_o(),

//`endif

 

  // External Debug Interface

  .dbg_stall_i(1'b0),

  .dbg_ewt_i(1'b0), 

  .dbg_lss_o(),

  .dbg_is_o(),

  .dbg_wp_o(),

  .dbg_bp_o(),

  .dbg_stb_i(1'b0),

  .dbg_we_i(1'b0),

  .dbg_adr_i(0),

  .dbg_dat_i(0),

  .dbg_dat_o(),

  .dbg_ack_o(),

 

//`ifdef OR1200_BIST

//  // RAM BIST

//  mbist_si_i(),

//  mbist_so_o(),

//  mbist_ctrl_i(),

//`endif

  // Power Management

  .pm_cpustall_i(0),

  .pm_clksd_o(),

  .pm_dc_gate_o(),

  .pm_ic_gate_o(),

  .pm_dmmu_gate_o(),

  .pm_immu_gate_o(),

  .pm_tt_gate_o(),

  .pm_cpu_gate_o(),

  .pm_wakeup_o(),

  .pm_lvolt_o()

);

 

wb_conmax_top u_wb(

  .clk_i(clk_i),

  .rst_i(rst_i),

 

  // Master 0 Interface

  .m0_data_i(wire_iwb_data_o),

  .m0_data_o(wire_iwb_data_i),

  .m0_addr_i(wire_iwb_addr_o),

  .m0_sel_i(wire_iwb_sel_o),

  .m0_we_i(wire_iwb_we_o),

  .m0_cyc_i(wire_iwb_cyc_o),

  .m0_stb_i(wire_iwb_stb_o),

  .m0_ack_o(wire_iwb_ack_i),

  .m0_err_o(wire_iwb_err_i),

  .m0_rty_o(wire_iwb_rty_i),

//  .m0_cab_i(),

 

  // Master 1 Interface

  .m1_data_i(wire_dwb_data_o),

  .m1_data_o(wire_dwb_data_i),

  .m1_addr_i(wire_dwb_addr_o),

  .m1_sel_i(wire_dwb_sel_o),

  .m1_we_i(wire_dwb_we_o),

  .m1_cyc_i(wire_dwb_cyc_o),

  .m1_stb_i(wire_dwb_stb_o),

  .m1_ack_o(wire_dwb_ack_i),

  .m1_err_o(wire_dwb_err_i),

  .m1_rty_o(wire_dwb_rty_i),

//  .m0_cab_i(),

 

  // Slave 0 Interface

  .s0_data_i(wire_ram0_data_o),

  .s0_data_o(wire_ram0_data_i),

  .s0_addr_o(wire_ram0_addr_i),

  .s0_sel_o(wire_ram0_sel_i),

  .s0_we_o(wire_ram0_we_i),

  .s0_cyc_o(wire_ram0_cyc_i),

  .s0_stb_o(wire_ram0_stb_i),

  .s0_ack_i(wire_ram0_ack_o),

  .s0_err_i(0),

  .s0_rty_i(0)

  //.s0_cab_o(),


  );

 

ram_top u_ram0(

    .clk_i(clk_i),

    .rst_i(rst_i),

   

    .wb_stb_i(wire_ram0_stb_i),

    .wb_cyc_i(wire_ram0_cyc_i),

    .wb_ack_o(wire_ram0_ack_o),

    .wb_addr_i(wire_ram0_addr_i),

    .wb_sel_i(wire_ram0_sel_i),

    .wb_we_i(wire_ram0_we_i),

    .wb_data_i(wire_ram0_data_i),

    .wb_data_o(wire_ram0_data_o)

  );


endmodule


