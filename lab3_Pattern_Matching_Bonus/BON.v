
//---------------------------------------------
// define state assignment
//---------------------------------------------

`define IDLE 4'hz
`define S0 4'b0000 //x => initial
`define S1 4'b0001 //1
`define S2 4'b0010 //10
`define S3 4'b0011 //101
`define S4 4'b0100 //10(10)
`define S5 4'b0101 //10(100)
`define S6 4'b0110 //10(100)1
`define S7 4'b0111 //10(100)11 
`define S8 4'b1000 //10(100)110
`define S9 4'b1001 //10(100)1101
`define S10 4'b1010 //10(100)11010
`define S11 4'b1011 //10(100)(110(100))
`define S12 4'b1100 //10(100)(110(100))1
`define S13 4'b1101 //10(100)(110(100))11=> matching
/*
`define IDLE 3'hz
`define S0 3'b000 //x => initial
`define S1 3'b001 //1
`define S2 3'b010 //10
`define S3 3'b011 //101
`define S4 3'b100 //10(10)
`define S5 3'b101 //10(100)
`define S6 3'b110 //10(100)1
`define S7 3'b111 //10(100)11 => matching
*/
//---------------------------------------------


module BON(clk , rst , start , data , en , addr , flag , fin , result);
    parameter datawidth = 10;
    parameter memwidth = 10;
	parameter swidth = 4;
	
    input clk , rst , start;
    input [datawidth - 1  : 0] data;
    output en , flag , fin;
    output [memwidth - 1 : 0] addr , result;  //addr<=>num  result<=>ans
	reg [swidth - 1   : 0] state , next_state;
    reg [memwidth - 1   : 0] num , next_num;
    reg [memwidth - 1 : 0] leng , next_leng;
    reg [datawidth - 1 : 0] ans , next_ans;
	//reg got;

    always@(posedge rst or posedge clk)begin 
        if(rst == 1'b1)begin //initialize
            state <= `IDLE;
            num <= 'd1023;
            leng <= 'd0;
            ans <= 'd0;
			//got <= 'd0;
			//$display("@ addr=%d data=%d state=%d flag=%d", num,data,state, flag);
        end
        else begin
            state <= next_state;
            num <= next_num; // current ROM addr
            leng <= next_leng;  // #pattern
            ans <= next_ans;  //result
			//if (addr<201) $display("# %d addr=%d data=%d state=%d flag=%d ans=%d", start,num,data,state, flag,ans);
        end
    end

    always@(negedge clk)begin
        next_num = num + 'd1;
        next_leng = leng;
        next_ans = ans;
        next_state = state;

		case(state)
			`IDLE:  begin
			    next_state = (start == 1'b1)? `S0 : `IDLE;
                next_num = (start == 1'b1)? 10'd0 : 10'd1023; //addr
                next_leng = (start == 1'b1)? data : leng;//data
			end
			`S0: begin
					next_state = data[0] ? `S1 : `S0;
					//got = (next_state == `S0) ? 1'b0 : got;
			end
			`S1: begin
					next_state = data[0] ? `S1 : `S2;
					//got = (next_state == `S1) ? 1'b0 : got;
			end
			`S2: begin
					next_state = data[0] ? `S3 : `S0;
					//got = (next_state == `S0) ? 1'b0 : got;
			end
			`S3: begin
					next_state = data[0] ? `S1 : `S4;
					//got = (next_state == `S1) ? 1'b0 : got;
			end
			`S4: begin
					next_state = data[0] ? `S3 : `S5;
					//got = (next_state == `S3) ? 1'b0 : got;
			end
			`S5: begin
					next_state = data[0] ? `S6 : `S0;
					//got = (next_state == `S0) ? 1'b0 : got;
			end
			`S6: next_state = data[0] ? `S7 : `S4;
			`S7: begin
					next_state = data[0] ? `S1: `S8;
					//got = (next_state == `S1) ? 1'b0 : got;
			end
			`S8: begin
					next_state = data[0] ? `S9: `S0;
					//got = (next_state == `S0) ? 1'b0 : got;
			end
			`S9: begin
					next_state = data[0] ? `S1: `S10;
					//got = (next_state == `S1) ? 1'b0 : got;
			end
			`S10: next_state = data[0] ? `S3: `S11;
			`S11: begin
					next_state = data[0] ? `S12: `S0;
					//got = (next_state == `S0) ? 1'b0 : got;
			end
			`S12:  begin
					next_state = data[0] ? `S13: `S10;
				    //next_ans = (next_state == `S13 && got == 0)  ?  ans+1 : ans ;
					next_ans = (next_state == `S13 )  ?  ans+1 : ans ;
					//got = (next_state == `S13) ? 1'b1 : got;					
			end		
			`S13: begin
				next_state = data[0] ? `S1: `S8;
				//got = (next_state == `S1) ? 1'b0 : got;
			end
		endcase

	/*	case(state)
			`IDLE:  begin
			    next_state = (start == 1'b1)? `S0 : `IDLE;
                next_num = (start == 1'b1)? 10'd0 : 10'd1023; //addr
                next_leng = (start == 1'b1)? data : leng;//data
			end
			`S0: next_state = data[0] ? `S1 : `S0;
			`S1: next_state = data[0] ? `S1 : `S2;
			`S2: next_state = data[0] ? `S3 : `S0;
			`S3: next_state = data[0] ? `S1 : `S4;
			`S4: next_state = data[0] ? `S3 : `S5;
			`S5: next_state = data[0] ? `S6 : `S0;
			`S6: begin
				next_state = data[0] ? `S7 : `S4;
				next_ans = (next_state == `S7)? ans+1'b1 : ans;
			end
			`S7: next_state = data[0] ? `S1: `S2;
		endcase

*/		
 //      if (addr<201)  $display("* %d addr=%d next_leng=%d data=%d next_state=%d ans=%d", start, num,next_leng,data,next_state, ans);	
    end
	
    assign en = 1'b1;
    assign addr = num;
    assign fin = (start == 1'b1 && num == leng)? 1'b1 : 1'b0;
    assign result = (fin == 1'b1)? ans : 'd0;
	//assign flag = (got == 1'b1 && next_state == `S13)? 1'b1 : 1'b0; 
	assign flag = ( next_state == `S13)? 1'b1 : 1'b0; 

endmodule