module fop_G(in,out);
	input [3:0]in;
	output out;

	wire not_a,not_b,not_c,not_d;
	wire and0,and1,and2,and3,and4;

	not not_0(not_a,in[3]);
	not not_1(not_b,in[2]);
	not not_2(not_c,in[1]);
	not not_3(not_d,in[0]);

	and and_0(and0,not_a,not_b);
	and and_1(and1,not_a,in[0]);
	and and_2(and2,not_b,in[1],in[0]);
	and and_3(and3,not_b,not_c,not_d);
	and and_4(and4,in[2],not_c,in[0]);
	or or_0(out,and0,and1,and2,and3,and4);

endmodule

module fop_D(in,out);
	input [3:0]in;
	output out;

	assign out=(!in[3]&!in[2])|(!in[3]&in[0])|(!in[2]&in[1]&in[0])|(!in[2]&!in[1]&!in[0])|(in[2]&!in[1]&in[0]);

endmodule

module fop_B(in,out);
	input [3:0]in;
	output out;
	reg out;

	always@(*)begin
		case(in)
			0,1,2,3,5,7,8,11,13:begin
				out=1'b1;
			end
			default:begin
				out=1'b0;
			end
		endcase
	end

endmodule
