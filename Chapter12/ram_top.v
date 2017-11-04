module ram_top(

               input clk_i,
               input rst_i,
               input wb_stb_i,
               input wb_cyc_i,
               output reg wb_ack_o,
               input [31:0] wb_addr_i,
               input [3:0] wb_sel_i,
               input wb_we_i,
               input [31:0] wb_data_i,
               output [31:0] wb_data_o
       );

       // request signal
       wire request;

       // inputs to ram
       wire [12:0] ram_address;
       wire [31:0] ram_data;
       wire [3:0] ram_byteena;
       wire ram_wren;

       // request signal's rising edge
       reg request_delay;
       wire request_rising_edge;

       // get request signal
       assign request = wb_stb_i & wb_cyc_i;

       // select data to on-chip ram only when request = '1'
       // otherwise wren will be '0', so that no data will be
       // written into onchip ram by mistake.
       assign ram_address = (request == 1'b1)? wb_addr_i[14:2]:13'b0;
       assign ram_data    = (request == 1'b1)? wb_data_i:32'b0;
       assign ram_byteena = (request == 1'b1)? wb_sel_i:4'b0;
       assign ram_wren    = (request == 1'b1)? wb_we_i:1'b0;

       // [14:2] of 32-bit address input is connected to ram0,
       // for the reason of 4 byte alignment of OR1200 processor.
       // 8-bit char or 16-bit short int accesses are accomplished
       // with the help of wb_sel_i (byteena) signal.

ram ram0(

       .rst(rst_i),
       .addr(ram_address),
       .sel(ram_byteena),
       .clk(clk_i),
       .di(ram_data),
       .we(ram_wren),
       .doq(wb_data_o)
       );

       // get the rising edge of request signal

       always @ (posedge clk_i)
       begin
               if(rst_i == 1)
                       request_delay <= 0;
               else
                       request_delay <= request;
       end

       assign request_rising_edge = (request_delay ^ request) & request;

       // generate a 1 cycle acknowledgement for each request rising edge
       always @ (posedge clk_i)
       begin
               if (rst_i == 1)
                       wb_ack_o <= 0;
               else if (request_rising_edge == 1)
                       wb_ack_o <= 1;
               else
                       wb_ack_o <= 0;
       end



endmodule

