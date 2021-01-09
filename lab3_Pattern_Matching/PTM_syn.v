/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun Apr 22 16:02:15 2018
/////////////////////////////////////////////////////////////


module PTM_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM ( clk, rst, start, data, en, addr, flag, fin, result );
  input [9:0] data;
  output [9:0] addr;
  output [9:0] result;
  input clk, rst, start;
  output en, flag, fin;
  wire   N15, N18, N21, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N63,
         N64, N65, N66, N67, N68, N69, N70, N71, N72, N91, N92, N93, N95, N96,
         N97, N98, N99, N100, N101, N102, N103, N104, N109, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n22, n23, n25,
         n26, n27, n28, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n62, n63, n64, n100, n101, n102, n103, n105, n106,
         n107;
  wire   [2:0] state;
  wire   [9:0] leng;
  wire   [9:0] ans;
  wire   [2:0] next_state;
  wire   [9:0] next_num;
  wire   [9:0] next_leng;
  wire   [9:0] next_ans;
  assign en = 1'b1;
  assign flag = N109;

  PTM_DW01_inc_0 add_70 ( .A(ans), .SUM({N72, N71, N70, N69, N68, N67, N66, 
        N65, N64, N63}) );
  PTM_DW01_inc_1 add_51 ( .A(addr), .SUM({N34, N33, N32, N31, N30, N29, N28, 
        N27, N26, N25}) );
  DFFSX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .SN(n103), .Q(addr[9]), 
        .QN(n40) );
  DFFRX1 \ans_reg[9]  ( .D(next_ans[9]), .CK(clk), .RN(n103), .Q(ans[9]), .QN(
        n39) );
  DFFNSRX1 \next_state_reg[0]  ( .D(N91), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_state[0]), .QN(n57) );
  DFFNSRX1 \next_state_reg[1]  ( .D(N92), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_state[1]), .QN(n58) );
  DFFNSRX1 \next_state_reg[2]  ( .D(N93), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_state[2]), .QN(n56) );
  DFFRX1 \leng_reg[8]  ( .D(next_leng[8]), .CK(clk), .RN(n103), .Q(leng[8]), 
        .QN(n42) );
  DFFRX1 \leng_reg[7]  ( .D(next_leng[7]), .CK(clk), .RN(n103), .Q(leng[7]), 
        .QN(n46) );
  DFFRX1 \leng_reg[5]  ( .D(next_leng[5]), .CK(clk), .RN(n103), .Q(leng[5]), 
        .QN(n53) );
  DFFRX1 \leng_reg[4]  ( .D(next_leng[4]), .CK(clk), .RN(n103), .Q(leng[4]), 
        .QN(n51) );
  DFFRX1 \leng_reg[2]  ( .D(next_leng[2]), .CK(clk), .RN(n103), .Q(leng[2]), 
        .QN(n44) );
  DFFRX1 \leng_reg[0]  ( .D(next_leng[0]), .CK(clk), .RN(n103), .Q(leng[0]), 
        .QN(n48) );
  DFFRX1 \leng_reg[9]  ( .D(next_leng[9]), .CK(clk), .RN(n103), .Q(leng[9]) );
  DFFRX1 \leng_reg[6]  ( .D(next_leng[6]), .CK(clk), .RN(n103), .Q(leng[6]) );
  DFFRX1 \leng_reg[3]  ( .D(next_leng[3]), .CK(clk), .RN(n103), .Q(leng[3]) );
  DFFRX1 \leng_reg[1]  ( .D(next_leng[1]), .CK(clk), .RN(n103), .Q(leng[1]) );
  DFFSX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .SN(n103), .Q(addr[7]), 
        .QN(n45) );
  DFFSX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .SN(n103), .Q(addr[8]), 
        .QN(n41) );
  DFFRX1 \ans_reg[5]  ( .D(next_ans[5]), .CK(clk), .RN(n103), .Q(ans[5]), .QN(
        n35) );
  DFFRX1 \ans_reg[2]  ( .D(next_ans[2]), .CK(clk), .RN(n103), .Q(ans[2]), .QN(
        n32) );
  DFFRX1 \ans_reg[3]  ( .D(next_ans[3]), .CK(clk), .RN(n103), .Q(ans[3]), .QN(
        n33) );
  DFFRX1 \ans_reg[4]  ( .D(next_ans[4]), .CK(clk), .RN(n103), .Q(ans[4]), .QN(
        n34) );
  DFFRX1 \ans_reg[6]  ( .D(next_ans[6]), .CK(clk), .RN(n103), .Q(ans[6]), .QN(
        n36) );
  DFFRX1 \ans_reg[7]  ( .D(next_ans[7]), .CK(clk), .RN(n103), .Q(ans[7]), .QN(
        n37) );
  DFFRX1 \ans_reg[8]  ( .D(next_ans[8]), .CK(clk), .RN(n103), .Q(ans[8]), .QN(
        n38) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n103), .Q(addr[1]), 
        .QN(n49) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n103), .Q(addr[2]), 
        .QN(n43) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n103), .Q(addr[3]), 
        .QN(n54) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n103), .Q(addr[4]), 
        .QN(n50) );
  DFFSX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .SN(n103), .Q(addr[5]), 
        .QN(n52) );
  DFFSX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .SN(n103), .Q(addr[6]), 
        .QN(n55) );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n103), .Q(addr[0]), 
        .QN(n47) );
  DFFRX1 \ans_reg[1]  ( .D(next_ans[1]), .CK(clk), .RN(n103), .Q(ans[1]), .QN(
        n31) );
  DFFRX1 \ans_reg[0]  ( .D(next_ans[0]), .CK(clk), .RN(n103), .Q(ans[0]), .QN(
        n30) );
  DFFNSRX1 \next_ans_reg[5]  ( .D(N100), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[5]) );
  DFFNSRX1 \next_ans_reg[0]  ( .D(N95), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[0]) );
  DFFNSRX1 \next_ans_reg[1]  ( .D(N96), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[1]) );
  DFFNSRX1 \next_ans_reg[2]  ( .D(N97), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[2]) );
  DFFNSRX1 \next_ans_reg[3]  ( .D(N98), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[3]) );
  DFFNSRX1 \next_ans_reg[4]  ( .D(N99), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[4]) );
  DFFNSRX1 \next_ans_reg[6]  ( .D(N101), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[6]) );
  DFFNSRX1 \next_ans_reg[7]  ( .D(N102), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[7]) );
  DFFNSRX1 \next_ans_reg[8]  ( .D(N103), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[8]) );
  DFFNSRX1 \next_ans_reg[9]  ( .D(N104), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[9]) );
  DFFNSRX1 \next_num_reg[0]  ( .D(N25), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[0]) );
  DFFNSRX1 \next_num_reg[1]  ( .D(N26), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[1]) );
  DFFNSRX1 \next_num_reg[2]  ( .D(N27), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[2]) );
  DFFNSRX1 \next_num_reg[3]  ( .D(N28), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[3]) );
  DFFNSRX1 \next_num_reg[4]  ( .D(N29), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[4]) );
  DFFNSRX1 \next_num_reg[5]  ( .D(N30), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[5]) );
  DFFNSRX1 \next_num_reg[6]  ( .D(N31), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[6]) );
  DFFNSRX1 \next_num_reg[7]  ( .D(N32), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[7]) );
  DFFNSRX1 \next_num_reg[8]  ( .D(N33), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[8]) );
  DFFNSRX1 \next_num_reg[9]  ( .D(N34), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[9]) );
  DFFSX1 \state_tri_enable_reg[2]  ( .D(1'b0), .CK(clk), .SN(n103), .QN(n62)
         );
  DFFSX1 \state_tri_enable_reg[1]  ( .D(1'b0), .CK(clk), .SN(n103), .QN(n63)
         );
  DFFSX1 \state_tri_enable_reg[0]  ( .D(1'b0), .CK(clk), .SN(n103), .QN(n64)
         );
  TBUFXL \state_tri[0]  ( .A(N21), .OE(n64), .Y(state[0]) );
  TBUFXL \state_tri[2]  ( .A(N15), .OE(n62), .Y(state[2]) );
  TBUFXL \state_tri[1]  ( .A(N18), .OE(n63), .Y(state[1]) );
  DFFNSRX1 \next_leng_reg[9]  ( .D(leng[9]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[9]) );
  DFFNSRX1 \next_leng_reg[8]  ( .D(leng[8]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[8]) );
  DFFNSRX1 \next_leng_reg[7]  ( .D(leng[7]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[7]) );
  DFFNSRX1 \next_leng_reg[6]  ( .D(leng[6]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[6]) );
  DFFNSRX1 \next_leng_reg[5]  ( .D(leng[5]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[5]) );
  DFFNSRX1 \next_leng_reg[4]  ( .D(leng[4]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[4]) );
  DFFNSRX1 \next_leng_reg[3]  ( .D(leng[3]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[3]) );
  DFFNSRX1 \next_leng_reg[2]  ( .D(leng[2]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[2]) );
  DFFNSRX1 \next_leng_reg[1]  ( .D(leng[1]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[1]) );
  DFFNSRX1 \next_leng_reg[0]  ( .D(leng[0]), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_leng[0]) );
  DFFQX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .Q(N21) );
  DFFQX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .Q(N18) );
  DFFQX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .Q(N15) );
  NOR2X1 U90 ( .A(n23), .B(n28), .Y(n101) );
  NOR2X1 U91 ( .A(n23), .B(n28), .Y(n19) );
  NOR2X1 U92 ( .A(n23), .B(n28), .Y(n100) );
  CLKINVX1 U93 ( .A(n102), .Y(fin) );
  OAI2BB2XL U94 ( .B0(n39), .B1(n100), .A0N(N72), .A1N(n19), .Y(N104) );
  NAND2X1 U95 ( .A(state[2]), .B(n106), .Y(n23) );
  OAI2BB2XL U96 ( .B0(n37), .B1(n19), .A0N(N70), .A1N(n101), .Y(N102) );
  OAI2BB2XL U97 ( .B0(n36), .B1(n100), .A0N(N69), .A1N(n19), .Y(N101) );
  OAI2BB2XL U98 ( .B0(n33), .B1(n19), .A0N(N66), .A1N(n19), .Y(N98) );
  OAI2BB2XL U99 ( .B0(n32), .B1(n100), .A0N(N65), .A1N(n19), .Y(N97) );
  OAI2BB2XL U100 ( .B0(n38), .B1(n101), .A0N(N71), .A1N(n100), .Y(N103) );
  OAI2BB2XL U101 ( .B0(n34), .B1(n101), .A0N(N67), .A1N(n100), .Y(N99) );
  OAI2BB2XL U102 ( .B0(n35), .B1(n101), .A0N(N68), .A1N(n100), .Y(N100) );
  NOR2X1 U103 ( .A(n105), .B(state[1]), .Y(n22) );
  NAND2X1 U104 ( .A(n22), .B(state[2]), .Y(n20) );
  OAI222XL U105 ( .A0(n20), .A1(n106), .B0(n22), .B1(n23), .C0(n107), .C1(n25), 
        .Y(N93) );
  CLKINVX1 U106 ( .A(state[1]), .Y(n107) );
  OAI221XL U107 ( .A0(state[1]), .A1(n23), .B0(state[2]), .B1(n105), .C0(n28), 
        .Y(N91) );
  CLKINVX1 U108 ( .A(state[0]), .Y(n106) );
  NAND2X1 U109 ( .A(state[1]), .B(data[0]), .Y(n28) );
  OAI2BB2XL U110 ( .B0(n30), .B1(n19), .A0N(N63), .A1N(n101), .Y(N95) );
  OAI2BB2XL U111 ( .B0(n31), .B1(n101), .A0N(N64), .A1N(n100), .Y(N96) );
  NAND3BX1 U112 ( .AN(state[2]), .B(n105), .C(state[0]), .Y(n25) );
  NAND3X1 U113 ( .A(n26), .B(n20), .C(n27), .Y(N92) );
  NAND4X1 U114 ( .A(state[0]), .B(state[1]), .C(state[2]), .D(n105), .Y(n26)
         );
  OA22X1 U115 ( .A0(state[0]), .A1(n28), .B0(n25), .B1(state[1]), .Y(n27) );
  NOR4X1 U116 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n9) );
  XOR2X1 U117 ( .A(n50), .B(n51), .Y(n11) );
  XOR2X1 U118 ( .A(n41), .B(n42), .Y(n12) );
  XOR2X1 U119 ( .A(n43), .B(n44), .Y(n13) );
  INVX3 U120 ( .A(rst), .Y(n103) );
  NOR3X1 U121 ( .A(n16), .B(n17), .C(n18), .Y(n8) );
  XOR2X1 U122 ( .A(n45), .B(n46), .Y(n18) );
  XOR2X1 U123 ( .A(n52), .B(n53), .Y(n17) );
  XOR2X1 U124 ( .A(n47), .B(n48), .Y(n16) );
  NAND3X1 U125 ( .A(n14), .B(start), .C(n15), .Y(n10) );
  XOR2X1 U126 ( .A(leng[1]), .B(n49), .Y(n14) );
  XOR2X1 U127 ( .A(leng[9]), .B(n40), .Y(n15) );
  CLKBUFX3 U128 ( .A(n5), .Y(n102) );
  NAND4X1 U129 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  XOR2X1 U130 ( .A(leng[3]), .B(n54), .Y(n7) );
  XOR2X1 U131 ( .A(leng[6]), .B(n55), .Y(n6) );
  NOR3X1 U132 ( .A(n56), .B(n57), .C(n58), .Y(N109) );
  CLKINVX1 U133 ( .A(data[0]), .Y(n105) );
  NOR2X1 U134 ( .A(n30), .B(n102), .Y(result[0]) );
  NOR2X1 U135 ( .A(n31), .B(n102), .Y(result[1]) );
  NOR2X1 U136 ( .A(n32), .B(n102), .Y(result[2]) );
  NOR2X1 U137 ( .A(n33), .B(n102), .Y(result[3]) );
  NOR2X1 U138 ( .A(n34), .B(n102), .Y(result[4]) );
  NOR2X1 U139 ( .A(n35), .B(n102), .Y(result[5]) );
  NOR2X1 U140 ( .A(n36), .B(n102), .Y(result[6]) );
  NOR2X1 U141 ( .A(n37), .B(n102), .Y(result[7]) );
  NOR2X1 U142 ( .A(n38), .B(n102), .Y(result[8]) );
  NOR2X1 U143 ( .A(n39), .B(n102), .Y(result[9]) );
endmodule

