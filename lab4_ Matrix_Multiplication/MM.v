//---------------------------------------------
`define S0 3'b000 
`define S1 3'b001
`define S2 3'b010 
`define S3 3'b011 
`define S4 3'b100 
`define S5 3'b101
//---------------------------------------------

module MM(clk,i,j,reset,read,write,index,read_data,write_data,finish);
	parameter n=20;
	
	input reset,clk;
	input [n-1:0]read_data;
	
	output reg [n-1:0]i,j;
	output reg read,write,index;
	output reg [2*n-1:0]write_data;
	output reg finish;
	
	reg [2 : 0] state , next_state;
	reg [n-1:0] row1,col1,col2;
	wire [n-1:0] a;
	reg [n-1:0] b;	
	reg [n-1:0] row,column;
	reg [n-1:0] next_row,next_column;
	reg [n-1:0] next_i,next_j;
	reg [2*n-1:0] next_writedata;
	reg next_finish;
	//reg [n-1:0] next_a;
	reg [n-1:0] next_row1,next_col1,next_col2;

    always@(posedge reset or posedge clk)begin 
        if(reset == 1'b1)begin //initialize
            state <= `S0;
			i <= 20'b0;
			j <= 20'b0;
			row <= 20'b0;
			column <= 20'b0;
			finish <= 1'b0;
			write_data <= 40'b0;
			row1<=20'b0;
			col1<=20'b0;
			col2<=20'b0;
			//next_a<=20'b0;
			//$display("@ addr=%d data=%d state=%d flag=%d", num,data,state, flag);
        end
        else begin
            state <= next_state;
			i <= next_i;
			j <= next_j;
			row <= next_row;
			column <= next_column;
			finish <= next_finish;
			write_data <= next_writedata;
			row1<=next_row1;
			col1<=next_col1; 
			col2<=next_col2;
			//a <= next_a;
			//if (addr<201) $display("# %d addr=%d data=%d state=%d flag=%d ans=%d", start,num,data,state, flag,ans);
        end
    end

	//assign next_finish = (state == `S5 && row == row1 - 20'd1 && column == col2 - 20'd1) ? 1'b1 : 1'b0;
    assign a = (state == `S3) ? read_data : a; 
	
    always@(*)begin
        next_i = i;
		next_j = j;
		next_writedata = write_data;
		next_row = row;
		next_column = column;
		next_state = state;
		
		next_finish = finish;
		
		next_row1 = row1;
		next_col1 = col1;
		next_col2 = col2;
		
		//next_a = a;
		
		case(state)
			`S0: begin
				read = 20'b1;
				write = 20'b1;
				index = 20'b0;
				
				next_row1 = read_data;
				
				next_i = 20'b1;
			    next_state = `S1;
				//$display("@ next_row1=%d",next_row1);
			end
			`S1: begin
				read = 20'b1;
				write = 20'b1;
				index = 20'b0;
				
				next_col1 = read_data;
				
				next_i = 20'd2;
			    next_state = `S2;
			end
			`S2:  begin
				read = 20'b1;
				write = 20'b1;
				index = 20'b0;
				
				next_col2=read_data;
				
				next_i = 20'b0;
			    next_state = `S3;
			end
			`S3: begin
				read = 1'b1;
				write = 1'b0;
				index = 1'b0;
				 
				next_state = `S4;
				
				//next_a =  read_data ; 
				next_i = j; //the i of b will equal to the j of a
				next_j = column; //the j of b will equal to the j of c
			end
			`S4: begin
				read = 1'b1;
				write = 1'b0;
				index = 1'b1;
				
				next_writedata = write_data + { {20{a[19]}}, a} * { {20{read_data[19]}}, read_data}; //multiply a and b 
				
				if(i == col1 - 20'd1)
					next_state = `S5;
				else					
					next_state = `S3;
				
				next_i = row; //the i of a will equal to the i of c
				next_j = i + 20'd1;
				
			end
			`S5: begin
				read = 1'b0;
				write = 1'b1;
				index = 1'b0;
				
				next_state = `S3;
				next_j = 20'd0;
				next_writedata = 40'd0;
			
				next_finish = (row == row1 - 20'd1 && column == col2 - 20'd1) ? 1'b1 : 1'b0;
				
				if(column == col2 - 20'd1) begin //change the row and column
					next_i = row +20'd1;
					next_row = row +20'd1;
					next_column = 20'd0;
				end
				else begin
					next_i = row;
					next_row = row;
					next_column = column + 20'd1;
				end
			end
			default:begin
				read = 20'b1;
				write = 20'b1;
				index = 20'b0;
				
				next_i = 20'b1;
			    next_state = `S1;
			end
		endcase	
    end
	
endmodule