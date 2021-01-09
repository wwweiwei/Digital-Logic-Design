/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Jun 11 19:30:33 2018
/////////////////////////////////////////////////////////////


module ECE_DW01_inc_0 ( A, SUM );
  input [14:0] A;
  output [14:0] SUM;

  wire   [14:2] carry;

  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[14]), .B(A[14]), .Y(SUM[14]) );
endmodule


module ECE_DW01_inc_1 ( A, SUM );
  input [14:0] A;
  output [14:0] SUM;

  wire   [14:2] carry;

  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[14]), .B(A[14]), .Y(SUM[14]) );
endmodule


module ECE ( clk, rst, RData, RAddr, WAddr, WData, Wen, Finish );
  input [14:0] RData;
  output [14:0] RAddr;
  output [14:0] WAddr;
  output [4:0] WData;
  input clk, rst;
  output Wen, Finish;
  wire   N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68,
         N69, N70, N245, N246, N247, N248, N249, N250, \size[9] , \size[8] ,
         \size[7] , \size[6] , \size[5] , \size[4] , \size[3] , \size[2] ,
         \size[1] , \size[14] , \size[13] , \size[12] , \size[11] , \size[10] ,
         \size[0] , n8, n9, n10, n12, n14, n16, n18, n20, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n35, n36, n37, n38, n39, n40, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n86,
         n87, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103;
  wire   [3:0] state;
  wire   [14:0] next_RAddr;
  wire   [14:0] next_WAddr;
  wire   [3:0] next_state;

  XNOR2X1 U106 ( .A(n73), .B(\size[14] ), .Y(n55) );
  XNOR2X1 U107 ( .A(n81), .B(\size[8] ), .Y(n54) );
  XNOR2X1 U108 ( .A(n71), .B(\size[12] ), .Y(n53) );
  XOR2X1 U110 ( .A(\size[10] ), .B(n69), .Y(n59) );
  XOR2X1 U111 ( .A(\size[11] ), .B(n70), .Y(n58) );
  XOR2X1 U112 ( .A(\size[4] ), .B(n77), .Y(n57) );
  XOR2X1 U113 ( .A(\size[13] ), .B(n72), .Y(n56) );
  XNOR2X1 U115 ( .A(n78), .B(\size[5] ), .Y(n63) );
  XNOR2X1 U116 ( .A(n74), .B(\size[1] ), .Y(n62) );
  XNOR2X1 U117 ( .A(n76), .B(\size[3] ), .Y(n61) );
  XNOR2X1 U118 ( .A(n75), .B(\size[2] ), .Y(n60) );
  XNOR2X1 U120 ( .A(n82), .B(\size[9] ), .Y(n67) );
  XNOR2X1 U121 ( .A(n68), .B(\size[0] ), .Y(n66) );
  XNOR2X1 U122 ( .A(n80), .B(\size[7] ), .Y(n65) );
  XNOR2X1 U123 ( .A(n79), .B(\size[6] ), .Y(n64) );
  AO22X4 U3 ( .A0(Wen), .A1(\size[8] ), .B0(n103), .B1(RData[8]), .Y(\size[8] ) );
  AO22X4 U4 ( .A0(Wen), .A1(\size[12] ), .B0(n103), .B1(RData[12]), .Y(
        \size[12] ) );
  AO22X4 U5 ( .A0(Wen), .A1(\size[14] ), .B0(n103), .B1(RData[14]), .Y(
        \size[14] ) );
  AO22X4 U6 ( .A0(Wen), .A1(\size[13] ), .B0(n103), .B1(RData[13]), .Y(
        \size[13] ) );
  AO22X4 U7 ( .A0(Wen), .A1(\size[4] ), .B0(n103), .B1(RData[4]), .Y(\size[4] ) );
  AO22X4 U8 ( .A0(Wen), .A1(\size[11] ), .B0(n103), .B1(RData[11]), .Y(
        \size[11] ) );
  AO22X4 U9 ( .A0(Wen), .A1(\size[10] ), .B0(n103), .B1(RData[10]), .Y(
        \size[10] ) );
  AO22X4 U10 ( .A0(Wen), .A1(\size[9] ), .B0(n103), .B1(RData[9]), .Y(
        \size[9] ) );
  AO22X4 U11 ( .A0(n103), .A1(RData[0]), .B0(Wen), .B1(\size[0] ), .Y(
        \size[0] ) );
  AO22X4 U12 ( .A0(Wen), .A1(\size[7] ), .B0(n103), .B1(RData[7]), .Y(
        \size[7] ) );
  AO22X4 U13 ( .A0(Wen), .A1(\size[6] ), .B0(n103), .B1(RData[6]), .Y(
        \size[6] ) );
  AO22X4 U14 ( .A0(Wen), .A1(\size[5] ), .B0(n103), .B1(RData[5]), .Y(
        \size[5] ) );
  AO22X4 U15 ( .A0(Wen), .A1(\size[1] ), .B0(n103), .B1(RData[1]), .Y(
        \size[1] ) );
  AO22X4 U16 ( .A0(Wen), .A1(\size[3] ), .B0(n103), .B1(RData[3]), .Y(
        \size[3] ) );
  AO22X4 U17 ( .A0(Wen), .A1(\size[2] ), .B0(n103), .B1(RData[2]), .Y(
        \size[2] ) );
  ECE_DW01_inc_0 r331 ( .A(WAddr), .SUM({N70, N69, N68, N67, N66, N65, N64, 
        N63, N62, N61, N60, N59, N58, N57, N56}) );
  ECE_DW01_inc_1 r330 ( .A(RAddr), .SUM({N55, N54, N53, N52, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41}) );
  DFFSX1 \RAddr_reg[14]  ( .D(next_RAddr[14]), .CK(clk), .SN(n94), .Q(
        RAddr[14]), .QN(n73) );
  DFFSX1 \WAddr_reg[14]  ( .D(next_WAddr[14]), .CK(clk), .SN(n94), .Q(
        WAddr[14]) );
  DFFSX1 \RAddr_reg[13]  ( .D(next_RAddr[13]), .CK(clk), .SN(n94), .Q(
        RAddr[13]), .QN(n72) );
  DFFSX1 \WAddr_reg[13]  ( .D(next_WAddr[13]), .CK(clk), .SN(n94), .Q(
        WAddr[13]) );
  DFFRX1 \count_reg[1]  ( .D(n86), .CK(clk), .RN(n94), .QN(n83) );
  DFFSX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .SN(n94), .Q(state[0])
         );
  DFFSX1 \RAddr_reg[6]  ( .D(next_RAddr[6]), .CK(clk), .SN(n94), .Q(RAddr[6]), 
        .QN(n79) );
  DFFSX1 \RAddr_reg[7]  ( .D(next_RAddr[7]), .CK(clk), .SN(n94), .Q(RAddr[7]), 
        .QN(n80) );
  DFFSX1 \RAddr_reg[8]  ( .D(next_RAddr[8]), .CK(clk), .SN(n94), .Q(RAddr[8]), 
        .QN(n81) );
  DFFSX1 \RAddr_reg[9]  ( .D(next_RAddr[9]), .CK(clk), .SN(n94), .Q(RAddr[9]), 
        .QN(n82) );
  DFFSX1 \RAddr_reg[10]  ( .D(next_RAddr[10]), .CK(clk), .SN(n94), .Q(
        RAddr[10]), .QN(n69) );
  DFFSX1 \RAddr_reg[11]  ( .D(next_RAddr[11]), .CK(clk), .SN(n94), .Q(
        RAddr[11]), .QN(n70) );
  DFFSX1 \RAddr_reg[12]  ( .D(next_RAddr[12]), .CK(clk), .SN(n94), .Q(
        RAddr[12]), .QN(n71) );
  DFFSX1 \WAddr_reg[6]  ( .D(next_WAddr[6]), .CK(clk), .SN(n94), .Q(WAddr[6])
         );
  DFFSX1 \WAddr_reg[7]  ( .D(next_WAddr[7]), .CK(clk), .SN(n94), .Q(WAddr[7])
         );
  DFFSX1 \WAddr_reg[8]  ( .D(next_WAddr[8]), .CK(clk), .SN(n94), .Q(WAddr[8])
         );
  DFFSX1 \WAddr_reg[9]  ( .D(next_WAddr[9]), .CK(clk), .SN(n94), .Q(WAddr[9])
         );
  DFFSX1 \WAddr_reg[10]  ( .D(next_WAddr[10]), .CK(clk), .SN(n94), .Q(
        WAddr[10]) );
  DFFSX1 \WAddr_reg[11]  ( .D(next_WAddr[11]), .CK(clk), .SN(n94), .Q(
        WAddr[11]) );
  DFFSX1 \WAddr_reg[12]  ( .D(next_WAddr[12]), .CK(clk), .SN(n94), .Q(
        WAddr[12]) );
  DFFRX1 \count_reg[0]  ( .D(n87), .CK(clk), .RN(n94), .QN(n84) );
  DFFSX1 \RAddr_reg[1]  ( .D(next_RAddr[1]), .CK(clk), .SN(n94), .Q(RAddr[1]), 
        .QN(n74) );
  DFFSX1 \RAddr_reg[2]  ( .D(next_RAddr[2]), .CK(clk), .SN(n94), .Q(RAddr[2]), 
        .QN(n75) );
  DFFSX1 \RAddr_reg[3]  ( .D(next_RAddr[3]), .CK(clk), .SN(n94), .Q(RAddr[3]), 
        .QN(n76) );
  DFFSX1 \RAddr_reg[4]  ( .D(next_RAddr[4]), .CK(clk), .SN(n94), .Q(RAddr[4]), 
        .QN(n77) );
  DFFSX1 \RAddr_reg[5]  ( .D(next_RAddr[5]), .CK(clk), .SN(n94), .Q(RAddr[5]), 
        .QN(n78) );
  DFFSX1 \WAddr_reg[1]  ( .D(next_WAddr[1]), .CK(clk), .SN(n94), .Q(WAddr[1])
         );
  DFFSX1 \WAddr_reg[2]  ( .D(next_WAddr[2]), .CK(clk), .SN(n94), .Q(WAddr[2])
         );
  DFFSX1 \WAddr_reg[3]  ( .D(next_WAddr[3]), .CK(clk), .SN(n94), .Q(WAddr[3])
         );
  DFFSX1 \WAddr_reg[4]  ( .D(next_WAddr[4]), .CK(clk), .SN(n94), .Q(WAddr[4])
         );
  DFFSX1 \WAddr_reg[5]  ( .D(next_WAddr[5]), .CK(clk), .SN(n94), .Q(WAddr[5])
         );
  DFFSX1 \RAddr_reg[0]  ( .D(next_RAddr[0]), .CK(clk), .SN(n94), .Q(RAddr[0]), 
        .QN(n68) );
  DFFSX1 \WAddr_reg[0]  ( .D(next_WAddr[0]), .CK(clk), .SN(n94), .Q(WAddr[0])
         );
  DFFRX1 \state_reg[3]  ( .D(n97), .CK(clk), .RN(n94), .Q(state[3]), .QN(n90)
         );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n94), .Q(state[1]), 
        .QN(n89) );
  TLATX1 \WData_reg[4]  ( .G(n92), .D(N250), .Q(WData[4]) );
  TLATX1 \WData_reg[0]  ( .G(N245), .D(N246), .Q(WData[0]) );
  DFFSX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .SN(n94), .Q(state[2]), 
        .QN(n91) );
  TLATX1 \WData_reg[3]  ( .G(n92), .D(N249), .Q(WData[3]) );
  TLATX1 \WData_reg[2]  ( .G(n92), .D(N248), .Q(WData[2]) );
  TLATX1 \WData_reg[1]  ( .G(n92), .D(N247), .Q(WData[1]) );
  NAND2X1 U124 ( .A(n40), .B(n39), .Y(N245) );
  NOR4X1 U125 ( .A(n89), .B(n93), .C(state[2]), .D(state[3]), .Y(n10) );
  NAND4X1 U126 ( .A(n22), .B(n23), .C(n24), .D(n25), .Y(Wen) );
  NAND4X1 U127 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n9) );
  CLKINVX1 U128 ( .A(N245), .Y(n98) );
  CLKINVX1 U129 ( .A(n20), .Y(n100) );
  CLKINVX1 U130 ( .A(n40), .Y(n99) );
  CLKINVX1 U131 ( .A(n16), .Y(n101) );
  NOR2BX1 U132 ( .AN(n37), .B(n95), .Y(N248) );
  OAI21XL U133 ( .A0(n93), .A1(n29), .B0(n14), .Y(n20) );
  NOR3X1 U134 ( .A(n10), .B(n101), .C(n37), .Y(n40) );
  NAND2BX1 U135 ( .AN(n29), .B(n93), .Y(n36) );
  NAND2X1 U136 ( .A(n100), .B(n43), .Y(n37) );
  OAI222XL U137 ( .A0(n9), .A1(n14), .B0(n95), .B1(n16), .C0(N245), .C1(n89), 
        .Y(next_state[1]) );
  NAND2X1 U138 ( .A(n40), .B(n39), .Y(n92) );
  OAI22XL U139 ( .A0(n10), .A1(n37), .B0(n95), .B1(n38), .Y(n31) );
  NOR2BX1 U140 ( .AN(n14), .B(n10), .Y(n38) );
  NOR3X1 U141 ( .A(n9), .B(n93), .C(n29), .Y(n12) );
  NAND4X1 U142 ( .A(n93), .B(n89), .C(n91), .D(n90), .Y(n14) );
  OAI2BB2XL U143 ( .B0(n18), .B1(n9), .A0N(n98), .A1N(n93), .Y(next_state[0])
         );
  NOR2X1 U144 ( .A(n101), .B(n20), .Y(n18) );
  NAND2X1 U145 ( .A(n35), .B(n90), .Y(n16) );
  NOR2X1 U146 ( .A(n92), .B(n91), .Y(next_state[2]) );
  CLKINVX1 U147 ( .A(n28), .Y(n96) );
  OAI22XL U148 ( .A0(n100), .A1(n95), .B0(n43), .B1(n9), .Y(N247) );
  CLKINVX1 U149 ( .A(n9), .Y(n95) );
  CLKINVX1 U150 ( .A(Wen), .Y(n103) );
  OAI221XL U151 ( .A0(n95), .A1(n29), .B0(n9), .B1(n102), .C0(n36), .Y(N249)
         );
  CLKINVX1 U152 ( .A(n10), .Y(n102) );
  AO22X1 U153 ( .A0(n98), .A1(WAddr[14]), .B0(N70), .B1(n99), .Y(
        next_WAddr[14]) );
  NAND3X1 U154 ( .A(n89), .B(n91), .C(state[3]), .Y(n29) );
  OAI2BB2XL U155 ( .B0(N245), .B1(n72), .A0N(N54), .A1N(n99), .Y(
        next_RAddr[13]) );
  OAI2BB2XL U156 ( .B0(N245), .B1(n70), .A0N(N52), .A1N(n99), .Y(
        next_RAddr[11]) );
  OAI2BB2XL U157 ( .B0(n92), .B1(n73), .A0N(N55), .A1N(n99), .Y(next_RAddr[14]) );
  OAI2BB2XL U158 ( .B0(n92), .B1(n71), .A0N(N53), .A1N(n99), .Y(next_RAddr[12]) );
  OAI2BB2XL U159 ( .B0(n92), .B1(n69), .A0N(N51), .A1N(n99), .Y(next_RAddr[10]) );
  AND2X2 U160 ( .A(n48), .B(n36), .Y(n43) );
  NAND4X1 U161 ( .A(n93), .B(state[1]), .C(n91), .D(n90), .Y(n48) );
  AO22X1 U162 ( .A0(n98), .A1(WAddr[13]), .B0(N69), .B1(n99), .Y(
        next_WAddr[13]) );
  AO22X1 U163 ( .A0(n98), .A1(WAddr[12]), .B0(N68), .B1(n99), .Y(
        next_WAddr[12]) );
  AO22X1 U164 ( .A0(n98), .A1(WAddr[11]), .B0(N67), .B1(n99), .Y(
        next_WAddr[11]) );
  AO22X1 U165 ( .A0(n98), .A1(WAddr[10]), .B0(N66), .B1(n99), .Y(
        next_WAddr[10]) );
  CLKINVX1 U166 ( .A(n8), .Y(n97) );
  AOI221XL U167 ( .A0(n9), .A1(n10), .B0(n98), .B1(state[3]), .C0(n12), .Y(n8)
         );
  NOR3X1 U168 ( .A(n9), .B(n83), .C(n36), .Y(n28) );
  NOR3X1 U169 ( .A(state[1]), .B(state[2]), .C(n93), .Y(n35) );
  NAND4X1 U170 ( .A(state[2]), .B(n93), .C(n89), .D(n90), .Y(n39) );
  OAI22XL U171 ( .A0(n83), .A1(n26), .B0(n84), .B1(n27), .Y(n86) );
  AOI21X1 U172 ( .A0(n83), .A1(n12), .B0(n28), .Y(n27) );
  NOR2BX1 U173 ( .AN(n30), .B(n31), .Y(n26) );
  OAI2BB2XL U174 ( .B0(N245), .B1(n80), .A0N(N48), .A1N(n99), .Y(next_RAddr[7]) );
  OAI2BB2XL U175 ( .B0(N245), .B1(n78), .A0N(N46), .A1N(n99), .Y(next_RAddr[5]) );
  OAI2BB2XL U176 ( .B0(N245), .B1(n76), .A0N(N44), .A1N(n99), .Y(next_RAddr[3]) );
  OAI2BB2XL U177 ( .B0(N245), .B1(n74), .A0N(N42), .A1N(n99), .Y(next_RAddr[1]) );
  OAI2BB2XL U178 ( .B0(N245), .B1(n68), .A0N(N41), .A1N(n99), .Y(next_RAddr[0]) );
  OAI2BB2XL U179 ( .B0(n92), .B1(n82), .A0N(N50), .A1N(n99), .Y(next_RAddr[9])
         );
  OAI2BB2XL U180 ( .B0(n92), .B1(n81), .A0N(N49), .A1N(n99), .Y(next_RAddr[8])
         );
  OAI2BB2XL U181 ( .B0(n92), .B1(n79), .A0N(N47), .A1N(n99), .Y(next_RAddr[6])
         );
  OAI2BB2XL U182 ( .B0(n92), .B1(n77), .A0N(N45), .A1N(n99), .Y(next_RAddr[4])
         );
  OAI2BB2XL U183 ( .B0(n92), .B1(n75), .A0N(N43), .A1N(n99), .Y(next_RAddr[2])
         );
  CLKBUFX3 U184 ( .A(state[0]), .Y(n93) );
  NAND3X1 U185 ( .A(n35), .B(n95), .C(n84), .Y(n30) );
  AO22X1 U186 ( .A0(n98), .A1(WAddr[0]), .B0(N56), .B1(n99), .Y(next_WAddr[0])
         );
  AO22X1 U187 ( .A0(n98), .A1(WAddr[9]), .B0(N65), .B1(n99), .Y(next_WAddr[9])
         );
  AO22X1 U188 ( .A0(n98), .A1(WAddr[8]), .B0(N64), .B1(n99), .Y(next_WAddr[8])
         );
  AO22X1 U189 ( .A0(n98), .A1(WAddr[7]), .B0(N63), .B1(n99), .Y(next_WAddr[7])
         );
  AO22X1 U190 ( .A0(n98), .A1(WAddr[6]), .B0(N62), .B1(n99), .Y(next_WAddr[6])
         );
  AO22X1 U191 ( .A0(n98), .A1(WAddr[5]), .B0(N61), .B1(n99), .Y(next_WAddr[5])
         );
  AO22X1 U192 ( .A0(n98), .A1(WAddr[4]), .B0(N60), .B1(n99), .Y(next_WAddr[4])
         );
  AO22X1 U193 ( .A0(n98), .A1(WAddr[3]), .B0(N59), .B1(n99), .Y(next_WAddr[3])
         );
  AO22X1 U194 ( .A0(n98), .A1(WAddr[2]), .B0(N58), .B1(n99), .Y(next_WAddr[2])
         );
  AO22X1 U195 ( .A0(n98), .A1(WAddr[1]), .B0(N57), .B1(n99), .Y(next_WAddr[1])
         );
  OAI221XL U196 ( .A0(n84), .A1(n32), .B0(n90), .B1(n30), .C0(n96), .Y(n87) );
  AOI2BB1X1 U197 ( .A0N(n9), .A1N(n36), .B0(n31), .Y(n32) );
  NOR3X1 U198 ( .A(RData[0]), .B(RData[11]), .C(RData[10]), .Y(n44) );
  NOR4X1 U199 ( .A(RData[1]), .B(RData[14]), .C(RData[13]), .D(RData[12]), .Y(
        n45) );
  NOR4X1 U200 ( .A(RData[5]), .B(RData[4]), .C(RData[3]), .D(RData[2]), .Y(n46) );
  NOR3X1 U201 ( .A(n82), .B(n80), .C(n81), .Y(n22) );
  NOR4X1 U202 ( .A(n76), .B(n77), .C(n78), .D(n79), .Y(n23) );
  NOR4X1 U203 ( .A(n72), .B(n73), .C(n74), .D(n75), .Y(n24) );
  NOR4X1 U204 ( .A(n68), .B(n69), .C(n70), .D(n71), .Y(n25) );
  NOR4X1 U205 ( .A(RData[9]), .B(RData[8]), .C(RData[7]), .D(RData[6]), .Y(n47) );
  INVX3 U206 ( .A(rst), .Y(n94) );
  NAND4X1 U207 ( .A(n56), .B(n57), .C(n58), .D(n59), .Y(n52) );
  NOR2BX1 U208 ( .AN(n84), .B(n96), .Y(N246) );
  OAI2BB1X1 U209 ( .A0N(n99), .A1N(RData[0]), .B0(n39), .Y(N250) );
  NAND3X1 U210 ( .A(n49), .B(n50), .C(n51), .Y(Finish) );
  NOR4X1 U211 ( .A(n64), .B(n65), .C(n66), .D(n67), .Y(n49) );
  NOR4X1 U212 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n50) );
  NOR4X1 U213 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n51) );
endmodule

