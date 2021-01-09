module fop_tb;
	wire out_G,out_D,out_B;
	reg [3:0]in;
	integer i;

	initial begin
		in=0;
		for(i=0;i<16;i=i+1)begin
			#5
			$display("time=%4d,in=%b,out_G=%b,out_D=%b,out_B=%b",$time,in,out_G,out_D,out_B);
			if((out_G!=out_D)||(out_D!=out_B)||
				((in==0||in==1||in==2||in==3||in==5||in==7||in==8||in==11||in==13)&&(out_G&out_D&out_B)==0)||
				((in==4||in==6||in==9||in==10||in==12||in==14||in==15)&&(out_G&out_D&out_B)==1))
				begin
					$display("You got wrong answer!!");
				
				end
				in=in+1;
		end
		$display("Congratulations!!");
		$finish;
	end

	fop_G hvg
	(
		.in(in),
		.out(out_G)
	);
	fop_D hvd
	(
		.in(in),
		.out(out_D)
	);
	fop_B hvb
	(
		.in(in),
		.out(out_B)
	);

endmodule


