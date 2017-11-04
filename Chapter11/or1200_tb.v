`timescale 1ns/100ps

module or1200_tb();

       reg     CLOCK_50;
       reg     rst;
       
       initial begin
               CLOCK_50 = 1'b0;
               forever #10 CLOCK_50 = ~CLOCK_50;
       end
       
       
       
       initial begin
               rst = 1'b0;
               #200 rst= 1'b1;
               #100 rst= 1'b0;
               #4000 $stop;
       end
       
       or1200_sopc    or1200_sopc_inst
       (
          .clk_i(CLOCK_50),
          .rst_i(rst)
       );
endmodule
