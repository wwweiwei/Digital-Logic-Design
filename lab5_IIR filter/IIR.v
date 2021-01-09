`define S0 3'b000 
`define S1 3'b001
`define S2 3'b010 


module IIR(clk,rst, load,DIn,RAddr,data_done,WEN,Yn,WAddr,Finish);
/*	
a5 0.0000_0100_1111_1001
a4 0.0000_0101_0110_0111
a3	0.0000_1001_1010_0111
a2	0.0000_1001_1010_0111
a1	0.0000_0101_0110_0111
a0	0.0000_0100_1111_1001

b4	-10.1100_0010_0000_1100
b3	100.0000_0010_1101_0000
b2	-11.0101_1111_0000_0000
b1	1.1010_0111_0111_1001
b0	-0.0110_0001_0010_1100
*/
	parameter n=16;
	parameter m=20;
	
	input clk,rst;
	input data_done;
	input [n-1:0]DIn;
	
	output reg WEN,load;
	output reg Finish;
	output reg signed[n-1:0]Yn;
	output reg [m-1:0]RAddr;
	output reg [m-1:0]WAddr;
	
	reg signed[24:0]a5,a4,a3,a2,a1,a0;
	reg signed[24:0]b4,b3,b2,b1,b0;
	reg signed[24:0]s5,s4,s3,s2,s1,s0;
	reg signed[24:0]next_s5,next_s4,next_s3,next_s2,next_s1,next_s0;
	reg signed[24:0]ns4,ns3,ns2,ns1,ns0;
	reg signed[24:0]next_ns4,next_ns3,next_ns2,next_ns1,next_ns0;
	reg signed[24:0]sum;
	reg signed[24:0]next_sum;
	reg [m-1:0]next_RAddr;
	reg [m-1:0]next_WAddr;
	reg [2:0]next_state,state;
	reg next_Finish;

	always@(posedge rst or posedge clk)begin 
        if(rst == 1'b1)begin //initialize
			s5 <= 25'b0;
			s4 <= 25'b0;
			s3 <= 25'b0;
			s2 <= 25'b0;
			s1 <= 25'b0;
			s0 <= 25'b0;
			ns4 <= 25'b0;
			ns3 <= 25'b0;
			ns2 <= 25'b0;
			ns1 <= 25'b0;
			ns0 <= 25'b0;
			RAddr <= 20'b0;
			WAddr <= 20'b0;
			state <=`S0;
			sum <= 25'b0;
			Finish<=1'b0;
        end
        else begin
			s5 <= next_s5;
			s4 <= next_s4;
			s3 <= next_s3;
			s2 <= next_s2;
			s1 <= next_s1;
			s0 <= next_s0;
			ns4 <= next_ns4;
			ns3 <= next_ns3;
			ns2 <= next_ns2;
			ns1 <= next_ns1;
			ns0 <= next_ns0;
			RAddr <= next_RAddr;
			WAddr <= next_WAddr;
			state <= next_state;
			sum<= next_sum;
			Finish<=next_Finish;
        end
    end
	
	always@(*)begin
	    //$display("%b",sum);
		//$display("%b",s5);
		next_RAddr=RAddr;
		next_WAddr=WAddr;
		next_state=state;
		next_s5=s5;
		next_s4=s4;
		next_s3=s3;
		next_s2=s2;
		next_s1=s1;
		next_s0=s0;
		next_ns4=ns4;
		next_ns3=ns3;
		next_ns2=ns2;
		next_ns1=ns1;
		next_ns0=ns0;
		next_sum=sum;
		next_Finish=Finish;
		Yn=(state==`S2)?{sum[24], sum[21:7]}:'hz;
		
		case(state)
		`S0:begin
		    load = 1;
			WEN = 0;
			next_s5 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
			next_RAddr = RAddr;
			next_state=`S1;
			
			end
		`S1:begin
		    load = 1'b0;
			WEN = 1'b0;
			next_state=`S2;

			next_sum=(s5>>>6)+(s5>>>9)+(s5>>>10)+(s5>>>11)+(s5>>>12)+(s5>>>13)+(s5>>>16)
			+(s4>>>6)+(s4>>>8)+(s4>>>10)+(s4>>>11)+(s4>>>14)+(s4>>>15)+(s4>>>16)
			+(s3>>>5)+(s3>>>8)+(s3>>>9)+(s3>>>11)+(s3>>>14)+(s3>>>15)+(s3>>>16)
			+(s2>>>5)+(s2>>>8)+(s2>>>9)+(s2>>>11)+(s2>>>14)+(s2>>>15)+(s2>>>16)
			+(s1>>>6)+(s1>>>8)+(s1>>>10)+(s1>>>11)+(s1>>>14)+(s1>>>15)+(s1>>>16)
			+(s0>>>6)+(s0>>>9)+(s0>>>10)+(s0>>>11)+(s0>>>12)+(s0>>>13)+(s0>>>16)
			+(ns4<<<1)+(ns4>>>1)+(ns4>>>2)+(ns4>>>7)+(ns4>>>13)+(ns4>>>14)
			-(ns3<<<2)-(ns3>>>7)-(ns3>>>9)-(ns3>>>10)-(ns3>>>12)
			+(ns2<<<1)+(ns2)+(ns2>>>2)+(ns2>>>4)+(ns2>>>5)+(ns2>>>6)+(ns2>>>7)+(ns2>>>8)
			-(ns1)-(ns1>>>1)-(ns1>>>3)-(ns1>>>6)-(ns1>>>7)-(ns1>>>8)-(ns1>>>10)-(ns1>>>11)-(ns1>>>12)-(ns1>>>13)-(ns1>>>16)
			+(ns0>>>2)+(ns0>>>3)+(ns0>>>8)+(ns0>>>11)+(ns0>>>13)+(ns0>>>14);
			
			next_RAddr=RAddr+20'd1;
			next_Finish=(data_done==1)?1'b1:1'b0;
		end
		
		`S2:begin
			WEN=1'b1;
			load = 1'b0;
			next_WAddr=WAddr+20'd1;
			next_RAddr = RAddr;
			//Yn = {sum[24], sum[21:7]};
			next_state =`S0;
			next_s4 = s5;
			next_s3 = s4;
			next_s2 = s3;
			next_s1 = s2;
			next_s0 = s1;
			next_ns4 = {sum[24:7],{7{1'b0}}};
			next_ns3 = {ns4[24:7],{7{1'b0}}};
			next_ns2 = {ns3[24:7],{7{1'b0}}};
			next_ns1 = {ns2[24:7],{7{1'b0}}};
			next_ns0 = {ns1[24:7],{7{1'b0}}};
		end
		default:begin
			WEN = 1'b0;
			load = 1'b0;
			next_state =`S0;
		end
		endcase
	
		end
		
		
endmodule
