`define SDFFILE   "./ECE.sdf"
`define End_CYCLE  1000000

`define testcase1  "./testcase1.dat" 
`define answer1  "./answer1.dat"

`define testcase2  "./testcase2.dat" 
`define answer2  "./answer2.dat"

`define testcase3  "./testcase3.dat" 
`define answer3  "./answer3.dat"

module ECE_tb;
	
	parameter cyc = 30;
	parameter dataWidth = 5;
	parameter addrWidth = 15;

	// #pattern
	parameter PAT = 32768;
	reg [dataWidth-1:0] ansRAM [0:PAT-1];
	reg clk, rst;
	
	wire [addrWidth-1:0] RData;
	wire [addrWidth-1:0] RAddr;
	wire [addrWidth-1:0] WAddr;
	wire [dataWidth-1:0] WData;
	wire Wen, Finish;

	integer f, i;
	reg check;

	SRAM ECEMem(
		.clk(clk), 
		.Wen(Wen), 
		.WData({10'd0 , WData}), 
		.WAddr(WAddr), 
		.RAddr(RAddr), 
		.RData(RData)
	);

	ECE ece(
		.clk(clk),
		.rst(rst), 
		.RData(RData), 
		.RAddr(RAddr), 
		.WAddr(WAddr),  
		.WData(WData),
		.Wen(Wen),
		.Finish(Finish)
	);

	always #(cyc/2) clk = ~clk;
	
	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE, ece);
			$fsdbDumpfile("ECE_syn.fsdb");
		`else
			$fsdbDumpfile("ECE.fsdb");
		`endif
		$fsdbDumpvars;
	end

	initial begin
		`ifdef TEST1
			$readmemb (`answer1, ansRAM);
		`endif
		
		`ifdef TEST2
			$readmemb (`answer2, ansRAM);
		`endif

		`ifdef TEST3
			$readmemb (`answer3, ansRAM);
		`endif
	end

	initial begin

		rst = 1'b0;
		clk = 1'b0;

		@(posedge clk)  rst = 1'b1; 
		#(cyc);    rst = 1'b0; 
				
		@(posedge Finish) 

		check = 1;
		
		for (i = 0 ; i < PAT - 1 ; i = i + 1) begin
				
			if ({10'd0 , ansRAM[i]} == ECEMem.mem[i]) begin
				// $display("index %5d : AC answer: bit %1b , char : %3b , pattern flag %1b\n" , i , ECEMem.mem[i][4] , ECEMem.mem[i][3 : 1] , ECEMem.mem[i][0]);				
			end else begin
				$display("index %5d : wrong   ans: bit %1b , char : %3b , pattern flag %1b\n" , i , ECEMem.mem[i][4] , ECEMem.mem[i][3 : 1] , ECEMem.mem[i][0]);
				$display("index %5d : correct ans: bit %1b , char : %3b , pattern flag %1b\n" , i , ansRAM[i][4] , ansRAM[i][3 : 1] , ansRAM[i][0]);
				check = 0;
			end	
	  				
		end

		if(check)begin
			$display("\nCongratulations All PASS !!! \n\n");
		end

		`ifdef TEST1
			f = $fopen("answer1.txt","w");
		`endif
		
		`ifdef TEST2
			f = $fopen("answer2.txt","w");
		`endif

		`ifdef TEST3
			f = $fopen("answer3.txt","w");
		`endif

		
		$fwrite(f, "%d\n", check);

		$finish;
	end

	initial  begin
		#`End_CYCLE ;
		$display("-----------------------------------------------------\n");
		$display("    Error!!! Somethings' wrong with your code ... !! \n");
		$display("-------------------------FAIL------------------------\n");
		$display("-----------------------------------------------------\n");
		$finish;
	end

endmodule

module SRAM (clk, Wen, WData, WAddr, RAddr, RData);
	
	parameter dataWidth = 15;
	parameter addrWidth = 15;
    parameter PAT = 32768;

	input clk, Wen;
	input [dataWidth-1:0] WData;
	input [addrWidth-1:0] WAddr, RAddr;
	
	output reg [addrWidth-1:0] RData;

	reg [dataWidth-1:0] mem [0:PAT-1];
	integer i;

	initial begin

		`ifdef TEST1
			$readmemb (`testcase1, mem);
		`endif
		
		`ifdef TEST2
			$readmemb (`testcase2, mem);
		`endif

		`ifdef TEST3
			$readmemb (`testcase3, mem);
		`endif
		
	end

	always@(posedge clk) begin

		if (Wen) begin
			mem[WAddr] <= WData;
		end
		
	end

	always@(negedge clk)begin

		RData = mem[RAddr];
		
	end


endmodule
