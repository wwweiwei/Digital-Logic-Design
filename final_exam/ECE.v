module ECE(clk , rst , RData , RAddr , WAddr , WData , Wen , Finish);
    input clk , rst;
    input [14 : 0] RData;
    output reg [14 : 0] RAddr , WAddr;
    output reg [4 : 0] WData;
    output Wen , Finish;
	reg [14:0]next_RAddr,next_WAddr;
	//reg [4:0]next_WData;
	reg [3:0]state,next_state;
	reg [1:0]count,next_count;
	wire [14:0]size;

	always@(posedge rst or posedge clk)begin
		 if(rst==1'b1)begin
			RAddr <= 15'd32767;
			WAddr <= 15'd32767;
			//WData <= 5'b10000;
			state <= 4'd5;
			count <= 2'b0;
		end
		else begin
			RAddr <= next_RAddr;
			WAddr <= next_WAddr;
			//WData <= next_WData;
			state <= next_state;
			count <= next_count;
		end
	end
	always @(*)begin
		next_RAddr = RAddr;
		next_WAddr = WAddr;
		//next_WData = WData;
		next_state = state;
		next_count = count;
		case(state)
			4'd5:begin
				WData = 15'b10000;
				next_state = 4'd0;
				next_RAddr = 15'b0;
				next_WAddr = 15'b0;
				next_count = count;
			end
			4'd0:begin
				WData[4] = RData;
				WData[3:0] = 4'b0;
				next_state=(RData==15'd0)?4'd1:4'd2;
				next_RAddr = RAddr+1'b1;
				next_WAddr = WAddr+1'b1;
				next_count = count;
			end
			4'd1:begin
				WData[4] = RData;
				WData[3:0] =(RData==15'd0)? 4'b0:4'b0110;
				next_state=(RData==15'd0)?4'd3:4'd0;
				next_RAddr = RAddr+1'b1;
				next_WAddr = WAddr+1'b1;
				next_count = (RData==15'd0)?2'b0:count;
			end
			4'd2:begin
				WData[4] = RData;
				WData[3:0] =(RData==15'd0)? 4'b1000:4'b0;
				next_state=(RData==15'd0)?4'd0:4'd8;
				next_RAddr = RAddr+1'b1;
				next_WAddr = WAddr+1'b1;
				next_count =(RData==15'd0)? 2'b0:count;
			end	
			4'd3:begin
				WData[4] = RData;
				WData[3:0] = (RData==15'd0)?4'b0010:4'b0100;
				next_state=4'd0;
				next_RAddr = RAddr+1'b1;
				next_WAddr = WAddr+1'b1;
				next_count = 2'b0;
			end
			4'd8:begin
				WData[4] = RData;
				WData[3:0] = (RData==15'd0)?4'b0:4'b1110;
				next_state=(RData==15'd0)?4'd9:4'd0;
				next_RAddr = RAddr+1'b1;
				next_WAddr = WAddr+1'b1;
				next_count =(RData==15'd0)? count+2'b1:2'b0;
			end
			4'd9:begin
				WData[4] = RData;
				if(RData==15'd0)begin
					if(count==2'd2)begin
						next_count = count-2'b1;
					end
					else begin
						next_count = count;
					end
				end
				else begin
					next_count = 2'b0;
				end
				//next_count = (RData==15'd0)?count-1'b1:2'b0;
				if(RData==15'd0)begin
					if(count==2'd2)begin
						WData[3:0] = 4'b1011;
					end
					else begin
						WData[3:0] = 4'b1010;
					end
				end
				else begin
					WData[3:0] = 4'b1100;
				end	
				next_state=4'd0;
				next_RAddr = RAddr+1'b1;
				next_WAddr = WAddr+1'b1;
			end
			endcase
	end
	assign Wen=(RAddr!=15'd32767)?1'b1:1'b0;
	assign Finish=(RAddr==size)?1'b0:1'b1;
	assign size=(RAddr==15'd32767)?RData:size;

endmodule