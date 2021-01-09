/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Apr 23 00:54:09 2018
/////////////////////////////////////////////////////////////


module BON_DW01_inc_0 ( A, SUM );
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


module BON_DW01_inc_1 ( A, SUM );
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


module BON ( clk, rst, start, data, en, addr, flag, fin, result );
  input [9:0] data;
  output [9:0] addr;
  output [9:0] result;
  input clk, rst, start;
  output en, flag, fin;
  wire   N23, N26, N29, N32, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45,
         N107, N108, N109, N110, N111, N112, N113, N114, N115, N116, N117,
         N118, N119, N120, N121, N122, N123, N124, N125, N126, N141, N142,
         N143, N144, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n42, n43, n44, n45, n47, n50, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n85,
         n86, n87, n88, n265, n266, n267, n268, n269, n271, n272, n273, n274,
         n275, n276;
  wire   [3:0] state;
  wire   [9:0] leng;
  wire   [9:0] ans;
  wire   [3:0] next_state;
  wire   [9:0] next_num;
  wire   [9:0] next_leng;
  wire   [9:0] next_ans;
  assign en = 1'b1;

  BON_DW01_inc_0 add_125 ( .A(ans), .SUM({N116, N115, N114, N113, N112, N111, 
        N110, N109, N108, N107}) );
  BON_DW01_inc_1 add_69 ( .A(addr), .SUM({N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36}) );
  DFFSX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .SN(n269), .Q(addr[9]), 
        .QN(n52) );
  DFFNSRX1 \next_state_reg[0]  ( .D(N141), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_state[0]), .QN(n70) );
  DFFNSRX1 \next_state_reg[2]  ( .D(N143), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_state[2]), .QN(n68) );
  DFFNSRX1 \next_state_reg[3]  ( .D(N144), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_state[3]), .QN(n69) );
  DFFRX1 \leng_reg[8]  ( .D(next_leng[8]), .CK(clk), .RN(n269), .Q(leng[8]), 
        .QN(n54) );
  DFFRX1 \leng_reg[7]  ( .D(next_leng[7]), .CK(clk), .RN(n269), .Q(leng[7]), 
        .QN(n58) );
  DFFRX1 \leng_reg[5]  ( .D(next_leng[5]), .CK(clk), .RN(n269), .Q(leng[5]), 
        .QN(n65) );
  DFFRX1 \leng_reg[4]  ( .D(next_leng[4]), .CK(clk), .RN(n269), .Q(leng[4]), 
        .QN(n63) );
  DFFRX1 \leng_reg[2]  ( .D(next_leng[2]), .CK(clk), .RN(n269), .Q(leng[2]), 
        .QN(n56) );
  DFFRX1 \leng_reg[0]  ( .D(next_leng[0]), .CK(clk), .RN(n269), .Q(leng[0]), 
        .QN(n60) );
  DFFRX1 \leng_reg[9]  ( .D(next_leng[9]), .CK(clk), .RN(n269), .Q(leng[9]) );
  DFFRX1 \leng_reg[6]  ( .D(next_leng[6]), .CK(clk), .RN(n269), .Q(leng[6]) );
  DFFRX1 \leng_reg[3]  ( .D(next_leng[3]), .CK(clk), .RN(n269), .Q(leng[3]) );
  DFFRX1 \leng_reg[1]  ( .D(next_leng[1]), .CK(clk), .RN(n269), .Q(leng[1]) );
  DFFSX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .SN(n269), .Q(addr[7]), 
        .QN(n57) );
  DFFSX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .SN(n269), .Q(addr[8]), 
        .QN(n53) );
  DFFNSRX1 \next_state_reg[1]  ( .D(N142), .CKN(clk), .SN(1'b1), .RN(1'b1), 
        .Q(next_state[1]) );
  DFFRX1 \ans_reg[9]  ( .D(next_ans[9]), .CK(clk), .RN(n269), .Q(ans[9]), .QN(
        n80) );
  DFFRX1 \ans_reg[8]  ( .D(next_ans[8]), .CK(clk), .RN(n269), .Q(ans[8]), .QN(
        n79) );
  DFFRX1 \ans_reg[7]  ( .D(next_ans[7]), .CK(clk), .RN(n269), .Q(ans[7]), .QN(
        n78) );
  DFFRX1 \ans_reg[6]  ( .D(next_ans[6]), .CK(clk), .RN(n269), .Q(ans[6]), .QN(
        n77) );
  DFFRX1 \ans_reg[5]  ( .D(next_ans[5]), .CK(clk), .RN(n269), .Q(ans[5]), .QN(
        n76) );
  DFFRX1 \ans_reg[4]  ( .D(next_ans[4]), .CK(clk), .RN(n269), .Q(ans[4]), .QN(
        n75) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n269), .Q(addr[1]), 
        .QN(n61) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n269), .Q(addr[2]), 
        .QN(n55) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n269), .Q(addr[3]), 
        .QN(n66) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n269), .Q(addr[4]), 
        .QN(n62) );
  DFFSX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .SN(n269), .Q(addr[5]), 
        .QN(n64) );
  DFFSX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .SN(n269), .Q(addr[6]), 
        .QN(n67) );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n269), .Q(addr[0]), 
        .QN(n59) );
  DFFRX1 \ans_reg[3]  ( .D(next_ans[3]), .CK(clk), .RN(n269), .Q(ans[3]), .QN(
        n74) );
  DFFRX1 \ans_reg[2]  ( .D(next_ans[2]), .CK(clk), .RN(n269), .Q(ans[2]), .QN(
        n73) );
  DFFRX1 \ans_reg[1]  ( .D(next_ans[1]), .CK(clk), .RN(n269), .Q(ans[1]), .QN(
        n72) );
  DFFRX1 \ans_reg[0]  ( .D(next_ans[0]), .CK(clk), .RN(n269), .Q(ans[0]), .QN(
        n71) );
  DFFNSRX1 \next_ans_reg[9]  ( .D(N155), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[9]) );
  DFFNSRX1 \next_ans_reg[8]  ( .D(N154), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[8]) );
  DFFNSRX1 \next_ans_reg[7]  ( .D(N153), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[7]) );
  DFFNSRX1 \next_ans_reg[6]  ( .D(N152), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[6]) );
  DFFNSRX1 \next_ans_reg[5]  ( .D(N151), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[5]) );
  DFFNSRX1 \next_ans_reg[4]  ( .D(N150), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[4]) );
  DFFNSRX1 \next_ans_reg[3]  ( .D(N149), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[3]) );
  DFFNSRX1 \next_ans_reg[2]  ( .D(N148), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[2]) );
  DFFNSRX1 \next_ans_reg[1]  ( .D(N147), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[1]) );
  DFFNSRX1 \next_ans_reg[0]  ( .D(N146), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_ans[0]) );
  DFFNSRX1 \next_num_reg[0]  ( .D(N36), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[0]) );
  DFFNSRX1 \next_num_reg[1]  ( .D(N37), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[1]) );
  DFFNSRX1 \next_num_reg[2]  ( .D(N38), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[2]) );
  DFFNSRX1 \next_num_reg[3]  ( .D(N39), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[3]) );
  DFFNSRX1 \next_num_reg[4]  ( .D(N40), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[4]) );
  DFFNSRX1 \next_num_reg[5]  ( .D(N41), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[5]) );
  DFFNSRX1 \next_num_reg[6]  ( .D(N42), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[6]) );
  DFFNSRX1 \next_num_reg[7]  ( .D(N43), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[7]) );
  DFFNSRX1 \next_num_reg[8]  ( .D(N44), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[8]) );
  DFFNSRX1 \next_num_reg[9]  ( .D(N45), .CKN(clk), .SN(1'b1), .RN(1'b1), .Q(
        next_num[9]) );
  DFFSX1 \state_tri_enable_reg[3]  ( .D(1'b0), .CK(clk), .SN(n269), .QN(n85)
         );
  DFFSX1 \state_tri_enable_reg[2]  ( .D(1'b0), .CK(clk), .SN(n269), .QN(n86)
         );
  DFFSX1 \state_tri_enable_reg[1]  ( .D(1'b0), .CK(clk), .SN(n269), .QN(n87)
         );
  DFFSX1 \state_tri_enable_reg[0]  ( .D(1'b0), .CK(clk), .SN(n269), .QN(n88)
         );
  TBUFXL \state_tri[0]  ( .A(N32), .OE(n88), .Y(state[0]) );
  TBUFXL \state_tri[1]  ( .A(N29), .OE(n87), .Y(state[1]) );
  TBUFXL \state_tri[2]  ( .A(N26), .OE(n86), .Y(state[2]) );
  TBUFXL \state_tri[3]  ( .A(N23), .OE(n85), .Y(state[3]) );
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
  DFFQX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .Q(N32) );
  DFFQX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .Q(N29) );
  DFFQX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .Q(N26) );
  DFFQX1 \state_reg[3]  ( .D(next_state[3]), .CK(clk), .Q(N23) );
  CLKINVX1 U256 ( .A(state[0]), .Y(n273) );
  CLKINVX1 U257 ( .A(data[0]), .Y(n266) );
  CLKINVX1 U258 ( .A(n33), .Y(n271) );
  NAND4BX1 U259 ( .AN(n36), .B(n28), .C(n19), .D(n42), .Y(n33) );
  NOR3BXL U260 ( .AN(n32), .B(n43), .C(n22), .Y(n42) );
  NAND4X1 U261 ( .A(n27), .B(n29), .C(n47), .D(n31), .Y(n36) );
  OA21XL U262 ( .A0(n32), .A1(n266), .B0(n33), .Y(n20) );
  NAND4X1 U263 ( .A(n20), .B(n25), .C(n26), .D(n27), .Y(N143) );
  OAI2BB1X1 U264 ( .A0N(n28), .A1N(n29), .B0(n266), .Y(n26) );
  OAI2BB1X1 U265 ( .A0N(n24), .A1N(n31), .B0(data[0]), .Y(n25) );
  NAND2X1 U266 ( .A(n44), .B(n273), .Y(n47) );
  NAND3X1 U267 ( .A(n33), .B(n34), .C(n35), .Y(N142) );
  AOI22X1 U268 ( .A0(data[0]), .A1(n36), .B0(n37), .B1(n266), .Y(n35) );
  NAND3BX1 U269 ( .AN(n22), .B(n47), .C(n28), .Y(n50) );
  OA21XL U270 ( .A0(n45), .A1(n273), .B0(n34), .Y(n19) );
  NOR2X1 U271 ( .A(n45), .B(n266), .Y(n40) );
  CLKINVX1 U272 ( .A(n267), .Y(n268) );
  CLKINVX1 U273 ( .A(n265), .Y(fin) );
  OAI2BB2XL U274 ( .B0(n78), .B1(data[0]), .A0N(N114), .A1N(data[0]), .Y(N124)
         );
  OAI2BB2XL U275 ( .B0(n79), .B1(data[0]), .A0N(N115), .A1N(data[0]), .Y(N125)
         );
  OAI2BB2XL U276 ( .B0(n80), .B1(data[0]), .A0N(N116), .A1N(data[0]), .Y(N126)
         );
  NAND4X1 U277 ( .A(state[1]), .B(state[2]), .C(n273), .D(n276), .Y(n27) );
  NAND4BBXL U278 ( .AN(state[0]), .BN(state[1]), .C(state[2]), .D(state[3]), 
        .Y(n267) );
  NOR2X1 U279 ( .A(n275), .B(state[2]), .Y(n44) );
  NOR3X1 U280 ( .A(state[1]), .B(state[3]), .C(n273), .Y(n43) );
  NAND3X1 U281 ( .A(n22), .B(n276), .C(state[2]), .Y(n29) );
  NOR2X1 U282 ( .A(state[1]), .B(state[0]), .Y(n22) );
  NAND3X1 U283 ( .A(state[3]), .B(n273), .C(n44), .Y(n34) );
  NAND3X1 U284 ( .A(state[2]), .B(n22), .C(state[3]), .Y(n24) );
  NAND3X1 U285 ( .A(n44), .B(n276), .C(state[0]), .Y(n28) );
  OAI2BB2XL U286 ( .B0(n71), .B1(data[0]), .A0N(N107), .A1N(data[0]), .Y(N117)
         );
  OAI2BB2XL U287 ( .B0(n72), .B1(data[0]), .A0N(N108), .A1N(data[0]), .Y(N118)
         );
  OAI2BB2XL U288 ( .B0(n73), .B1(data[0]), .A0N(N109), .A1N(data[0]), .Y(N119)
         );
  OAI2BB2XL U289 ( .B0(n74), .B1(data[0]), .A0N(N110), .A1N(data[0]), .Y(N120)
         );
  OAI2BB2XL U290 ( .B0(n75), .B1(data[0]), .A0N(N111), .A1N(data[0]), .Y(N121)
         );
  OAI2BB2XL U291 ( .B0(n76), .B1(data[0]), .A0N(N112), .A1N(data[0]), .Y(N122)
         );
  OAI2BB2XL U292 ( .B0(n77), .B1(data[0]), .A0N(N113), .A1N(data[0]), .Y(N123)
         );
  NAND4X1 U293 ( .A(n38), .B(n39), .C(n29), .D(n34), .Y(N141) );
  OAI31XL U294 ( .A0(n50), .A1(n272), .A2(n37), .B0(data[0]), .Y(n38) );
  OAI21XL U295 ( .A0(n40), .A1(n271), .B0(state[0]), .Y(n39) );
  CLKINVX1 U296 ( .A(n27), .Y(n272) );
  AOI32X1 U297 ( .A0(state[1]), .A1(n276), .A2(state[2]), .B0(n275), .B1(
        state[3]), .Y(n45) );
  NAND3X1 U298 ( .A(n44), .B(state[3]), .C(state[0]), .Y(n32) );
  NAND2X1 U299 ( .A(n43), .B(state[2]), .Y(n31) );
  CLKINVX1 U300 ( .A(state[3]), .Y(n276) );
  OAI31XL U301 ( .A0(n273), .A1(state[2]), .A2(state[1]), .B0(n24), .Y(n37) );
  CLKINVX1 U302 ( .A(state[1]), .Y(n275) );
  OAI211X1 U303 ( .A0(data[0]), .A1(n19), .B0(n20), .C0(n21), .Y(N144) );
  AOI31X1 U304 ( .A0(state[3]), .A1(n22), .A2(data[0]), .B0(n274), .Y(n21) );
  CLKINVX1 U305 ( .A(n24), .Y(n274) );
  INVX3 U306 ( .A(rst), .Y(n269) );
  NOR4X1 U307 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n9) );
  XOR2X1 U308 ( .A(n62), .B(n63), .Y(n11) );
  XOR2X1 U309 ( .A(n53), .B(n54), .Y(n12) );
  XOR2X1 U310 ( .A(n55), .B(n56), .Y(n13) );
  NOR3X1 U311 ( .A(n16), .B(n17), .C(n18), .Y(n8) );
  XOR2X1 U312 ( .A(n57), .B(n58), .Y(n18) );
  XOR2X1 U313 ( .A(n64), .B(n65), .Y(n17) );
  XOR2X1 U314 ( .A(n59), .B(n60), .Y(n16) );
  NOR4X1 U315 ( .A(next_state[1]), .B(n70), .C(n68), .D(n69), .Y(flag) );
  NAND3X1 U316 ( .A(n14), .B(start), .C(n15), .Y(n10) );
  XOR2X1 U317 ( .A(leng[1]), .B(n61), .Y(n14) );
  XOR2X1 U318 ( .A(leng[9]), .B(n52), .Y(n15) );
  CLKBUFX3 U319 ( .A(n5), .Y(n265) );
  NAND4X1 U320 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  XOR2X1 U321 ( .A(leng[3]), .B(n66), .Y(n7) );
  XOR2X1 U322 ( .A(leng[6]), .B(n67), .Y(n6) );
  NOR2X1 U323 ( .A(n71), .B(n265), .Y(result[0]) );
  NOR2X1 U324 ( .A(n72), .B(n265), .Y(result[1]) );
  NOR2X1 U325 ( .A(n73), .B(n265), .Y(result[2]) );
  NOR2X1 U326 ( .A(n74), .B(n265), .Y(result[3]) );
  NOR2X1 U327 ( .A(n75), .B(n265), .Y(result[4]) );
  NOR2X1 U328 ( .A(n76), .B(n265), .Y(result[5]) );
  NOR2X1 U329 ( .A(n77), .B(n265), .Y(result[6]) );
  NOR2X1 U330 ( .A(n78), .B(n265), .Y(result[7]) );
  NOR2X1 U331 ( .A(n79), .B(n265), .Y(result[8]) );
  NOR2X1 U332 ( .A(n80), .B(n265), .Y(result[9]) );
  AO22X1 U333 ( .A0(ans[0]), .A1(n267), .B0(N117), .B1(n268), .Y(N146) );
  AO22X1 U334 ( .A0(ans[1]), .A1(n267), .B0(N118), .B1(n268), .Y(N147) );
  AO22X1 U335 ( .A0(ans[2]), .A1(n267), .B0(N119), .B1(n268), .Y(N148) );
  AO22X1 U336 ( .A0(ans[3]), .A1(n267), .B0(N120), .B1(n268), .Y(N149) );
  AO22X1 U337 ( .A0(ans[4]), .A1(n267), .B0(N121), .B1(n268), .Y(N150) );
  AO22X1 U338 ( .A0(ans[5]), .A1(n267), .B0(N122), .B1(n268), .Y(N151) );
  AO22X1 U339 ( .A0(ans[6]), .A1(n267), .B0(N123), .B1(n268), .Y(N152) );
  AO22X1 U340 ( .A0(ans[7]), .A1(n267), .B0(N124), .B1(n268), .Y(N153) );
  AO22X1 U341 ( .A0(ans[8]), .A1(n267), .B0(N125), .B1(n268), .Y(N154) );
  AO22X1 U342 ( .A0(ans[9]), .A1(n267), .B0(N126), .B1(n268), .Y(N155) );
endmodule

