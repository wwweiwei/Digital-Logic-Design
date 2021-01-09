
//---------------------------------------------
// define state assignment
//---------------------------------------------

`define IDLE 3'hz
`define S0 3'b000 //x => initial
`define S1 3'b001 //1
`define S2 3'b010 //10
`define S3 3'b011 //101
`define S4 3'b100 //10(10)
`define S5 3'b101 //10(100)
`define S6 3'b110 //10(100)1
`define S7 3'b111 //10(100)11 => matching
//---------------------------------------------


module PTM(clk , rst , start , data , en , addr , flag , fin , result);
    parameter datawidth = 10;
    parameter memwidth = 10;
	parameter swidth = 3;
	
    input clk , rst , start;
    input [datawidth - 1  : 0] data;
    output en , flag , fin;
    output [memwidth - 1 : 0] addr , result;  //addr<=>num  result<=>ans
	reg [swidth - 1   : 0] state , next_state;
    reg [memwidth - 1   : 0] num , next_num;
    reg [memwidth - 1 : 0] leng , next_leng;
    reg [datawidth - 1 : 0] ans , next_ans;


    always@(posedge rst or posedge clk)begin 
        if(rst == 1'b1)begin //initialize
            state <= `IDLE;
            num <= 'd1023;
            leng <= 'd0;
            ans <= 'd0;
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

		//if (addr<201)  $display("* %d addr=%d next_leng=%d data=%d state=%d ans=%d", start, num,next_leng,data,state, ans);	
    end

    assign en = 1'b1;
    assign addr = num;
    assign fin = (start == 1'b1 && num == leng)? 1'b1 : 1'b0;
    assign result = (fin == 1'b1)? ans : 'd0;
	assign flag = (next_state == `S7)? 1'b1 : 1'b0; 

endmodule