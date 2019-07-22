module mux(a,b,s,o);
  input a;
  input b;
  input s;
  output o;
  wire o;
  assign o=(s==0)?b:a;
endmodule

module fa (input wire i0, i1, cin, output wire sum, cout);
	wire w1, w2, w3;
	and2 g1(i0, i1, w1);
	and2 g2(i1, cin, w2);
	and2 g3(cin, i0, w3);
	xor3 g4(i0, i1, cin, sum);
	or3 g5(w1, w2, w3, cout);
endmodule

module sub16 (input wire [15:0] i0, i1, output wire [15:0] o, output wire cout);
	wire c[16:1];
	wire i2[15:0];
	xor2 x1(i1[0], 1'b1, i2[0]);
	xor2 x2(i1[1], 1'b1, i2[1]);
	xor2 x3(i1[2], 1'b1, i2[2]);
	xor2 x4(i1[3], 1'b1, i2[3]);
	xor2 x5(i1[4], 1'b1, i2[4]);
	xor2 x6(i1[5], 1'b1, i2[5]);
	xor2 x7(i1[6], 1'b1, i2[6]);
	xor2 x8(i1[7], 1'b1, i2[7]);
	xor2 x9(i1[8], 1'b1, i2[8]);
	xor2 x10(i1[9], 1'b1, i2[9]);
	xor2 x11(i1[10], 1'b1, i2[10]);
	xor2 x12(i1[11], 1'b1, i2[11]);
	xor2 x13(i1[12], 1'b1, i2[12]);
	xor2 x14(i1[13], 1'b1, i2[13]);
	xor2 x15(i1[14], 1'b1, i2[14]);
	xor2 x16(i1[15], 1'b1, i2[15]);
	fa a1(i0[0], i2[0], 1'b1, o[0], c[1]);
	fa a2(i0[1], i2[1], c[1], o[1], c[2]);
	fa a3(i0[2], i2[2], c[2], o[2], c[3]);
	fa a4(i0[3], i2[3], c[3], o[3], c[4]);
	fa a5(i0[4], i2[4], c[4], o[4], c[5]);
	fa a6(i0[5], i2[5], c[5], o[5], c[6]);
	fa a7(i0[6], i2[6], c[6], o[6], c[7]);
	fa a8(i0[7], i2[7], c[7], o[7], c[8]);
	fa a9(i0[8], i2[8], c[8], o[8], c[9]);
	fa a10(i0[9], i2[9], c[9], o[9], c[10]);
	fa a11(i0[10], i2[10], c[10], o[10], c[11]);
	fa a12(i0[11], i2[11], c[11], o[11], c[12]);
	fa a13(i0[12], i2[12], c[12], o[12], c[13]);
	fa a14(i0[13], i2[13], c[13], o[13], c[14]);
	fa a15(i0[14], i2[14], c[14], o[14], c[15]);
	fa a16(i0[15], i2[15], c[15], o[15], cout);
endmodule
module add16 (input wire [15:0] i0, i1, output wire [15:0] S, output wire cout);
	wire C[14:0];
	fa fa1(i0[0],i1[0],1'b0,S[0],C[0]);
	fa fa2(i0[1],i1[1],C[0],S[1],C[1]);
	fa fa3(i0[2],i1[2],C[1],S[2],C[2]);
	fa fa4(i0[3],i1[3],C[2],S[3],C[3]);
	fa fa5(i0[4],i1[4],C[3],S[4],C[4]);
	fa fa6(i0[5],i1[5],C[4],S[5],C[5]);
	fa fa7(i0[6],i1[6],C[5],S[6],C[6]);
	fa fa8(i0[7],i1[7],C[6],S[7],C[7]);
	fa fa9(i0[8],i1[8],C[7],S[8],C[8]);
	fa fa10(i0[9],i1[9],C[8],S[9],C[9]);
	fa fa11(i0[10],i1[10],C[9],S[10],C[10]);
	fa fa12(i0[11],i1[11],C[10],S[11],C[11]);
	fa fa13(i0[12],i1[12],C[11],S[12],C[12]);
	fa fa14(i0[13],i1[13],C[12],S[13],C[13]);
	fa fa15(i0[14],i1[14],C[13],S[14],C[14]);
	fa fa16(i0[15],i1[15],C[14],S[15],cout);	
endmodule

module and16(input wire [15:0] i0, i1, output wire [15:0] o);
	and2 a1(i0[0],i1[0],o[0]);
	and2 a2(i0[1],i1[1],o[1]);
	and2 a3(i0[2],i1[2],o[2]);
	and2 a4(i0[3],i1[13],o[3]);
	and2 a5(i0[4],i1[4],o[4]);
	and2 a6(i0[5],i1[5],o[5]);
	and2 a7(i0[6],i1[6],o[6]);
	and2 a8(i0[7],i1[7],o[7]);
	and2 a9(i0[8],i1[8],o[8]);
	and2 a10(i0[9],i1[9],o[9]);
	and2 a11(i0[10],i1[10],o[10]);
	and2 a12(i0[11],i1[11],o[11]);
	and2 a13(i0[12],i1[12],o[12]);
	and2 a14(i0[13],i1[13],o[13]);
	and2 a15(i0[14],i1[14],o[14]);
	and2 a16(i0[15],i1[15],o[15]);
endmodule 

module or16(input wire [15:0] i0, i1, output wire [15:0] o);
	or2 a1(i0[0],i1[0],o[0]);
	or2 a2(i0[1],i1[1],o[1]);
	or2 a3(i0[2],i1[2],o[2]);
	or2 a4(i0[3],i1[3],o[3]);
	or2 a5(i0[4],i1[4],o[4]);
	or2 a6(i0[5],i1[5],o[5]);
	or2 a7(i0[6],i1[6],o[6]);
	or2 a8(i0[7],i1[7],o[7]);
	or2 a9(i0[8],i1[8],o[8]);
	or2 a10(i0[9],i1[9],o[9]);
	or2 a11(i0[10],i1[10],o[10]);
	or2 a12(i0[11],i1[11],o[11]);
	or2 a13(i0[12],i1[12],o[12]);
	or2 a14(i0[13],i1[13],o[13]);
	or2 a15(i0[14],i1[14],o[14]);
	or2 a16(i0[15],i1[15],o[15]);
endmodule 

module slt(input wire[15:0] i1,i2,output wire o);
	wire[15:0]s_out;
	wire cout;
	sub16 s(i1,i2,s_out,cout);
	assign o=s_out[15];
	//and16 a(s_out,16'h8000,o);
endmodule
	
module barrelLeft(i,s,o);        
input[15:0] i;//8-bit Input line 
input[3:0] s; //3 bit select line
output[15:0] o; //8-bit Output line 
wire[15:0]o;

//stage 1 wires
wire s1_1,s1_2,s1_3,s1_4 ,s1_5 ,s1_6 ,s1_7,s1_8,s1_9,s1_10,s1_11,s1_12,s1_13,s1_14,s1_15,s1_16;
//stage 2 wires
wire s2_1,s2_2,s2_3,s2_4 ,s2_5 ,s2_6 ,s2_7,s2_8,s2_9,s2_10,s2_11,s2_12,s2_13,s2_14,s2_15,s2_16;
//stage 3 wires
wire s3_1,s3_2,s3_3,s3_4 ,s3_5 ,s3_6 ,s3_7,s3_8,s3_9,s3_10,s3_11,s3_12,s3_13,s3_14,s3_15,s3_16;

//stage 1 mux
mux m1(1'b0,i[0],s[0],s1_1);
mux m2(i[0],i[1],s[0],s1_2);
mux m3(i[1],i[2],s[0],s1_3);
mux m4(i[2],i[3],s[0],s1_4);
mux m5(i[3],i[4],s[0],s1_5);
mux m6(i[4],i[5],s[0],s1_6);
mux m7(i[5],i[6],s[0],s1_7);
mux m8(i[6],i[7],s[0],s1_8);
mux m9(i[7],i[8],s[0],s1_9);
mux m10(i[8],i[9],s[0],s1_10);
mux m11(i[9],i[10],s[0],s1_11);
mux m12(i[10],i[11],s[0],s1_12);
mux m13(i[11],i[12],s[0],s1_13);
mux m14(i[12],i[13],s[0],s1_14);
mux m15(i[13],i[14],s[0],s1_15);
mux m16(i[14],i[15],s[0],s1_16);

//stage 2 mux
mux m21(s1_15,s1_1,s[1],s2_1);
mux m22(s1_16,s1_2,s[1],s2_2);
mux m23(s1_1,s1_3,s[1],s2_3);
mux m24(s1_2,s1_4,s[1],s2_4);
mux m25(s1_3,s1_5,s[1],s2_5);
mux m26(s1_4,s1_6,s[1],s2_6);
mux m27(s1_5,s1_7,s[1],s2_7);
mux m28(s1_6,s1_8,s[1],s2_8);
mux m29(s1_7,s1_9,s[1],s2_9);
mux m210(s1_8,s1_10,s[1],s2_10);
mux m211(s1_9,s1_11,s[1],s2_11);
mux m212(s1_10,s1_12,s[1],s2_12);
mux m213(s1_11,s1_13,s[1],s2_13);
mux m214(s1_12,s1_14,s[1],s2_14);
mux m215(s1_13,s1_15,s[1],s2_15);
mux m216(s1_14,s1_16,s[1],s2_16);
//stage 3 mux
mux m31(s2_13,s2_1,s[2],s3_1);
mux m32(s2_14,s2_2,s[2],s3_2);
mux m33(s2_15,s2_3,s[2],s3_3);
mux m34(s2_16,s2_4,s[2],s3_4);
mux m35(s2_1,s2_5,s[2],s3_5);
mux m36(s2_2,s2_6,s[2],s3_6);
mux m37(s2_3,s2_7,s[2],s3_7);
mux m38(s2_4,s2_8,s[2],s3_8);
mux m39(s2_5,s2_9,s[2],s3_9);
mux m310(s2_6,s2_10,s[2],s3_10);
mux m311(s2_7,s2_11,s[2],s3_11);
mux m312(s2_8,s2_12,s[2],s3_12);
mux m313(s2_9,s2_13,s[2],s3_13);
mux m314(s2_10,s2_14,s[2],s3_14);
mux m315(s2_11,s2_15,s[2],s3_15);
mux m316(s2_12,s2_16,s[2],s3_16);
//stage 4 mux
mux m41(s3_9,s3_1,s[3],o[0]);
mux m42(s3_10,s3_2,s[3],o[1]);
mux m43(s3_11,s3_3,s[3],o[2]);
mux m44(s3_12,s3_4,s[3],o[3]);
mux m45(s3_13,s3_5,s[3],o[4]);
mux m46(s3_14,s3_6,s[3],o[5]);
mux m47(s3_15,s3_7,s[3],o[6]);
mux m48(s3_16,s3_8,s[3],o[7]);
mux m49(s3_1,s3_9,s[3],o[8]);
mux m410(s3_2,s3_10,s[3],o[9]);
mux m411(s3_3,s3_11,s[3],o[10]);
mux m412(s3_4,s3_12,s[3],o[11]);
mux m413(s3_5,s3_13,s[3],o[12]);
mux m414(s3_6,s3_14,s[3],o[13]);
mux m415(s3_7,s3_15,s[3],o[14]);
mux m416(s3_8,s3_16,s[3],o[15]);
endmodule


module barrelRight(i,s,o);
input[15:0] i;//8-bit Input line 
input[3:0] s; //3 bit select line
output[15:0] o; //8-bit Output line 
wire[15:0]o;

//stage 1 wires
wire s1_1,s1_2,s1_3,s1_4,s1_5,s1_6,s1_7,s1_8,s1_9,s1_10,s1_11,s1_12,s1_13,s1_14,s1_15,s1_16;
//stage 2 wires
wire s2_1,s2_2,s2_3,s2_4,s2_5,s2_6,s2_7,s2_8,s2_9,s2_10,s2_11,s2_12,s2_13,s2_14,s2_15,s2_16;
//stage 3 wires
wire s3_1,s3_2,s3_3,s3_4,s3_5,s3_6,s3_7,s3_8,s3_9,s3_10,s3_11,s3_12,s3_13,s3_14,s3_15,s3_16;

//stage1
mux m1(i[1],i[0],s[0],s1_1);
mux m2(i[2],i[1],s[0],s1_2);
mux m3(i[3],i[2],s[0],s1_3);
mux m4(i[4],i[3],s[0],s1_4);
mux m5(i[5],i[4],s[0],s1_5);
mux m6(i[6],i[5],s[0],s1_6);
mux m7(i[7],i[6],s[0],s1_7);
mux m8(i[8],i[7],s[0],s1_8);
mux m9(i[9],i[8],s[0],s1_9);
mux m10(i[10],i[9],s[0],s1_10);
mux m11(i[11],i[10],s[0],s1_11);
mux m12(i[12],i[11],s[0],s1_12);
mux m13(i[13],i[12],s[0],s1_13);
mux m14(i[14],i[13],s[0],s1_14);
mux m15(i[15],i[14],s[0],s1_15);
mux m16(i[0],i[15],s[0],s1_16);

//stage 2 mux

mux m21(s1_3,s1_1,s[1],s2_1);
mux m22(s1_4,s1_2,s[1],s2_2);
mux m23(s1_5,s1_3,s[1],s2_3);
mux m24(s1_6,s1_4,s[1],s2_4);
mux m25(s1_7,s1_5,s[1],s2_5);
mux m26(s1_8,s1_6,s[1],s2_6);
mux m27(s1_9,s1_7,s[1],s2_7);
mux m28(s1_10,s1_8,s[1],s2_8);
mux m29(s1_11,s1_9,s[1],s2_9);
mux m210(s1_12,s1_10,s[1],s2_10);
mux m211(s1_13,s1_11,s[1],s2_11);
mux m212(s1_14,s1_12,s[1],s2_12);
mux m213(s1_15,s1_13,s[1],s2_13);
mux m214(s1_16,s1_14,s[1],s2_14);
mux m215(s1_1,s1_15,s[1],s2_15);
mux m216(s1_2,s1_16,s[1],s2_16);

//stage 3
mux m31(s2_5,s2_1,s[2],s3_1);
mux m32(s2_6,s2_2,s[2],s3_2);
mux m33(s2_7,s2_3,s[2],s3_3);
mux m34(s2_8,s2_4,s[2],s3_4);
mux m35(s2_9,s2_5,s[2],s3_5);
mux m36(s2_10,s2_6,s[2],s3_6);
mux m37(s2_11,s2_7,s[2],s3_7);
mux m38(s2_12,s2_8,s[2],s3_8);
mux m39(s2_13,s2_9,s[2],s3_9);
mux m310(s2_14,s2_10,s[2],s3_10);
mux m311(s2_15,s2_11,s[2],s3_11);
mux m312(s2_16,s2_12,s[2],s3_12);
mux m313(s2_1,s2_13,s[2],s3_13);
mux m314(s2_2,s2_14,s[2],s3_14);
mux m315(s2_3,s2_15,s[2],s3_15);
mux m316(s2_4,s2_16,s[2],s3_16);
//stage4
mux m41(s3_9,s3_1,s[3],o[0]);
mux m42(s3_10,s3_2,s[3],o[1]);
mux m43(s3_11,s3_3,s[3],o[2]);
mux m44(s3_12,s3_4,s[3],o[3]);
mux m45(s3_13,s3_5,s[3],o[4]);
mux m46(s3_14,s3_6,s[3],o[5]);
mux m47(s3_15,s3_7,s[3],o[6]);
mux m48(s3_16,s3_8,s[3],o[7]);
mux m49(s3_1,s3_9,s[3],o[8]);
mux m410(s3_2,s3_10,s[3],o[9]);
mux m411(s3_3,s3_11,s[3],o[10]);
mux m412(s3_4,s3_12,s[3],o[11]);
mux m413(s3_5,s3_13,s[3],o[12]);
mux m414(s3_6,s3_14,s[3],o[13]);
mux m415(s3_7,s3_15,s[3],o[14]);
mux m416(s3_8,s3_16,s[3],o[15]);
endmodule


module mux8_16(s,i0, i1, i2, i3, i4, i5, i6, i7, out);
	input wire [2:0] s;
	input wire [15:0] i0,i1,i2,i3,i4,i5,i7;
	input wire i6;
	output wire [15:0] out;
	//reg[7:0] out;
	mux8 b0( { i0[0], i1[0], i2[0], i3[0], i4[0], i5[0], i6, i7[0] }, s[0], s[1], s[2], out[0] );
	mux8 b1( { i0[1], i1[1], i2[1], i3[1], i4[1], i5[1], 1'b0, i7[1] }, s[0], s[1], s[2], out[1] );
	mux8 b2( { i0[2], i1[2], i2[2], i3[2], i4[2], i5[2], 1'b0, i7[2] }, s[0], s[1], s[2], out[2] );
	mux8 b3( { i0[3], i1[3], i2[3], i3[3], i4[3], i5[3], 1'b0, i7[3] }, s[0], s[1], s[2], out[3] );
	mux8 b4( { i0[4], i1[4], i2[4], i3[4], i4[4], i5[4], 1'b0, i7[4] }, s[0], s[1], s[2], out[4] );
	mux8 b5( { i0[5], i1[5], i2[5], i3[5], i4[5], i5[5], 1'b0, i7[5] }, s[0], s[1], s[2], out[5] );
	mux8 b6( { i0[6], i1[6], i2[6], i3[6], i4[6], i5[6], 1'b0, i7[6] }, s[0], s[1], s[2], out[6] );
	mux8 b7( { i0[7], i1[7], i2[7], i3[7], i4[7], i5[7], 1'b0, i7[7] }, s[0], s[1], s[2], out[7] );
	mux8 b8( { i0[8], i1[8], i2[8], i3[8], i4[8], i5[8], 1'b0, i7[8] }, s[0], s[1], s[2], out[8] );
	mux8 b9( { i0[9], i1[9], i2[9], i3[9], i4[9], i5[9], 1'b0, i7[9] }, s[0], s[1], s[2], out[9] );
	mux8 b10( { i0[10], i1[10], i2[10], i3[10], i4[10], i5[10], 1'b0, i7[10] }, s[0], s[1], s[2], out[10] );
	mux8 b11( { i0[11], i1[11], i2[11], i3[11], i4[11], i5[11], 1'b0, i7[11] }, s[0], s[1], s[2], out[11] );
	mux8 b12( { i0[12], i1[12], i2[12], i3[12], i4[12], i5[12], 1'b0, i7[12] }, s[0], s[1], s[2], out[12] );
	mux8 b13( { i0[13], i1[13], i2[13], i3[13], i4[13], i5[13], 1'b0, i7[13] }, s[0], s[1], s[2], out[13] );
	mux8 b14( { i0[14], i1[14], i2[14], i3[14], i4[14], i5[14], 1'b0, i7[14] }, s[0], s[1], s[2], out[14] );
	mux8 b15( { i0[15], i1[15], i2[15], i3[15], i4[15], i5[15], 1'b0, i7[15] }, s[0], s[1], s[2], out[15] );
    /*always @(i0 or i1 or i2 or i3 or i4 or i5 or i6 or i7 or s)
    	case(s)
    		3'b000 : out=i0;
    		3'b001 : out=i1;
    		3'b010 : out=i2;
    		3'b011 : out=i3;
    		3'b100 : out=i4;
    		3'b101 : out=i5;
    	endcase // s*/
endmodule // mux8_16

module alu(input wire[15:0]i0,i1,input wire[2:0]select,input wire[3:0]shift_mag,output wire[15:0]o);
    
	wire[15:0]and_out,or_out,add_out,sub_out,left_out,right_out;
	wire slt_out;
	wire cout;
	and16 and_res(i0,i1,and_out);
	or16 or_res(i0,i1,or_out);
	add16 add_res(i0,i1,add_out,cout);
	sub16 sub_res(i0,i1,sub_out,cout);
	barrelLeft left(i0,shift_mag,left_out);
	barrelRight right(i0,shift_mag,right_out);
	slt s(i0,i1,slt_out);
    mux8_16 m(select,and_out,or_out,add_out,sub_out,left_out,right_out,slt_out,16'hxxxx,o);
endmodule 