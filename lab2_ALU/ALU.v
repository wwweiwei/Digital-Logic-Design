module AND(a, b, out);
	input a, b;
	output out;
 
  wire c;
  
  nand nand_0(c,a,b);
  nand nand_1(out,c,c);
  
endmodule


module OR (a, b, out);
	input a, b;
	output out;

  wire d,e;
  nand nand_2(d,a,a);
  nand nand_3(e,b,b);
  nand nand_4(out,d,e);
  
endmodule

module NOT (a, out);
	input a;
	output out;

  nand nand_5(out,a,a);

endmodule

module NOR (a, b, out);
	input a, b;
	output out;

  wire c,d,e;
  
  nand nand_6(c,a,a);
  nand nand_7(d,b,b);
  nand nand_8(e,c,d);
  nand nand_9(out,e,e);

endmodule

module XOR (a, b, out);
	input a, b;
	output out;

  wire c,d,e,f;
  
  nand nand_10(c,a,a);
  nand nand_11(d,b,b);
  nand nand_12(e,c,b);
  nand nand_13(f,a,d);
  nand nand_14(out,e,f);
  
endmodule

module AdderSubtractor (A, B, Cin, mode, Cout, Sum, OV); //mode=1:sub  0:add
	input [31:0] A, B;
	input Cin, mode;
	output [31:0] Sum;
	output Cout;
  output OV;
  wire [32:0] c;

    assign c[0]=Cin;
 
    genvar i;
    //generate
      for ( i=0; i<32; i=i+1) begin : gen_bitslice
           assign Sum[i]=A[i]^(B[i]^mode)^c[i];
           assign c[i+1]=(A[i]&(B[i]^mode))|(A[i]&c[i])|((B[i]^mode)&c[i]);
      end
    //endgenerate 
    
    assign Cout=c[32];  
    assign OV=c[31]^Cout;  
endmodule 


module ALU (A, B, sel, Cin, Y, Cout, Negative, Zero, Overflow);
	input [31:0] A, B;
	input [3:0] sel;
   
	input Cin;
	output reg [31:0] Y;
	output reg Cout, Negative, Zero, Overflow;
 
  wire out0,out1,out2,out3,out4,out5,out6,out7,out8;
  wire [31:0] S;

  
  AND AND_0(.a(A[0]),.b(B[0]),.out(out0));
  OR OR_0(.a(A[0]),.b(B[0]),.out(out1));
  NOT NOT_0(.a(A[0]),.out(out2));
  NOR NOR_0(.a(A[0]),.b(B[0]),.out(out3));
  XOR XOR_0(.a(A[0]),.b(B[0]),.out(out4));
  nand nand_15(out5,A[0],B[0]);
  XOR XOR_1(.a(sel[0]),.b(sel[1]),.out(out6)); //out6=1:add 0:sub
  AdderSubtractor AS_0(.A(A), .B(B), .Cin((~out6) | Cin), .mode(~out6), .Cout(out7), .Sum(S),.OV(out8));

  
  
  always @(A or B or sel)
    case(sel)
       4'b0000:begin
         Y = {31'b0,out0};
         if (out0==0)begin
           Cout=1'b0;
           Zero=1'b1;
           Negative=1'b0;
           Overflow=1'b0;
         end
         else begin
           Cout=1'b0;
           Zero=1'b0;
           Negative=1'b0;
           Overflow=1'b0;
         end
       end
       4'b0001:begin
         Y = {31'b0,out1};
         if (out1==0)begin
           Cout=1'b0;
           Zero=1'b1;
           Negative=1'b0;
           Overflow=1'b0;
         end
         else begin
           Cout=1'b0;
           Zero=1'b0;
           Negative=1'b0;
           Overflow=1'b0;
         end
       end
       4'b0010:begin
         Y = {31'b0,out2};
         if (out2==0)begin
           Cout=1'b0;
           Zero=1'b1;
           Negative=1'b0;
           Overflow=1'b0;
         end
         else begin
           Cout=1'b0;
           Zero=1'b0;
           Negative=1'b0;
           Overflow=1'b0;
         end
       end
       4'b0011:begin
         Y = {31'b0,out3};
         if (out3==0)begin
           Cout=1'b0;
           Zero=1'b1;
           Negative=1'b0;
           Overflow=1'b0;
         end
         else begin
           Cout=1'b0;
           Zero=1'b0;
           Negative=1'b0;
           Overflow=1'b0;
         end
       end
       4'b0100:begin
         Y = {31'b0,out4};
         if (out4==0)begin
           Cout=1'b0;
           Zero=1'b1;
           Negative=1'b0;
           Overflow=1'b0;
         end
         else begin
           Cout=1'b0;
           Zero=1'b0;
           Negative=1'b0;
           Overflow=1'b0;
         end
       end
       4'b0101:begin
         Y = {31'b0,out5};
         if (out5==0)begin
           Cout=1'b0;
           Zero=1'b1;
           Negative=1'b0;
           Overflow=1'b0;
         end
         else begin
           Cout=1'b0;
           Zero=1'b0;
           Negative=1'b0;
           Overflow=1'b0;
         end
       end
       4'b0110:begin //Y<=A+B+Cin
         #1;
          Y = S;
          Cout=out7;
          Overflow=out8;
         #2; 
           Zero=(Y==32'h0000);
           Negative=(Y[31]);

         
       end 
       4'b0111:begin //Y<=A-B
         #1;
         Y = S;
         Overflow=out8;
         Cout=1'b0;
         #2;
         Zero=(Y==32'h0000);
         Negative=(Y[31]);
         
         
       end 
       4'b1000:begin //Y<=abs(A-B)
         #1;
         if(S[31]==1'b1)
           Y = ~S+32'h0001;
         else
           Y=S;
         Negative=1'b0;
         Cout=1'b0;
         Overflow=out8;
         #2;
         Zero=(Y==32'h0000);
         
         
       end 
       4'b1001:begin //Y<=A*B
         Y = A[15:0]*B[15:0];

         Cout=1'b0;
         Zero=(Y==32'h0000);
         Negative=1'b0;
         Overflow=out8;
         
       end 
       4'b1010:begin //logic shift <<1
         Y = A << 1;
         
         Cout=A[31];
         Zero=(Y==32'h0000);
         Negative=(Y[31]==1'b1);
         Overflow=Cout;
         
       end
       4'b1011:begin //arithmetic shift <<1
         Y = A << 1;
         
         Cout=A[31];
         Zero=(Y==32'h0000);
         Negative=(Y[31]==1'b1);
         Overflow=(A[31]^A[30]);
         
       end
       4'b1100:begin //logic shift >>1
         Y = {1'b0,A[31:1]};
         
         Cout=1'b0;
         Zero=(Y==32'h0000);
         Negative=1'b0;
         Overflow=1'b0;
         
       end
       4'b1101:begin //arithmetic shift >>1
         Y = {A[31],A[31:1]};
         
         Cout=1'b0;
         if(Y==32'b0)  Zero=1'b1; else Zero=1'b0;
         if(Y[31]==1'b1) Negative=1'b1; else Negative=1'b0;
         Overflow=1'b0;
         
       end
       4'b1110: Y=A+B;
       4'b1111: Y=A*B;
    endcase 


endmodule 

