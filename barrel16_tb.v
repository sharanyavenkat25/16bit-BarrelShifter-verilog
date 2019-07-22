`timescale 1ns / 100ps
module barrelShifter_tb;
// Inputs
reg [2:0] s;
reg[3:0]shift; 
reg [15:0] i0, i1;
wire [15:0] o; 
wire cout;

initial begin $dumpfile("tb_barrel.vcd");$dumpvars(0,barrelShifter_tb); end
// Instantiate 
alu bs (.i0(i0),.i1(i1),.select(s),.shift_mag(shift),.o(o));

initial begin
i0=16'd64;
i1=16'd320;
s=3'd0;
shift=4'd2;  
#5
i0=16'd80;
i1=16'd50;
s=3'd1;
shift=4'd2;
#5
i0=16'd50;
i1=16'd4;
s=3'd2;
shift=4'd2;
#5
i0=16'd500;
i1=16'd1000;
s=3'd3;
shift=4'd2;
#5
i0=16'd16;
i1=16'd4;
s=3'd4;
shift=4'd9;
#5
i0=16'd16;
i1=16'd4;
s=3'd5;
shift=4'd4;
#5
i0=16'd500;
i1=16'd1000;
s=3'd6;
shift=4'd10;
#5
i0=16'd10;
i1=16'd4;
s=3'd7;
shift=4'd4;
#5
i0=16'd16;
i1=16'd4;
s=3'd4;
shift=4'd2;

end
endmodule