//µ¥¿ÚRAM
`include "or1200_defines.v"
`include "timescale.v"

module ram (
	   rst,  addr,	sel,	clk,	di,	we,	doq);

parameter aw = 13;
parameter dw = 32;

//
// Generic synchronous single-port RAM interface
//
input			clk;	// Clock
input			rst;	// Reset
input			we;	// Write enable input
input 	[aw-1:0]	addr;	// address bus inputs
input	[dw-1:0]	di;	// input data bus
output	[dw-1:0]	doq;	// output data bus
input [3:0] sel;

reg	[dw-1:0]	mem [(1<<aw)-1:0];	// RAM content
reg	[aw-1:0]	addr_reg;		// RAM address register




//
// Data output drivers
//

assign doq = mem[addr_reg];
//
// RAM address register
//
always @(posedge clk or `OR1200_RST_EVENT rst)
	if (rst == `OR1200_RST_VALUE)
		addr_reg <=  {aw{1'b0}};
	else 
		addr_reg <=  addr;

//
// RAM write
//
always @(posedge clk)
	if (we)
		mem[addr] <=  { sel[3] ? di[31:24] : mem[addr][31:24],
                    sel[2] ? di[23:16] : mem[addr][23:16],
                    sel[1] ? di[15:8] : mem[addr][15:8],
                    sel[0] ? di[7:0] : mem[addr][7:0]};

endmodule
