/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun Jun 10 01:32:42 2018
/////////////////////////////////////////////////////////////


module IIR_DW01_inc_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
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
  XOR2X1 U1 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
endmodule


module IIR_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54;
  wire   [25:0] carry;

  XOR3X1 U2_24 ( .A(A[24]), .B(n37), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n50), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n51), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n53), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n54), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n40), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n38), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n52), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_22 ( .A(A[22]), .B(n39), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n41), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n42), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n43), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n44), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n45), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n46), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n47), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n48), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n49), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  OAI22XL U1 ( .A0(n32), .A1(n36), .B0(B[1]), .B1(n33), .Y(n30) );
  CLKINVX1 U2 ( .A(B[12]), .Y(n49) );
  CLKINVX1 U3 ( .A(B[13]), .Y(n48) );
  CLKINVX1 U4 ( .A(B[14]), .Y(n47) );
  CLKINVX1 U5 ( .A(B[15]), .Y(n46) );
  CLKINVX1 U6 ( .A(B[16]), .Y(n45) );
  CLKINVX1 U7 ( .A(B[17]), .Y(n44) );
  CLKINVX1 U8 ( .A(B[18]), .Y(n43) );
  CLKINVX1 U9 ( .A(B[19]), .Y(n42) );
  CLKINVX1 U10 ( .A(B[20]), .Y(n41) );
  CLKINVX1 U11 ( .A(B[22]), .Y(n39) );
  NOR2X1 U12 ( .A(A[4]), .B(n26), .Y(n27) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n52) );
  CLKINVX1 U14 ( .A(B[23]), .Y(n38) );
  CLKINVX1 U15 ( .A(B[21]), .Y(n40) );
  OAI22XL U16 ( .A0(n28), .A1(n35), .B0(B[3]), .B1(n29), .Y(n26) );
  AND2X2 U17 ( .A(n28), .B(n35), .Y(n29) );
  AOI2BB2X1 U18 ( .B0(n30), .B1(A[2]), .A0N(B[2]), .A1N(n31), .Y(n28) );
  CLKINVX1 U19 ( .A(A[3]), .Y(n35) );
  OAI22XL U20 ( .A0(n24), .A1(n34), .B0(B[5]), .B1(n25), .Y(n23) );
  AND2X2 U21 ( .A(n24), .B(n34), .Y(n25) );
  AOI2BB2X1 U22 ( .B0(n26), .B1(A[4]), .A0N(B[4]), .A1N(n27), .Y(n24) );
  CLKINVX1 U23 ( .A(A[5]), .Y(n34) );
  NOR2X1 U24 ( .A(A[2]), .B(n30), .Y(n31) );
  CLKINVX1 U25 ( .A(B[7]), .Y(n54) );
  OAI2BB2XL U26 ( .B0(B[6]), .B1(n22), .A0N(n23), .A1N(A[6]), .Y(carry[7]) );
  NOR2X1 U27 ( .A(A[6]), .B(n23), .Y(n22) );
  CLKINVX1 U28 ( .A(B[8]), .Y(n53) );
  CLKINVX1 U29 ( .A(B[10]), .Y(n51) );
  CLKINVX1 U30 ( .A(B[11]), .Y(n50) );
  AND2X2 U31 ( .A(n32), .B(n36), .Y(n33) );
  NOR2BX1 U32 ( .AN(B[0]), .B(A[0]), .Y(n32) );
  CLKINVX1 U33 ( .A(A[1]), .Y(n36) );
  CLKINVX1 U34 ( .A(B[24]), .Y(n37) );
endmodule


module IIR_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n4) );
endmodule


module IIR_DW01_add_1 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n4) );
endmodule


module IIR_DW01_add_2 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n4) );
endmodule


module IIR_DW01_add_3 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  NOR2X1 U1 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(A[1]), .Y(n4) );
  XNOR2X1 U3 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_4 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n4) );
endmodule


module IIR_DW01_add_5 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  XNOR2X1 U1 ( .A(B[4]), .B(n4), .Y(SUM[4]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[4]), .Y(n4) );
endmodule


module IIR_DW01_add_6 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n3, n4;
  wire   [24:1] carry;
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n3) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(A[2]), .Y(n4) );
  XNOR2X1 U4 ( .A(B[1]), .B(n3), .Y(SUM[1]) );
endmodule


module IIR_DW01_add_8 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n4) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n3) );
endmodule


module IIR_DW01_add_9 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n4) );
endmodule


module IIR_DW01_add_11 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_12 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_13 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_14 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_15 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [25:0] carry;

  ADDFXL U2_20 ( .A(A[20]), .B(n38), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n37), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n34), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n33), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n32), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n31), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n29), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n28), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n27), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n50), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n49), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n48), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n51), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n45), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n46), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n44), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n43), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n40), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n42), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n39), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n36), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n35), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n30), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n41), .C(carry[24]), .Y(DIFF[24]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n41) );
  CLKINVX1 U2 ( .A(B[12]), .Y(n30) );
  CLKINVX1 U3 ( .A(B[17]), .Y(n35) );
  CLKINVX1 U4 ( .A(B[18]), .Y(n36) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n39) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n42) );
  XOR2X1 U7 ( .A(B[0]), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U8 ( .A(B[23]), .Y(n40) );
  CLKINVX1 U9 ( .A(B[1]), .Y(n43) );
  NAND2X1 U10 ( .A(B[0]), .B(n47), .Y(carry[1]) );
  CLKINVX1 U11 ( .A(A[0]), .Y(n47) );
  CLKINVX1 U12 ( .A(B[2]), .Y(n44) );
  CLKINVX1 U13 ( .A(B[3]), .Y(n46) );
  CLKINVX1 U14 ( .A(B[4]), .Y(n45) );
  CLKINVX1 U15 ( .A(B[5]), .Y(n51) );
  CLKINVX1 U16 ( .A(B[6]), .Y(n48) );
  CLKINVX1 U17 ( .A(B[7]), .Y(n49) );
  CLKINVX1 U18 ( .A(B[8]), .Y(n50) );
  CLKINVX1 U19 ( .A(B[9]), .Y(n27) );
  CLKINVX1 U20 ( .A(B[10]), .Y(n28) );
  CLKINVX1 U21 ( .A(B[11]), .Y(n29) );
  CLKINVX1 U22 ( .A(B[13]), .Y(n31) );
  CLKINVX1 U23 ( .A(B[14]), .Y(n32) );
  CLKINVX1 U24 ( .A(B[15]), .Y(n33) );
  CLKINVX1 U25 ( .A(B[16]), .Y(n34) );
  CLKINVX1 U26 ( .A(B[19]), .Y(n37) );
  CLKINVX1 U27 ( .A(B[20]), .Y(n38) );
endmodule


module IIR_DW01_add_17 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_18 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[4]), .B(n4), .Y(SUM[4]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[4]), .Y(n4) );
endmodule


module IIR_DW01_add_19 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[3]), .Y(n4) );
  XNOR2X1 U4 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_21 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[4]) );
  CLKINVX1 U3 ( .A(B[3]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[3]), .Y(n4) );
endmodule


module IIR_DW01_add_22 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[0] = B[0];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[1]), .B(n4), .Y(SUM[1]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_23 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n4) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_24 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[1] = A[2];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n4) );
  XNOR2X1 U2 ( .A(B[2]), .B(n4), .Y(SUM[2]) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[3]) );
  CLKINVX1 U4 ( .A(A[3]), .Y(n3) );
endmodule


module IIR_DW01_add_25 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CLKINVX1 U1 ( .A(B[7]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[7]), .B(n4), .Y(SUM[7]) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[8]) );
  CLKINVX1 U4 ( .A(A[7]), .Y(n4) );
endmodule


module IIR_DW01_add_28 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n3) );
  XNOR2X1 U3 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_29 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_30 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_31 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  NOR2X1 U1 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(A[1]), .Y(n4) );
  XNOR2X1 U3 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_33 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[6]), .Y(n4) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[7]) );
  CLKINVX1 U3 ( .A(B[6]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[6]), .B(n4), .Y(SUM[6]) );
endmodule


module IIR_DW01_add_35 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[3]), .Y(n4) );
endmodule


module IIR_DW01_add_36 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n3) );
  XNOR2X1 U3 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_37 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_38 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_39 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_40 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n4) );
endmodule


module IIR_DW01_add_41 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n3, n4;
  wire   [24:1] carry;
  assign \A[0]  = A[0];
  assign SUM[0] = \A[0] ;

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n4) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[1]), .B(n4), .Y(SUM[1]) );
endmodule


module IIR_DW01_add_42 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n4) );
  XNOR2X1 U2 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n3) );
endmodule


module IIR_DW01_add_43 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  NOR2X1 U1 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n4) );
  XNOR2X1 U3 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_44 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_45 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n4) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n3) );
endmodule


module IIR_DW01_add_46 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_47 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_48 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n3, n4;
  wire   [24:1] carry;
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];

  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n3) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(A[3]), .Y(n4) );
  XNOR2X1 U4 ( .A(B[1]), .B(n3), .Y(SUM[1]) );
endmodule


module IIR_DW01_add_49 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_50 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];
  assign SUM[9] = carry[9];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n4) );
  XNOR2X1 U4 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_51 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[3]), .Y(n4) );
endmodule


module IIR_DW01_add_52 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_53 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n4) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n3) );
endmodule


module IIR_DW01_add_54 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_55 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n3, n4;
  wire   [24:1] carry;
  assign SUM[1] = A[1];
  assign \A[0]  = A[0];
  assign SUM[0] = \A[0] ;

  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n4) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[2]), .B(n4), .Y(SUM[2]) );
endmodule


module IIR_DW01_add_56 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_57 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n4) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_58 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n4) );
endmodule


module IIR_DW01_add_59 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  NOR2X1 U1 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_60 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_61 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n4) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n3) );
endmodule


module IIR_DW01_add_62 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n3, n4;
  wire   [24:1] carry;
  assign SUM[1] = A[4];
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n3) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(A[5]), .Y(n4) );
  XNOR2X1 U4 ( .A(B[2]), .B(n3), .Y(SUM[2]) );
endmodule


module IIR_DW01_add_63 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];
  assign SUM[9] = carry[9];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n4) );
endmodule


module IIR_DW01_add_64 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_65 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[3]), .Y(n4) );
endmodule


module IIR_DW01_add_66 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n3) );
  XNOR2X1 U2 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n4) );
endmodule


module IIR_DW01_add_67 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_68 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n4) );
endmodule


module IIR_DW01_add_69 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n3, n4;
  wire   [22:1] carry;
  assign \A[0]  = A[0];
  assign SUM[0] = \A[0] ;

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n4) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[1]), .B(n4), .Y(SUM[1]) );
endmodule


module IIR_DW01_add_70 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR_DW01_add_71 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n3) );
  NOR2X1 U3 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module IIR_DW01_add_74 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n3), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n3), .B(n4), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[3]), .Y(n4) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n3) );
endmodule


module IIR ( clk, rst, load, DIn, RAddr, data_done, WEN, Yn, WAddr, Finish );
  input [15:0] DIn;
  output [19:0] RAddr;
  output [15:0] Yn;
  output [19:0] WAddr;
  input clk, rst, data_done;
  output load, WEN, Finish;
  wire   N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44,
         N45, N46, N47, N48, N49, N51, N52, N53, N54, N55, N56, N57, N58, N59,
         N60, N61, N62, N63, N64, N65, N71, N547, N548, N549, N550, N551, N552,
         N553, N554, N555, N556, N557, N558, N559, N560, N561, N562, N563,
         N564, N565, N568, N569, N570, N571, N572, N573, N574, N575, N576,
         N577, N578, N579, N580, N581, N582, N583, N584, N585, N586, N587,
         N588, N590, N623, N624, N625, N626, N627, N628, N629, N630, N631,
         N632, N633, N634, N635, N636, N637, N638, N639, N640, N645, N646,
         N647, N648, N649, N650, N651, N652, N653, N654, N655, N656, N657,
         N658, N659, N660, N661, N662, N663, N665, N720, N721, N722, N723,
         N724, N725, N726, N727, N728, N729, N730, N731, N732, N733, N734,
         N735, N736, N737, N738, N740, N791, N792, N793, N794, N795, N796,
         N797, N798, N799, N800, N801, N802, N803, N804, N805, N806, N807,
         N808, N809, N810, N811, N812, N813, N814, N815, N845, N846, N847,
         N848, N849, N850, N851, N852, N853, N854, N855, N856, N857, N858,
         N859, N860, N861, N862, N863, N864, N865, N870, N871, N872, N873,
         N874, N875, N876, N877, N878, N879, N880, N881, N882, N883, N884,
         N885, N886, N887, N888, N889, N890, N1916, N1917, N1918, N1919, N1920,
         N1921, N1922, N1923, N1924, N1925, N1926, N1927, N1928, N1929, N1930,
         N1931, N1932, N1933, N1935, N1936, N1937, N1938, N1939, N1940, N1941,
         N1942, N1943, N1944, N1945, N1946, N1947, N1948, N1949, N1950, N1951,
         N1952, N1953, \U3/U1/Z_0 , \U3/U1/Z_1 , \U3/U1/Z_2 , \U3/U1/Z_3 ,
         \U3/U1/Z_4 , \U3/U1/Z_5 , \U3/U1/Z_6 , \U3/U1/Z_7 , \U3/U1/Z_8 ,
         \U3/U1/Z_9 , \U3/U1/Z_10 , \U3/U1/Z_11 , \U3/U1/Z_12 , \U3/U1/Z_13 ,
         \U3/U1/Z_14 , \U3/U1/Z_15 , \U3/U1/Z_16 , \U3/U1/Z_17 , \U3/U1/Z_18 ,
         \U3/U1/Z_19 , n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n711,
         n768, n781, n784, n794, n1394, n1395, n1396, n1397, n1398, n1399,
         n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409,
         n1410, n1411, n1412, n1413, n1414, n1415, N999, N998, N997, N996,
         N995, N994, N993, N992, N991, N990, N99, N989, N988, N987, N986, N985,
         N984, N983, N982, N981, N980, N98, N979, N978, N977, N976, N975, N974,
         N973, N972, N971, N970, N97, N969, N968, N967, N966, N965, N964, N963,
         N962, N961, N960, N96, N959, N958, N957, N956, N955, N954, N953, N952,
         N951, N950, N95, N949, N948, N947, N946, N945, N944, N943, N942, N941,
         N940, N94, N939, N938, N937, N936, N935, N934, N933, N932, N931, N930,
         N93, N929, N928, N927, N926, N925, N924, N923, N922, N921, N920, N92,
         N919, N918, N917, N916, N915, N914, N913, N912, N911, N910, N91, N909,
         N908, N907, N906, N905, N904, N903, N902, N901, N900, N90, N899, N898,
         N897, N896, N895, N894, N893, N892, N891, N89, N88, N87, N86, N85,
         N840, N84, N839, N838, N837, N836, N835, N834, N833, N832, N831, N830,
         N83, N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N82,
         N819, N818, N817, N816, N81, N80, N790, N79, N789, N788, N787, N786,
         N785, N784, N783, N782, N781, N780, N78, N779, N778, N777, N776, N775,
         N774, N773, N772, N771, N770, N77, N769, N768, N767, N766, N765, N764,
         N763, N762, N761, N760, N76, N759, N758, N757, N756, N755, N754, N753,
         N752, N751, N750, N75, N749, N748, N747, N746, N745, N744, N743, N742,
         N741, N74, N73, N72, N715, N714, N713, N712, N711, N710, N709, N708,
         N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697,
         N696, N695, N694, N693, N692, N691, N690, N689, N688, N687, N686,
         N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675,
         N674, N673, N672, N671, N670, N669, N668, N667, N615, N614, N613,
         N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602,
         N601, N600, N599, N598, N597, N596, N595, N594, N593, N592, N591,
         N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530,
         N529, N528, N527, N526, N525, N524, N523, N522, N521, N520, N519,
         N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508,
         N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497,
         N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486,
         N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475,
         N474, N473, N472, N471, N470, N469, N468, N467, N466, N465, N464,
         N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453,
         N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, N442,
         N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431,
         N430, N429, N428, N427, N426, N425, N424, N423, N422, N421, N420,
         N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409,
         N408, N407, N406, N405, N404, N403, N402, N401, N400, N399, N398,
         N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387,
         N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376,
         N375, N374, N373, N372, N371, N370, N369, N368, N367, N366, N365,
         N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354,
         N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, N343,
         N342, N341, N340, N339, N338, N337, N336, N335, N334, N333, N332,
         N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321,
         N320, N319, N318, N317, N316, N315, N314, N313, N312, N311, N310,
         N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299,
         N298, N297, N296, N295, N294, N293, N292, N291, N290, N289, N288,
         N287, N286, N285, N284, N283, N282, N281, N280, N279, N278, N277,
         N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266,
         N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255,
         N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, N244,
         N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233,
         N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222,
         N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211,
         N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200,
         N199, N198, N197, N196, N195, N194, N193, N192, N1915, N1914, N1913,
         N1912, N1911, N1910, N191, N1909, N1908, N1907, N1906, N1905, N1904,
         N1903, N1902, N1901, N1900, N190, N1899, N1898, N1897, N1896, N1895,
         N1894, N1893, N1892, N1891, N1890, N189, N1889, N1888, N1887, N1886,
         N1885, N1884, N1883, N1882, N1881, N1880, N188, N1879, N1878, N1877,
         N1876, N1875, N1874, N1873, N1872, N1871, N1870, N187, N1869, N1868,
         N1867, N1866, N1865, N1864, N1863, N1862, N1861, N1860, N186, N1859,
         N1858, N1857, N1856, N1855, N1854, N1853, N1852, N1851, N1850, N185,
         N1849, N1848, N1847, N1846, N1845, N1844, N1843, N1842, N1841, N1840,
         N184, N1839, N1838, N1837, N1836, N1835, N1834, N1833, N1832, N1831,
         N1830, N183, N1829, N1828, N1827, N1826, N1825, N1824, N1823, N1822,
         N1821, N1820, N182, N1819, N1818, N1817, N1816, N1815, N1814, N1813,
         N1812, N1811, N1810, N181, N1809, N1808, N1807, N1806, N1805, N1804,
         N1803, N1802, N1801, N1800, N180, N1799, N1798, N1797, N1796, N1795,
         N1794, N1793, N1792, N1791, N1790, N179, N1789, N1788, N1787, N1786,
         N1785, N1784, N1783, N1782, N1781, N1780, N178, N1779, N1778, N1777,
         N1776, N1775, N1774, N1773, N1772, N1771, N1770, N177, N1769, N1768,
         N1767, N1766, N1765, N1764, N1763, N1762, N1761, N1760, N176, N1759,
         N1758, N1757, N1756, N1755, N1754, N1753, N1752, N1751, N1750, N175,
         N1749, N1748, N1747, N1746, N1745, N1744, N1743, N1742, N1741, N1740,
         N174, N1739, N1738, N1737, N1736, N1735, N1734, N1733, N1732, N1731,
         N1730, N173, N1729, N1728, N1727, N1726, N1725, N1724, N1723, N1722,
         N1721, N1720, N172, N1719, N1718, N1717, N1716, N1715, N1714, N1713,
         N1712, N1711, N1710, N171, N1709, N1708, N1707, N1706, N1705, N1704,
         N1703, N1702, N1701, N1700, N170, N1699, N1698, N1697, N1696, N1695,
         N1694, N1693, N1692, N1691, N1690, N169, N1689, N1688, N1687, N1686,
         N1685, N1684, N1683, N1682, N1681, N1680, N168, N1679, N1678, N1677,
         N1676, N1675, N1674, N1673, N1672, N1671, N1670, N167, N1669, N1668,
         N1667, N1666, N1665, N1664, N1663, N1662, N1661, N1660, N166, N1659,
         N1658, N1657, N1656, N1655, N1654, N1653, N1652, N1651, N1650, N165,
         N1649, N1648, N1647, N1646, N1645, N1644, N1643, N1642, N1641, N1640,
         N164, N1639, N1638, N1637, N1636, N1635, N1634, N1633, N1632, N1631,
         N1630, N163, N1629, N1628, N1627, N1626, N1625, N1624, N1623, N1622,
         N1621, N1620, N162, N1619, N1618, N1617, N1616, N1615, N1614, N1613,
         N1612, N1611, N1610, N161, N1609, N1608, N1607, N1606, N1605, N1604,
         N1603, N1602, N1601, N1600, N160, N1599, N1598, N1597, N1596, N1595,
         N1594, N1593, N1592, N1591, N1590, N159, N1589, N1588, N1587, N1586,
         N1585, N1584, N1583, N1582, N1581, N1580, N158, N1579, N1578, N1577,
         N1576, N1575, N1574, N1573, N1572, N1571, N1570, N157, N1569, N1568,
         N1567, N1566, N1565, N1564, N1563, N1562, N1561, N1560, N156, N1559,
         N1558, N1557, N1556, N1555, N1554, N1553, N1552, N1551, N1550, N155,
         N1549, N1548, N1547, N1546, N1545, N1544, N1543, N1542, N1541, N1540,
         N154, N1539, N1538, N1537, N1536, N1535, N1534, N1533, N1532, N1531,
         N1530, N153, N1529, N1528, N1527, N1526, N1525, N1524, N1523, N1522,
         N1521, N1520, N152, N1519, N1518, N1517, N1516, N1515, N1514, N1513,
         N1512, N1511, N1510, N151, N1509, N1508, N1507, N1506, N1505, N1504,
         N1503, N1502, N1501, N1500, N150, N1499, N1498, N1497, N1496, N1495,
         N1494, N1493, N1492, N1491, N1490, N149, N1489, N1488, N1487, N1486,
         N1485, N1484, N1483, N1482, N1481, N1480, N148, N1479, N1478, N1477,
         N1476, N1475, N1474, N1473, N1472, N1471, N1470, N147, N1469, N1468,
         N1467, N1466, N1465, N1464, N1463, N1462, N1461, N1460, N146, N1459,
         N1458, N1457, N1456, N1455, N1454, N1453, N1452, N1451, N1450, N145,
         N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, N1441, N1440,
         N144, N1439, N1438, N1437, N1436, N1435, N1434, N1433, N1432, N1431,
         N1430, N143, N1429, N1428, N1427, N1426, N1425, N1424, N1423, N1422,
         N1421, N1420, N142, N1419, N1418, N1417, N1416, N1415, N1414, N1413,
         N1412, N1411, N1410, N141, N1409, N1408, N1407, N1406, N1405, N1404,
         N1403, N1402, N1401, N1400, N140, N1399, N1398, N1397, N1396, N1395,
         N1394, N1393, N1392, N1391, N1390, N139, N1389, N1388, N1387, N1386,
         N1385, N1384, N1383, N1382, N1381, N1380, N138, N1379, N1378, N1377,
         N1376, N1375, N1374, N1373, N1372, N1371, N1370, N137, N1369, N1368,
         N1367, N1366, N1365, N1364, N1363, N1362, N1361, N1360, N136, N1359,
         N1358, N1357, N1356, N1355, N1354, N1353, N1352, N1351, N1350, N135,
         N1349, N1348, N1347, N1346, N1345, N1344, N1343, N1342, N1341, N1340,
         N134, N1339, N1338, N1337, N1336, N1335, N1334, N1333, N1332, N1331,
         N1330, N133, N1329, N1328, N1327, N1326, N1325, N1324, N1323, N1322,
         N1321, N1320, N132, N1319, N1318, N1317, N1316, N1315, N1314, N1313,
         N1312, N1311, N1310, N131, N1309, N1308, N1307, N1306, N1305, N1304,
         N1303, N1302, N1301, N1300, N130, N1299, N1298, N1297, N1296, N1295,
         N1294, N1290, N129, N1289, N1288, N1287, N1286, N1285, N1284, N1283,
         N1282, N1281, N1280, N128, N1279, N1278, N1277, N1276, N1275, N1274,
         N1273, N1272, N1271, N1270, N127, N1269, N1268, N1267, N1266, N1265,
         N1264, N1263, N1262, N1261, N1260, N126, N1259, N1258, N1257, N1256,
         N1255, N1254, N1253, N1252, N1251, N1250, N125, N1249, N1248, N1247,
         N1246, N1245, N1244, N1243, N1242, N1241, N1240, N124, N1239, N1238,
         N1237, N1236, N1235, N1234, N1233, N1232, N1231, N1230, N123, N1229,
         N1228, N1227, N1226, N1225, N1224, N1223, N1222, N1221, N1220, N122,
         N1219, N1218, N1217, N1216, N1215, N1214, N1213, N1212, N1211, N1210,
         N121, N1209, N1208, N1207, N1206, N1205, N1204, N1203, N1202, N1201,
         N1200, N120, N1199, N1198, N1197, N1196, N1195, N1194, N1193, N1192,
         N1191, N1190, N119, N1189, N1188, N1187, N1186, N1185, N1184, N1183,
         N1182, N1181, N1180, N118, N1179, N1178, N1177, N1176, N1175, N1174,
         N1173, N1172, N1171, N1170, N117, N1169, N1168, N1167, N1166, N1165,
         N1164, N1163, N1162, N1161, N1160, N116, N1159, N1158, N1157, N1156,
         N1155, N1154, N1153, N1152, N1151, N1150, N115, N1149, N1148, N1147,
         N1146, N1145, N1144, N1143, N1142, N1141, N1140, N114, N1139, N1138,
         N1137, N1136, N1135, N1134, N1133, N1132, N1131, N1130, N113, N1129,
         N1128, N1127, N1126, N1125, N1124, N1123, N1122, N1121, N1120, N112,
         N1119, N1118, N1117, N1116, N1115, N1114, N1113, N1112, N1111, N1110,
         N111, N1109, N1108, N1107, N1106, N1105, N1104, N1103, N1102, N1101,
         N1100, N110, N1099, N1098, N1097, N1096, N1095, N1094, N1093, N1092,
         N1091, N1090, N109, N1089, N1088, N1087, N1086, N1085, N1084, N1083,
         N1082, N1081, N1080, N108, N1079, N1078, N1077, N1076, N1075, N1074,
         N1073, N1072, N1071, N1070, N107, N1069, N1068, N1067, N1066, N1065,
         N1064, N1063, N1062, N1061, N1060, N106, N1059, N1058, N1057, N1056,
         N1055, N1054, N1053, N1052, N1051, N1050, N105, N1049, N1048, N1047,
         N1046, N1045, N1044, N1043, N1042, N1041, N1040, N104, N1039, N1038,
         N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N103, N1029,
         N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, N102,
         N1019, N1018, N1017, N1016, N1015, N1014, N1013, N1012, N1011, N1010,
         N101, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, N1001,
         N1000, N100, n1954, n1955, n1956, n1957, n1958, n1959, n1960, n1961,
         n1962, n1963, n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971,
         n1972, n1973, n1974, n1975, n1976, n1977, n1978, n1979, n1980, n1981,
         n1982, n1983, n1984, n1985, n1986, n1987, n1988, n1989, n1990, n1991,
         n1992, n1993, n1994, n1995, n1996, n1997, n1998, n1999, n2000, n2001,
         n2002, n2003, n2004, n2005, n2006, n2007, n2008, n2009, n2010, n2011,
         n2012, n2013, n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021,
         n2022, n2023, n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031,
         n2032, n2033, n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041,
         n2042, n2043, n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051,
         n2052, n2053, n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061,
         n2062, n2063, n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071,
         n2072, n2073, n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081,
         n2082, n2083, n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091,
         n2092, n2093, n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101,
         n2102, n2103, n2104, n2105, n2106, n2107, n2108, n2109, n2110, n2111,
         n2112, n2113, n2114, n2115, n2116, n2117, n2118, n2119, n2120, n2121,
         n2122, n2123, n2124, n2125, n2127, n2128, n2129, n2130, n2131, n2132,
         n2133, n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142,
         n2143, n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152,
         n2153, n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162,
         n2163, n2164, n2165, n2166, n2167, n2168, n2169, n2170, n2171, n2172,
         n2173, n2174, n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182,
         n2183, n2184, n2185, n2186, n2187, n2188, n2189, n2190, n2191, n2192,
         n2193, n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, n2202,
         n2203, n2204, n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212,
         n2213, n2214, n2215, n2216, n2217, n2218, n2219, n2220, n2221, n2222,
         n2223, n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, n2232,
         n2233, n2234, n2235, n2236, n2237, n2238, n2239, n2240, n2241, n2242,
         n2243, n2244, n2245, n2246, n2247, n2248, n2249, n2250, n2251, n2252,
         n2253, n2254, n2255, n2256, n2257, n2258, n2259, n2260, n2261, n2262,
         n2263, n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, n2272,
         n2273, n2274, n2275, n2276, n2277, n2278, n2279, n2280, n2281, n2282,
         n2283, n2284, n2285, n2286, n2287, n2288, n2289, n2290, n2291, n2292,
         n2293, n2294, n2295, n2296, n2297, n2298, n2299, n2300, n2301, n2302,
         n2303, n2304, n2305, n2306, n2307, n2308, n2309, n2310, n2311, n2312,
         n2313, n2314, n2315, n2316, n2317, n2318, n2319, n2320, n2321, n2322,
         n2323, n2324, n2325, n2326, n2327, n2328, n2329, n2330, n2331, n2332,
         n2333, n2334, n2335, n2336, n2337, n2338, n2339, n2340, n2341, n2342,
         n2343, n2344, n2345, n2346, n2347, n2348, n2349, n2350, n2351, n2352,
         n2353, n2354, n2355, n2356, n2357, n2358, n2359, n2360, n2361, n2362,
         n2363, n2364, n2365, n2366, n2367, n2368, n2369, n2370, n2371, n2372,
         n2373, n2374, n2375, n2376, n2377, n2378, n2379, n2380, n2381, n2382,
         n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390, n2391, n2392,
         n2393, n2394, n2395, n2396, n2397, n2398, n2399, n2400, n2401, n2402,
         n2403, n2404, n2405, n2406, n2407, n2408, n2409, n2410, n2411, n2412,
         n2413, n2414, n2415, n2416, n2417, n2418, n2419, n2420, n2421, n2422,
         n2423, n2424, n2425, n2426, n2427, n2428, n2429, n2430, n2431, n2432,
         n2433, n2434, n2435, n2436, n2437, n2438, n2439, n2440, n2441, n2442,
         n2443, n2444, n2445, n2446, n2447, n2448, n2449, n2450, n2451, n2452,
         n2453, n2454, n2455, n2456, n2457, n2458, n2459, n2460, n2461, n2462,
         n2463, n2464, n2465, n2466, n2467, n2468, n2469, n2470, n2471, n2472,
         n2473, n2474, n2475, n2476, n2477, n2478, n2479, n2480, n2481, n2482,
         n2483, n2484, n2485, n2486, n2487, n2488, n2489, n2490, n2491, n2492,
         n2493, n2494, n2495, n2496, n2497, n2498, n2499, n2500, n2501, n2502,
         n2503, n2504, n2505, n2506, n2507, n2508, n2509, n2510, n2511, n2512,
         n2513, n2514, n2515, n2516, n2517, n2518, n2519, n2520, n2521, n2522,
         n2523, n2524, n2525, n2526, n2527, n2528, n2529, n2530, n2531, n2532,
         n2533, n2534, n2535, n2536, n2537, n2538, n2539, n2540, n2541, n2542,
         n2543, n2544, n2545, n2546, n2547, n2548, n2549, n2550, n2551, n2552,
         n2553, n2554, n2555, n2556, n2557, n2558, n2559, n2560, n2561, n2562,
         n2563, n2564, n2565, n2566, n2567, n2568, n2569, n2570, n2571, n2572,
         n2573, n2574, n2575, n2576, n2577, n2578, n2579, n2580, n2581, n2582,
         n2583, n2584, n2585, n2586, n2587, n2588, n2589, n2590, n2591, n2592,
         n2593, n2594, n2595, n2596, n2597, n2598, n2599, n2600, n2601, n2602,
         n2603, n2604, n2605, n2606, n2607, n2608, n2609, n2610, n2611, n2612,
         n2613, n2614, n2615, n2616, n2617, n2618, n2619, n2620, n2621, n2622,
         n2623, n2624, n2625, n2626, n2627, n2628, n2629, n2630, n2631, n2632,
         n2633, n2634, n2635, n2636, n2637, n2638, n2639, n2640, n2641, n2642,
         n2643, n2644, n2645, n2646, n2647, n2648, n2649, n2650, n2651, n2652,
         n2653, n2655, n2656, n2657, n2658, n2659, n2660, n2661, n2662, n2663,
         n2664, n2665, n2666, n2667, n2668, n2669, n2670, n2671, n2672, n2673,
         n2674, n2675, n2676, n2677, n2678, n2679, n2680, n2681, n2682, n2683,
         n2684, n2685, n2686, n2687, n2688, n2689, n2690, n2691, n2692, n2693,
         n2694, n2695, n2696, n2697, n2698, n2699, n2700, n2701, n2702, n2703,
         n2704, n2705, n2706, n2707, n2708, n2709, n2710, n2711, n2712, n2713,
         n2714, n2715, n2716, n2717, n2718, n2719, n2720, n2721, n2722, n2723,
         n2724, n2725, n2726, n2727, n2728, n2729, n2730, n2731, n2732, n2733,
         n2734, n2735, n2736, n2737, n2738, n2739, n2740, n2741, n2742, n2743,
         n2744, n2745, n2746, n2747, n2748, n2749, n2750, n2751, n2752, n2753;
  wire   [24:5] s5;
  wire   [24:5] s4;
  wire   [24:5] s3;
  wire   [24:5] s2;
  wire   [24:6] s1;
  wire   [24:6] s0;
  wire   [24:0] ns4;
  wire   [24:0] ns3;
  wire   [24:0] ns2;
  wire   [24:0] ns1;
  wire   [24:2] ns0;
  wire   [2:0] state;
  wire   [24:7] sum;
  wire   [1:0] next_state;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11;
  assign load = next_state[0];

  IIR_DW01_inc_0 r927 ( .A({\U3/U1/Z_19 , \U3/U1/Z_18 , \U3/U1/Z_17 , 
        \U3/U1/Z_16 , \U3/U1/Z_15 , \U3/U1/Z_14 , \U3/U1/Z_13 , \U3/U1/Z_12 , 
        \U3/U1/Z_11 , \U3/U1/Z_10 , \U3/U1/Z_9 , \U3/U1/Z_8 , \U3/U1/Z_7 , 
        \U3/U1/Z_6 , \U3/U1/Z_5 , \U3/U1/Z_4 , \U3/U1/Z_3 , \U3/U1/Z_2 , 
        \U3/U1/Z_1 , \U3/U1/Z_0 }), .SUM({N1953, N1952, N1951, N1950, N1949, 
        N1948, N1947, N1946, N1945, N1944, N1943, N1942, N1941, N1940, N1939, 
        N1938, N1937, N1936, N1935, SYNOPSYS_UNCONNECTED__0}) );
  IIR_DW01_sub_0 sub_0_root_add_121_61 ( .A({N1915, N1914, N1913, N1912, N1911, 
        N1910, N1909, N1908, N1907, N1906, N1905, N1904, N1903, N1902, N1901, 
        N1900, N1899, N1898, N1897, N1896, N1895, N1894, N1893, N1892, N1891}), 
        .B({N1840, N1839, N1838, N1837, N1836, N1835, N1834, N1833, N1832, 
        N1831, N1830, N1829, N1828, N1827, N1826, N1825, N1824, N1823, N1822, 
        N1821, N1820, N1819, N1818, N1817, N1816}), .CI(1'b0), .DIFF({N1933, 
        N1932, N1931, N1930, N1929, N1928, N1927, N1926, N1925, N1924, N1923, 
        N1922, N1921, N1920, N1919, N1918, N1917, N1916, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7}) );
  IIR_DW01_add_0 add_4_root_add_121_61 ( .A({N1690, N1689, N1688, N1687, N1686, 
        N1685, N1684, N1683, N1682, N1681, N1680, N1679, N1678, N1677, N1676, 
        N1675, N1674, N1673, N1672, N1671, N1670, N1669, N1668, N1667, N1666}), 
        .B({N1715, N1714, N1713, N1712, N1711, N1710, N1709, N1708, N1707, 
        N1706, N1705, N1704, N1703, N1702, N1701, N1700, N1699, N1698, N1697, 
        N1696, N1695, N1694, N1693, N1692, N1691}), .CI(1'b0), .SUM({N1840, 
        N1839, N1838, N1837, N1836, N1835, N1834, N1833, N1832, N1831, N1830, 
        N1829, N1828, N1827, N1826, N1825, N1824, N1823, N1822, N1821, N1820, 
        N1819, N1818, N1817, N1816}) );
  IIR_DW01_add_1 add_9_root_add_121_61 ( .A({N1440, N1439, N1438, N1437, N1436, 
        N1435, N1434, N1433, N1432, N1431, N1430, N1429, N1428, N1427, N1426, 
        N1425, N1424, N1423, N1422, N1421, N1420, N1419, N1418, N1417, N1416}), 
        .B({N1465, N1464, N1463, N1462, N1461, N1460, N1459, N1458, N1457, 
        N1456, N1455, N1454, N1453, N1452, N1451, N1450, N1449, N1448, N1447, 
        N1446, N1445, N1444, N1443, N1442, N1441}), .CI(1'b0), .SUM({N1715, 
        N1714, N1713, N1712, N1711, N1710, N1709, N1708, N1707, N1706, N1705, 
        N1704, N1703, N1702, N1701, N1700, N1699, N1698, N1697, N1696, N1695, 
        N1694, N1693, N1692, N1691}) );
  IIR_DW01_add_2 add_19_root_add_121_61 ( .A({N940, N939, N938, N937, N936, 
        N935, N934, N933, N932, N931, N930, N929, N928, N927, N926, N925, N924, 
        N923, N922, N921, N920, N919, N918, N917, N916}), .B({N965, N964, N963, 
        N962, N961, N960, N959, N958, N957, N956, N955, N954, N953, N952, N951, 
        N950, N949, N948, N947, N946, N945, N944, N943, N942, N941}), .CI(1'b0), .SUM({N1465, N1464, N1463, N1462, N1461, N1460, N1459, N1458, N1457, N1456, 
        N1455, N1454, N1453, N1452, N1451, N1450, N1449, N1448, N1447, N1446, 
        N1445, N1444, N1443, N1442, N1441}) );
  IIR_DW01_add_3 add_39_root_add_121_61 ( .A({n2678, n2678, n2678, n2678, 
        n2678, n2678, n2678, n2678, n2678, n2678, n2678, n2678, n2574, n2566, 
        n2570, n2572, n2567, n2571, n2573, n2568, n2576, n2575, n2569, n2577, 
        ns1[11]}), .B({n2678, n2674, n2674, n2674, n2674, n2674, n2674, n2674, 
        n2674, n2674, n2674, n2674, n2674, n2574, n2566, n2570, n2572, n2567, 
        n2571, n2573, n2568, n2576, n2575, n2569, n2577}), .CI(1'b0), .SUM({
        N965, N964, N963, N962, N961, N960, N959, N958, N957, N956, N955, N954, 
        N953, N952, N951, N950, N949, N948, N947, N946, N945, N944, N943, N942, 
        N941}) );
  IIR_DW01_add_4 add_40_root_add_121_61 ( .A({n2678, n2678, n2678, n2678, 
        n2678, n2678, n2678, n2678, n2678, n2574, n2566, n2570, n2572, n2567, 
        n2571, n2573, n2568, n2576, n2575, n2569, n2577, ns1[11], n2578, n2610, 
        N871}), .B({n2678, n2675, n2675, n2675, n2675, n2675, n2675, n2675, 
        n2675, n2675, n2675, n2574, n2566, n2570, n2572, n2567, n2571, n2573, 
        n2568, n2576, n2575, n2569, n2577, ns1[11], n2578}), .CI(1'b0), .SUM({
        N940, N939, N938, N937, N936, N935, N934, N933, N932, N931, N930, N929, 
        N928, N927, N926, N925, N924, N923, N922, N921, N920, N919, N918, N917, 
        N916}) );
  IIR_DW01_add_5 add_20_root_add_121_61 ( .A({n2678, N889, N888, N887, N886, 
        N885, N884, N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, 
        N873, N872, N871, N870, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N915, N914, N913, 
        N912, N911, N910, N909, N908, N907, N906, N905, N904, N903, N902, N901, 
        N900, N899, N898, N897, N896, N895, N894, N893, N892, N891}), .CI(1'b0), .SUM({N1440, N1439, N1438, N1437, N1436, N1435, N1434, N1433, N1432, N1431, 
        N1430, N1429, N1428, N1427, N1426, N1425, N1424, N1423, N1422, N1421, 
        N1420, N1419, N1418, N1417, N1416}) );
  IIR_DW01_add_6 add_41_root_add_121_61 ( .A({n2678, n2677, n2678, n2677, 
        n2677, n2677, n2677, n2574, n2566, n2570, n2572, n2567, n2571, n2573, 
        n2568, n2576, n2575, n2569, n2577, ns1[11], n2578, n2610, N871, N870, 
        1'b0}), .B({n2678, n2675, n2675, n2675, n2676, n2676, n2676, n2676, 
        n2574, n2566, n2570, n2572, n2567, n2571, n2573, n2568, n2576, n2575, 
        n2569, n2577, ns1[11], n2578, n2610, N871, N870}), .CI(1'b0), .SUM({
        N915, N914, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904, 
        N903, N902, N901, N900, N899, N898, N897, N896, N895, N894, N893, N892, 
        N891}) );
  IIR_DW01_add_8 add_10_root_add_121_61 ( .A({N990, N989, N988, N987, N986, 
        N985, N984, N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, 
        N973, N972, N971, N970, N969, N968, N967, N966}), .B({N1415, N1414, 
        N1413, N1412, N1411, N1410, N1409, N1408, N1407, N1406, N1405, N1404, 
        N1403, N1402, N1401, N1400, N1399, N1398, N1397, N1396, N1395, N1394, 
        N1393, N1392, N1391}), .CI(1'b0), .SUM({N1690, N1689, N1688, N1687, 
        N1686, N1685, N1684, N1683, N1682, N1681, N1680, N1679, N1678, N1677, 
        N1676, N1675, N1674, N1673, N1672, N1671, N1670, N1669, N1668, N1667, 
        N1666}) );
  IIR_DW01_add_9 add_21_root_add_121_61 ( .A({N840, N839, N838, N837, N836, 
        N835, N834, N833, N832, N831, N830, N829, N828, N827, N826, N825, N824, 
        N823, N822, N821, N820, N819, N818, N817, N816}), .B({N865, N864, N863, 
        N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, 
        N850, N849, N848, N847, N846, N845, N799, N798, N797, N796}), .CI(1'b0), .SUM({N1415, N1414, N1413, N1412, N1411, N1410, N1409, N1408, N1407, N1406, 
        N1405, N1404, N1403, N1402, N1401, N1400, N1399, N1398, N1397, N1396, 
        N1395, N1394, N1393, N1392, N1391}) );
  IIR_DW01_add_11 add_44_root_add_121_61 ( .A({ns3[24], n2698, n2698, n2698, 
        n2698, ns3[24], ns3[24], ns3[24], ns3[24], ns3[24:20], n2614, N847, 
        N846, N845, N799, N798, N797, N796, N795, N794, N793}), .B({ns3[24], 
        ns3[24], ns3[24], ns3[24], ns3[24], ns3[24], ns3[24], ns3[24], ns3[24], 
        ns3[24], n2698, ns3[23:20], n2614, N847, N846, N845, N799, N798, N797, 
        N796, N795, N794}), .CI(1'b0), .SUM({N840, N839, N838, N837, N836, 
        N835, N834, N833, N832, N831, N830, N829, N828, N827, N826, N825, N824, 
        N823, N822, N821, N820, N819, N818, N817, N816}) );
  IIR_DW01_add_12 add_1_root_add_121_61 ( .A({N1865, N1864, N1863, N1862, 
        N1861, N1860, N1859, N1858, N1857, N1856, N1855, N1854, N1853, N1852, 
        N1851, N1850, N1849, N1848, N1847, N1846, N1845, N1844, N1843, N1842, 
        N1841}), .B({N1890, N1889, N1888, N1887, N1886, N1885, N1884, N1883, 
        N1882, N1881, N1880, N1879, N1878, N1877, N1876, N1875, N1874, N1873, 
        N1872, N1871, N1870, N1869, N1868, N1867, N1866}), .CI(1'b0), .SUM({
        N1915, N1914, N1913, N1912, N1911, N1910, N1909, N1908, N1907, N1906, 
        N1905, N1904, N1903, N1902, N1901, N1900, N1899, N1898, N1897, N1896, 
        N1895, N1894, N1893, N1892, N1891}) );
  IIR_DW01_add_13 add_2_root_add_121_61 ( .A({N1790, N1789, N1788, N1787, 
        N1786, N1785, N1784, N1783, N1782, N1781, N1780, N1779, N1778, N1777, 
        N1776, N1775, N1774, N1773, N1772, N1771, N1770, N1769, N1768, N1767, 
        N1766}), .B({N1815, N1814, N1813, N1812, N1811, N1810, N1809, N1808, 
        N1807, N1806, N1805, N1804, N1803, N1802, N1801, N1800, N1799, N1798, 
        N1797, N1796, N1795, N1794, N1793, N1792, N1791}), .CI(1'b0), .SUM({
        N1890, N1889, N1888, N1887, N1886, N1885, N1884, N1883, N1882, N1881, 
        N1880, N1879, N1878, N1877, N1876, N1875, N1874, N1873, N1872, N1871, 
        N1870, N1869, N1868, N1867, N1866}) );
  IIR_DW01_add_14 add_5_root_add_121_61 ( .A({N1640, N1639, N1638, N1637, 
        N1636, N1635, N1634, N1633, N1632, N1631, N1630, N1629, N1628, N1627, 
        N1626, N1625, N1624, N1623, N1622, N1621, N1620, N1619, N1618, N1617, 
        N1616}), .B({N1665, N1664, N1663, N1662, N1661, N1660, N1659, N1658, 
        N1657, N1656, N1655, N1654, N1653, N1652, N1651, N1650, N1649, N1648, 
        N1647, N1646, N1645, N1644, N1643, N1642, N1641}), .CI(1'b0), .SUM({
        N1815, N1814, N1813, N1812, N1811, N1810, N1809, N1808, N1807, N1806, 
        N1805, N1804, N1803, N1802, N1801, N1800, N1799, N1798, N1797, N1796, 
        N1795, N1794, N1793, N1792, N1791}) );
  IIR_DW01_add_15 add_11_root_add_121_61 ( .A({N1365, N1364, N1363, N1362, 
        N1361, N1360, N1359, N1358, N1357, N1356, N1355, N1354, N1353, N1352, 
        N1351, N1350, N1349, N1348, N1347, N1346, N1345, N1344, N1343, N1342, 
        N1341}), .B({N1390, N1389, N1388, N1387, N1386, N1385, N1384, N1383, 
        N1382, N1381, N1380, N1379, N1378, N1377, N1376, N1375, N1374, N1373, 
        N1372, N1371, N1370, N1369, N1368, N1367, N1366}), .CI(1'b0), .SUM({
        N1665, N1664, N1663, N1662, N1661, N1660, N1659, N1658, N1657, N1656, 
        N1655, N1654, N1653, N1652, N1651, N1650, N1649, N1648, N1647, N1646, 
        N1645, N1644, N1643, N1642, N1641}) );
  IIR_DW01_sub_1 sub_22_root_add_121_61 ( .A({N790, N789, N788, N787, N786, 
        N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, 
        N773, N772, N771, N770, N769, N768, N767, N766}), .B({N815, N814, N813, 
        N812, N811, N810, N809, N808, N807, N806, N805, N804, N803, N802, N801, 
        N800, N799, N798, N797, N796, N795, N794, N793, N792, N791}), .CI(1'b0), .DIFF({N1390, N1389, N1388, N1387, N1386, N1385, N1384, N1383, N1382, N1381, 
        N1380, N1379, N1378, N1377, N1376, N1375, N1374, N1373, N1372, N1371, 
        N1370, N1369, N1368, N1367, N1366}) );
  IIR_DW01_add_17 add_46_root_add_121_61 ( .A({n2681, n2681, n2681, n2681, 
        n2681, n2681, n2681, n2681, n2681, n2681, n2681, n2681, n2681, n2681, 
        ns0[23], n2591, ns0[21], n2589, ns0[19:18], n2590, ns0[16:13]}), .B({
        n2681, n2679, n2679, n2679, n2679, n2679, n2679, n2679, n2679, n2679, 
        n2679, n2679, n2679, n2680, n2680, ns0[23], n2591, ns0[21], n2589, 
        ns0[19:18], n2590, ns0[16:14]}), .CI(1'b0), .SUM({N790, N789, N788, 
        N787, N786, N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, 
        N775, N774, N773, N772, N771, N770, N769, N768, N767, N766}) );
  IIR_DW01_add_18 add_23_root_add_121_61 ( .A({n2681, n2681, N738, N737, N736, 
        N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, 
        N723, N722, N721, N720, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N765, N764, N763, 
        N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, N752, N751, 
        N750, N749, N748, N747, N746, N745, N744, N743, N742, N741}), .CI(1'b0), .SUM({N1365, N1364, N1363, N1362, N1361, N1360, N1359, N1358, N1357, N1356, 
        N1355, N1354, N1353, N1352, N1351, N1350, N1349, N1348, N1347, N1346, 
        N1345, N1344, N1343, N1342, N1341}) );
  IIR_DW01_add_19 add_47_root_add_121_61 ( .A({n2681, n2681, n2681, n2680, 
        n2681, n2681, n2681, n2681, n2681, ns0[23], n2591, ns0[21], n2589, 
        ns0[19:18], n2590, ns0[16:8]}), .B({n2681, n2680, n2680, n2680, n2680, 
        n2680, n2680, n2680, n2680, n2680, n2680, n2679, ns0[23], n2591, 
        ns0[21], n2589, ns0[19:18], n2590, ns0[16:11]}), .CI(1'b0), .SUM({N765, 
        N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753, 
        N752, N751, N750, N749, N748, N747, N746, N745, N744, N743, N742, N741}) );
  IIR_DW01_add_21 add_12_root_add_121_61 ( .A({N1315, N1314, N1313, N1312, 
        N1311, N1310, N1309, N1308, N1307, N1306, N1305, N1304, N1303, N1302, 
        N1301, N1300, N1299, N1298, N1297, N1296, N1295, N1294, 1'b0, 1'b0, 
        1'b0}), .B({N1340, N1339, N1338, N1337, N1336, N1335, N1334, N1333, 
        N1332, N1331, N1330, N1329, N1328, N1327, N1326, N1325, N1324, N1323, 
        N1322, N1321, N1320, N1319, N1318, N1317, N1316}), .CI(1'b0), .SUM({
        N1640, N1639, N1638, N1637, N1636, N1635, N1634, N1633, N1632, N1631, 
        N1630, N1629, N1628, N1627, N1626, N1625, N1624, N1623, N1622, N1621, 
        N1620, N1619, N1618, N1617, N1616}) );
  IIR_DW01_add_22 add_24_root_add_121_61 ( .A({N690, N689, N688, N687, N686, 
        N685, N684, N683, N682, N681, N680, N679, N678, N677, N676, N675, N674, 
        N673, N672, N671, N670, N669, N668, N667, 1'b0}), .B({N715, N714, N713, 
        N712, N711, N710, N709, N708, N707, N706, N705, N704, N703, N702, N701, 
        N700, N699, N698, N697, N696, N695, N694, N693, N692, N691}), .CI(1'b0), .SUM({N1340, N1339, N1338, N1337, N1336, N1335, N1334, N1333, N1332, N1331, 
        N1330, N1329, N1328, N1327, N1326, N1325, N1324, N1323, N1322, N1321, 
        N1320, N1319, N1318, N1317, N1316}) );
  IIR_DW01_add_23 add_49_root_add_121_61 ( .A({n2683, n2683, n2683, n2683, 
        n2683, n2683, n2683, n2683, ns2[23], n2582, n2580, n2579, n2581, n2592, 
        n2587, n2583, n2593, n2588, n2584, n2594, n2586, n2585, n2595, N645, 
        N623}), .B({n2683, n2682, n2682, n2682, n2682, n2682, n2682, n2682, 
        n2682, ns2[23], n2582, n2580, n2579, n2581, n2592, n2587, n2583, n2593, 
        n2588, n2584, n2594, n2586, n2585, n2595, N645}), .CI(1'b0), .SUM({
        N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, 
        N703, N702, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692, 
        N691}) );
  IIR_DW01_add_24 add_50_root_add_121_61 ( .A({n2683, n2683, n2683, n2683, 
        n2683, n2683, ns2[23], n2582, n2580, n2579, n2581, n2592, n2587, n2583, 
        n2593, n2588, n2584, n2594, n2586, n2585, n2595, N645, N623, 1'b0, 
        1'b0}), .B({n2683, n2682, n2683, n2682, n2682, n2682, n2683, ns2[23], 
        n2582, n2580, n2579, n2581, n2592, n2587, n2583, n2593, n2588, n2584, 
        n2594, n2586, n2585, n2595, N645, N623, 1'b0}), .CI(1'b0), .SUM({N690, 
        N689, N688, N687, N686, N685, N684, N683, N682, N681, N680, N679, N678, 
        N677, N676, N675, N674, N673, N672, N671, N670, N669, N668, N667, 
        SYNOPSYS_UNCONNECTED__8}) );
  IIR_DW01_add_25 add_25_root_add_121_61 ( .A({N640, N639, N638, N637, N636, 
        N635, N634, N633, N632, N631, N630, N629, N628, N627, N626, N625, N624, 
        N623, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n2683, n2682, 
        N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, 
        N651, N650, N649, N648, N647, N646, N645, N623, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({N1315, N1314, N1313, N1312, N1311, N1310, N1309, 
        N1308, N1307, N1306, N1305, N1304, N1303, N1302, N1301, N1300, N1299, 
        N1298, N1297, N1296, N1295, N1294, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  IIR_DW01_add_28 add_6_root_add_121_61 ( .A({N1590, N1589, N1588, N1587, 
        N1586, N1585, N1584, N1583, N1582, N1581, N1580, N1579, N1578, N1577, 
        N1576, N1575, N1574, N1573, N1572, N1571, N1570, N1569, N1568, N1567, 
        N1566}), .B({N1615, N1614, N1613, N1612, N1611, N1610, N1609, N1608, 
        N1607, N1606, N1605, N1604, N1603, N1602, N1601, N1600, N1599, N1598, 
        N1597, N1596, N1595, N1594, N1593, N1592, N1591}), .CI(1'b0), .SUM({
        N1790, N1789, N1788, N1787, N1786, N1785, N1784, N1783, N1782, N1781, 
        N1780, N1779, N1778, N1777, N1776, N1775, N1774, N1773, N1772, N1771, 
        N1770, N1769, N1768, N1767, N1766}) );
  IIR_DW01_add_29 add_13_root_add_121_61 ( .A({N1265, N1264, N1263, N1262, 
        N1261, N1260, N1259, N1258, N1257, N1256, N1255, N1254, N1253, N1252, 
        N1251, N1250, N1249, N1248, N1247, N1246, N1245, N1244, N1243, N1242, 
        N1241}), .B({N1290, N1289, N1288, N1287, N1286, N1285, N1284, N1283, 
        N1282, N1281, N1280, N1279, N1278, N1277, N1276, N1275, N1274, N1273, 
        N1272, N1271, N1270, N1269, N1268, N1267, N1266}), .CI(1'b0), .SUM({
        N1615, N1614, N1613, N1612, N1611, N1610, N1609, N1608, N1607, N1606, 
        N1605, N1604, N1603, N1602, N1601, N1600, N1599, N1598, N1597, N1596, 
        N1595, N1594, N1593, N1592, N1591}) );
  IIR_DW01_add_30 add_26_root_add_121_61 ( .A({n2685, n2685, N588, N587, N586, 
        N585, N584, N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, 
        N573, N572, N571, N570, N569, N568, N548, N547}), .B({N615, N614, N613, 
        N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601, 
        N600, N599, N598, N597, N596, N595, N594, N593, N592, N591}), .CI(1'b0), .SUM({N1290, N1289, N1288, N1287, N1286, N1285, N1284, N1283, N1282, N1281, 
        N1280, N1279, N1278, N1277, N1276, N1275, N1274, N1273, N1272, N1271, 
        N1270, N1269, N1268, N1267, N1266}) );
  IIR_DW01_add_31 add_53_root_add_121_61 ( .A({n2685, n2685, n2685, n2685, 
        n2685, n2685, n2685, n2685, n2685, n2685, n2685, n2685, n2685, n2685, 
        ns4[23], n2608, n2601, n2613, ns4[19], n2603, n2612, n2611, n2607, 
        n2606, n2615}), .B({n2685, n2685, n2684, n2684, n2684, n2684, n2684, 
        n2684, n2684, n2684, n2684, n2684, n2684, n2684, n2684, ns4[23], n2608, 
        n2601, n2613, ns4[19], n2603, n2612, n2611, n2607, n2606}), .CI(1'b0), 
        .SUM({N615, N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, 
        N604, N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593, 
        N592, N591}) );
  IIR_DW01_add_33 add_27_root_add_121_61 ( .A({N540, N539, N538, N537, N536, 
        N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, 
        N523, N522, N521, N520, N519, N518, N517, N516}), .B({N565, N564, N563, 
        N562, N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, N551, 
        N550, N549, N548, N547, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N1265, N1264, N1263, N1262, N1261, N1260, N1259, N1258, N1257, N1256, 
        N1255, N1254, N1253, N1252, N1251, N1250, N1249, N1248, N1247, N1246, 
        N1245, N1244, N1243, N1242, N1241}) );
  IIR_DW01_add_35 add_56_root_add_121_61 ( .A({n2703, n2702, n2702, n2702, 
        n2702, n2702, n2702, n2702, n2702, n2702, n2702, n2702, n2702, n2702, 
        s0[23:13]}), .B({n2703, n2701, n2701, n2702, n2701, n2700, n2700, 
        n2702, n2701, n2702, n2701, n2701, n2701, n2700, n2702, n2701, n2702, 
        s0[23:16]}), .CI(1'b0), .SUM({N540, N539, N538, N537, N536, N535, N534, 
        N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, N523, N522, 
        N521, N520, N519, N518, N517, N516}) );
  IIR_DW01_add_36 add_14_root_add_121_61 ( .A({N1215, N1214, N1213, N1212, 
        N1211, N1210, N1209, N1208, N1207, N1206, N1205, N1204, N1203, N1202, 
        N1201, N1200, N1199, N1198, N1197, N1196, N1195, N1194, N1193, N1192, 
        N1191}), .B({N1240, N1239, N1238, N1237, N1236, N1235, N1234, N1233, 
        N1232, N1231, N1230, N1229, N1228, N1227, N1226, N1225, N1224, N1223, 
        N1222, N1221, N1220, N1219, N1218, N1217, N1216}), .CI(1'b0), .SUM({
        N1590, N1589, N1588, N1587, N1586, N1585, N1584, N1583, N1582, N1581, 
        N1580, N1579, N1578, N1577, N1576, N1575, N1574, N1573, N1572, N1571, 
        N1570, N1569, N1568, N1567, N1566}) );
  IIR_DW01_add_37 add_28_root_add_121_61 ( .A({N490, N489, N488, N487, N486, 
        N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, 
        N473, N472, N471, N470, N469, N468, N467, N466}), .B({N515, N514, N513, 
        N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, N501, 
        N500, N499, N498, N497, N496, N495, N494, N493, N492, N491}), .CI(1'b0), .SUM({N1240, N1239, N1238, N1237, N1236, N1235, N1234, N1233, N1232, N1231, 
        N1230, N1229, N1228, N1227, N1226, N1225, N1224, N1223, N1222, N1221, 
        N1220, N1219, N1218, N1217, N1216}) );
  IIR_DW01_add_38 add_57_root_add_121_61 ( .A({n2703, n2702, n2702, n2703, 
        n2703, n2702, n2703, n2703, n2703, n2703, n2703, n2703, s0[23:11]}), 
        .B({n2703, n2701, n2701, n2701, n2700, n2701, n2700, n2701, n2700, 
        n2699, n2700, n2700, n2700, s0[23:12]}), .CI(1'b0), .SUM({N515, N514, 
        N513, N512, N511, N510, N509, N508, N507, N506, N505, N504, N503, N502, 
        N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, N491}) );
  IIR_DW01_add_39 add_58_root_add_121_61 ( .A({n2703, n2703, n2703, n2703, 
        n2703, n2703, n2703, n2703, n2703, n2703, s0[23:9]}), .B({n2703, n2700, 
        n2700, n2700, n2700, n2699, n2699, n2699, n2699, n2699, n2699, 
        s0[23:10]}), .CI(1'b0), .SUM({N490, N489, N488, N487, N486, N485, N484, 
        N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, 
        N471, N470, N469, N468, N467, N466}) );
  IIR_DW01_add_40 add_29_root_add_121_61 ( .A({N440, N439, N438, N437, N436, 
        N435, N434, N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, 
        N423, N422, N421, N420, N419, N418, N417, N416}), .B({N465, N464, N463, 
        N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, 
        N450, N449, N448, N447, N446, N445, N444, N443, N442, N441}), .CI(1'b0), .SUM({N1215, N1214, N1213, N1212, N1211, N1210, N1209, N1208, N1207, N1206, 
        N1205, N1204, N1203, N1202, N1201, N1200, N1199, N1198, N1197, N1196, 
        N1195, N1194, N1193, N1192, N1191}) );
  IIR_DW01_add_41 add_59_root_add_121_61 ( .A({s1[24], s1[24], n2705, n2704, 
        n2704, n2705, n2704, n2704, n2705, n2704, n2705, n2705, n2705, n2705, 
        n2705, n2705, n2705, s1[23:16]}), .B({n2702, n2699, n2699, n2699, 
        n2699, n2699, n2699, s0[23:7], 1'b0}), .CI(1'b0), .SUM({N465, N464, 
        N463, N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452, 
        N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441}) );
  IIR_DW01_add_42 add_60_root_add_121_61 ( .A({n2704, n2705, n2705, n2705, 
        n2705, n2705, n2705, n2705, n2705, n2705, n2705, n2705, n2705, n2705, 
        n2705, s1[23:14]}), .B({n2704, s1[24], s1[24], n2704, n2704, n2704, 
        n2704, n2704, n2704, n2704, n2704, n2704, n2704, n2704, n2704, n2704, 
        s1[23:15]}), .CI(1'b0), .SUM({N440, N439, N438, N437, N436, N435, N434, 
        N433, N432, N431, N430, N429, N428, N427, N426, N425, N424, N423, N422, 
        N421, N420, N419, N418, N417, N416}) );
  IIR_DW01_add_43 add_3_root_add_121_61 ( .A({N1740, N1739, N1738, N1737, 
        N1736, N1735, N1734, N1733, N1732, N1731, N1730, N1729, N1728, N1727, 
        N1726, N1725, N1724, N1723, N1722, N1721, N1720, N1719, N1718, N1717, 
        N1716}), .B({N1765, N1764, N1763, N1762, N1761, N1760, N1759, N1758, 
        N1757, N1756, N1755, N1754, N1753, N1752, N1751, N1750, N1749, N1748, 
        N1747, N1746, N1745, N1744, N1743, N1742, N1741}), .CI(1'b0), .SUM({
        N1865, N1864, N1863, N1862, N1861, N1860, N1859, N1858, N1857, N1856, 
        N1855, N1854, N1853, N1852, N1851, N1850, N1849, N1848, N1847, N1846, 
        N1845, N1844, N1843, N1842, N1841}) );
  IIR_DW01_add_44 add_7_root_add_121_61 ( .A({N1540, N1539, N1538, N1537, 
        N1536, N1535, N1534, N1533, N1532, N1531, N1530, N1529, N1528, N1527, 
        N1526, N1525, N1524, N1523, N1522, N1521, N1520, N1519, N1518, N1517, 
        N1516}), .B({N1565, N1564, N1563, N1562, N1561, N1560, N1559, N1558, 
        N1557, N1556, N1555, N1554, N1553, N1552, N1551, N1550, N1549, N1548, 
        N1547, N1546, N1545, N1544, N1543, N1542, N1541}), .CI(1'b0), .SUM({
        N1765, N1764, N1763, N1762, N1761, N1760, N1759, N1758, N1757, N1756, 
        N1755, N1754, N1753, N1752, N1751, N1750, N1749, N1748, N1747, N1746, 
        N1745, N1744, N1743, N1742, N1741}) );
  IIR_DW01_add_45 add_15_root_add_121_61 ( .A({N1165, N1164, N1163, N1162, 
        N1161, N1160, N1159, N1158, N1157, N1156, N1155, N1154, N1153, N1152, 
        N1151, N1150, N1149, N1148, N1147, N1146, N1145, N1144, N1143, N1142, 
        N1141}), .B({N1190, N1189, N1188, N1187, N1186, N1185, N1184, N1183, 
        N1182, N1181, N1180, N1179, N1178, N1177, N1176, N1175, N1174, N1173, 
        N1172, N1171, N1170, N1169, N1168, N1167, N1166}), .CI(1'b0), .SUM({
        N1565, N1564, N1563, N1562, N1561, N1560, N1559, N1558, N1557, N1556, 
        N1555, N1554, N1553, N1552, N1551, N1550, N1549, N1548, N1547, N1546, 
        N1545, N1544, N1543, N1542, N1541}) );
  IIR_DW01_add_46 add_30_root_add_121_61 ( .A({N390, N389, N388, N387, N386, 
        N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375, N374, 
        N373, N372, N371, N370, N369, N368, N367, N366}), .B({N415, N414, N413, 
        N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, 
        N400, N399, N398, N397, N396, N395, N394, N393, N392, N391}), .CI(1'b0), .SUM({N1190, N1189, N1188, N1187, N1186, N1185, N1184, N1183, N1182, N1181, 
        N1180, N1179, N1178, N1177, N1176, N1175, N1174, N1173, N1172, N1171, 
        N1170, N1169, N1168, N1167, N1166}) );
  IIR_DW01_add_47 add_61_root_add_121_61 ( .A({n2704, s1[24], s1[24], n2704, 
        n2705, n2704, n2704, n2704, n2704, n2704, n2704, s1[23:10]}), .B({
        n2704, n2704, n2704, n2704, n2704, n2704, n2704, n2704, n2704, n2704, 
        n2704, n2704, s1[23:11]}), .CI(1'b0), .SUM({N415, N414, N413, N412, 
        N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, 
        N399, N398, N397, N396, N395, N394, N393, N392, N391}) );
  IIR_DW01_add_48 add_62_root_add_121_61 ( .A({n2704, n2705, n2705, n2705, 
        n2704, n2705, n2705, s1[23:7], 1'b0}), .B({n2704, s1[24], s1[24], 
        n2704, n2704, n2704, n2704, n2704, n2704, s1[23:8]}), .CI(1'b0), .SUM(
        {N390, N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, 
        N379, N378, N377, N376, N375, N374, N373, N372, N371, N370, N369, N368, 
        N367, N366}) );
  IIR_DW01_add_49 add_31_root_add_121_61 ( .A({N340, N339, N338, N337, N336, 
        N335, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, 
        N323, N322, N321, N320, N319, N318, N317, N316}), .B({N365, N364, N363, 
        N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, 
        N350, N349, N348, N347, N346, N345, N344, N343, N342, N341}), .CI(1'b0), .SUM({N1165, N1164, N1163, N1162, N1161, N1160, N1159, N1158, N1157, N1156, 
        N1155, N1154, N1153, N1152, N1151, N1150, N1149, N1148, N1147, N1146, 
        N1145, N1144, N1143, N1142, N1141}) );
  IIR_DW01_add_50 add_63_root_add_121_61 ( .A({n2710, n2710, n2710, n2710, 
        n2710, n2710, n2710, n2710, n2710, n2710, n2710, n2710, n2710, n2710, 
        n2710, n2710, s2[23:15]}), .B({n2710, n2709, n2709, n2709, n2709, 
        n2709, n2709, n2709, n2709, n2709, n2709, n2709, n2709, s2[24], s2[24], 
        s2[24], s2[24:16]}), .CI(1'b0), .SUM({N365, N364, N363, N362, N361, 
        N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, 
        N348, N347, N346, N345, N344, N343, N342, N341}) );
  IIR_DW01_add_51 add_64_root_add_121_61 ( .A({n2710, n2710, n2709, n2709, 
        n2709, n2709, n2709, n2709, n2709, n2709, n2709, n2709, s2[23:11]}), 
        .B({n2710, s2[24], s2[24], s2[24], s2[24], s2[24], s2[24], s2[24], 
        s2[24], s2[24], n2709, n2709, n2709, n2709, n2709, s2[23:14]}), .CI(
        1'b0), .SUM({N340, N339, N338, N337, N336, N335, N334, N333, N332, 
        N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, 
        N319, N318, N317, N316}) );
  IIR_DW01_add_52 add_16_root_add_121_61 ( .A({N1115, N1114, N1113, N1112, 
        N1111, N1110, N1109, N1108, N1107, N1106, N1105, N1104, N1103, N1102, 
        N1101, N1100, N1099, N1098, N1097, N1096, N1095, N1094, N1093, N1092, 
        N1091}), .B({N1140, N1139, N1138, N1137, N1136, N1135, N1134, N1133, 
        N1132, N1131, N1130, N1129, N1128, N1127, N1126, N1125, N1124, N1123, 
        N1122, N1121, N1120, N1119, N1118, N1117, N1116}), .CI(1'b0), .SUM({
        N1540, N1539, N1538, N1537, N1536, N1535, N1534, N1533, N1532, N1531, 
        N1530, N1529, N1528, N1527, N1526, N1525, N1524, N1523, N1522, N1521, 
        N1520, N1519, N1518, N1517, N1516}) );
  IIR_DW01_add_53 add_32_root_add_121_61 ( .A({N290, N289, N288, N287, N286, 
        N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, 
        N273, N272, N271, N270, N269, N268, N267, N266}), .B({N315, N314, N313, 
        N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, 
        N300, N299, N298, N297, N296, N295, N294, N293, N292, N291}), .CI(1'b0), .SUM({N1140, N1139, N1138, N1137, N1136, N1135, N1134, N1133, N1132, N1131, 
        N1130, N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122, N1121, 
        N1120, N1119, N1118, N1117, N1116}) );
  IIR_DW01_add_54 add_65_root_add_121_61 ( .A({n2710, n2709, n2710, n2709, 
        n2709, n2709, n2709, n2710, n2709, s2[23:8]}), .B({n2710, n2710, n2710, 
        n2709, n2710, n2710, n2710, n2709, n2709, n2709, s2[23:9]}), .CI(1'b0), 
        .SUM({N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, N305, 
        N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294, N293, 
        N292, N291}) );
  IIR_DW01_add_55 add_66_root_add_121_61 ( .A({n2714, s3[24], s3[24], n2715, 
        n2715, n2715, n2715, n2715, n2715, n2715, n2715, n2715, n2715, n2715, 
        n2715, n2715, s3[24:16]}), .B({n2709, n2709, n2710, n2709, n2710, 
        n2709, s2[23:7], 1'b0, 1'b0}), .CI(1'b0), .SUM({N290, N289, N288, N287, 
        N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, 
        N274, N273, N272, N271, N270, N269, N268, N267, N266}) );
  IIR_DW01_add_56 add_33_root_add_121_61 ( .A({N240, N239, N238, N237, N236, 
        N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, 
        N223, N222, N221, N220, N219, N218, N217, N216}), .B({N265, N264, N263, 
        N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247, N246, N245, N244, N243, N242, N241}), .CI(1'b0), .SUM({N1115, N1114, N1113, N1112, N1111, N1110, N1109, N1108, N1107, N1106, 
        N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097, N1096, 
        N1095, N1094, N1093, N1092, N1091}) );
  IIR_DW01_add_57 add_67_root_add_121_61 ( .A({n2715, n2715, s3[24], n2715, 
        n2715, n2715, n2715, n2715, n2715, n2715, n2715, n2715, n2715, n2715, 
        n2715, s3[23:14]}), .B({n2715, s3[24], s3[24], s3[24], n2715, n2715, 
        n2714, n2714, n2715, n2714, n2714, n2714, n2715, n2714, n2715, n2714, 
        s3[23:15]}), .CI(1'b0), .SUM({N265, N264, N263, N262, N261, N260, N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N246, N245, N244, N243, N242, N241}) );
  IIR_DW01_add_58 add_68_root_add_121_61 ( .A({n2715, n2715, n2715, n2715, 
        n2715, n2715, n2715, n2715, n2714, n2715, s3[23:9]}), .B({n2715, n2714, 
        n2714, n2714, n2714, n2714, n2714, n2714, n2714, n2714, n2714, n2714, 
        s3[23:11]}), .CI(1'b0), .SUM({N240, N239, N238, N237, N236, N235, N234, 
        N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, 
        N221, N220, N219, N218, N217, N216}) );
  IIR_DW01_add_59 add_8_root_add_121_61 ( .A({N1490, N1489, N1488, N1487, 
        N1486, N1485, N1484, N1483, N1482, N1481, N1480, N1479, N1478, N1477, 
        N1476, N1475, N1474, N1473, N1472, N1471, N1470, N1469, N1468, N1467, 
        N1466}), .B({N1515, N1514, N1513, N1512, N1511, N1510, N1509, N1508, 
        N1507, N1506, N1505, N1504, N1503, N1502, N1501, N1500, N1499, N1498, 
        N1497, N1496, N1495, N1494, N1493, N1492, N1491}), .CI(1'b0), .SUM({
        N1740, N1739, N1738, N1737, N1736, N1735, N1734, N1733, N1732, N1731, 
        N1730, N1729, N1728, N1727, N1726, N1725, N1724, N1723, N1722, N1721, 
        N1720, N1719, N1718, N1717, N1716}) );
  IIR_DW01_add_60 add_17_root_add_121_61 ( .A({N1065, N1064, N1063, N1062, 
        N1061, N1060, N1059, N1058, N1057, N1056, N1055, N1054, N1053, N1052, 
        N1051, N1050, N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, 
        N1041}), .B({N1090, N1089, N1088, N1087, N1086, N1085, N1084, N1083, 
        N1082, N1081, N1080, N1079, N1078, N1077, N1076, N1075, N1074, N1073, 
        N1072, N1071, N1070, N1069, N1068, N1067, N1066}), .CI(1'b0), .SUM({
        N1515, N1514, N1513, N1512, N1511, N1510, N1509, N1508, N1507, N1506, 
        N1505, N1504, N1503, N1502, N1501, N1500, N1499, N1498, N1497, N1496, 
        N1495, N1494, N1493, N1492, N1491}) );
  IIR_DW01_add_61 add_34_root_add_121_61 ( .A({N190, N189, N188, N187, N186, 
        N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166}), .B({N215, N214, N213, 
        N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, 
        N200, N199, N198, N197, N196, N195, N194, N193, N192, N191}), .CI(1'b0), .SUM({N1090, N1089, N1088, N1087, N1086, N1085, N1084, N1083, N1082, N1081, 
        N1080, N1079, N1078, N1077, N1076, N1075, N1074, N1073, N1072, N1071, 
        N1070, N1069, N1068, N1067, N1066}) );
  IIR_DW01_add_62 add_69_root_add_121_61 ( .A({n2715, n2715, n2715, n2714, 
        n2714, n2714, s3[23:7], 1'b0, 1'b0}), .B({n2715, n2715, n2714, n2714, 
        n2714, n2714, n2714, n2714, n2714, s3[23:8]}), .CI(1'b0), .SUM({N215, 
        N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, 
        N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191}) );
  IIR_DW01_add_63 add_70_root_add_121_61 ( .A({n2720, n2720, n2720, n2720, 
        n2720, n2720, n2720, n2720, n2720, n2720, n2720, n2720, n2720, n2720, 
        n2720, n2719, s4[23:15]}), .B({n2720, n2720, n2720, n2720, n2720, 
        n2720, n2720, n2720, n2720, n2720, n2720, n2720, n2720, s4[24], s4[24], 
        n2719, s4[24:16]}), .CI(1'b0), .SUM({N190, N189, N188, N187, N186, 
        N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166}) );
  IIR_DW01_add_64 add_35_root_add_121_61 ( .A({N140, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117}), .B({N165, N164, N163, 
        N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, N146, N145, N144, N143, N142, N141}), .CI(1'b0), .SUM({N1065, N1064, N1063, N1062, N1061, N1060, N1059, N1058, N1057, N1056, 
        N1055, N1054, N1053, N1052, N1051, N1050, N1049, N1048, N1047, N1046, 
        N1045, N1044, N1043, N1042, N1041}) );
  IIR_DW01_add_65 add_71_root_add_121_61 ( .A({n2720, n2719, n2719, n2719, 
        n2719, n2719, n2719, n2719, n2719, n2719, n2719, n2719, s4[23:11]}), 
        .B({n2720, s4[24], s4[24], s4[24], s4[24], s4[24], s4[24], s4[24], 
        s4[24], s4[24], n2720, n2720, n2720, n2720, n2720, s4[23:14]}), .CI(
        1'b0), .SUM({N165, N164, N163, N162, N161, N160, N159, N158, N157, 
        N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, 
        N144, N143, N142, N141}) );
  IIR_DW01_add_66 add_72_root_add_121_61 ( .A({n2720, n2719, n2719, n2719, 
        n2719, n2719, n2719, n2720, s4[23:8]}), .B({n2720, n2720, n2719, n2720, 
        n2720, n2720, n2719, n2720, n2719, n2720, s4[23:10]}), .CI(1'b0), 
        .SUM({N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117}) );
  IIR_DW01_add_67 add_18_root_add_121_61 ( .A({N1015, N1014, N1013, N1012, 
        N1011, N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, 
        N1001, N1000, N999, N998, N997, N996, N995, N994, N993, N992, N991}), 
        .B({N1040, N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, 
        N1031, N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, 
        N1021, N1020, N1019, N1018, N1017, N1016}), .CI(1'b0), .SUM({N1490, 
        N1489, N1488, N1487, N1486, N1485, N1484, N1483, N1482, N1481, N1480, 
        N1479, N1478, N1477, N1476, N1475, N1474, N1473, N1472, N1471, N1470, 
        N1469, N1468, N1467, N1466}) );
  IIR_DW01_add_68 add_36_root_add_121_61 ( .A({N93, N93, N93, N93, N92, N91, 
        N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, 
        N76, N75, N74, N73, N72}), .B({N116, N116, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94}), .CI(1'b0), .SUM({N1040, N1039, 
        N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, 
        N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020, N1019, 
        N1018, N1017, N1016}) );
  IIR_DW01_add_69 add_73_root_add_121_61 ( .A({n2688, n2688, n2688, n2688, 
        n2688, n2688, n2688, n2688, n2688, n2687, n2688, n2688, n2687, n2688, 
        n2688, s5[23], n2600, s5[21], n2599, n2604, n2598, n2597, n2596}), .B(
        {n2719, n2720, n2719, n2720, n2720, s4[23:7], 1'b0}), .CI(1'b0), .SUM(
        {N116, N115, N114, N113, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94}) );
  IIR_DW01_add_70 add_74_root_add_121_61 ( .A({n2688, n2688, n2687, n2687, 
        n2687, n2687, n2687, n2687, n2687, n2687, s5[23], n2600, s5[21], n2599, 
        n2604, n2598, n2597, n2596, n2602, n2609, n2605, s5[12]}), .B({n2688, 
        n2686, n2686, n2686, n2686, n2686, n2686, n2686, n2686, n2686, n2686, 
        s5[23], n2600, s5[21], n2599, n2604, n2598, n2597, n2596, n2602, n2609, 
        n2605}), .CI(1'b0), .SUM({N93, N92, N91, N90, N89, N88, N87, N86, N85, 
        N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72}) );
  IIR_DW01_add_71 add_37_root_add_121_61 ( .A({n2688, n2687, n2687, n2687, 
        n2687, n2687, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, 
        N38, N37, N36, N35, N34, N33, N32, N31}), .B({n2688, n2687, n2687, 
        n2686, n2687, n2687, n2687, n2687, n2686, n2686, N65, N64, N63, N62, 
        N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51}), .CI(1'b0), 
        .SUM({N1015, N1014, N1013, N1012, N1011, N1010, N1009, N1008, N1007, 
        N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, 
        N996, N995, N994, N993, N992, N991}) );
  IIR_DW01_add_74 add_38_root_add_121_61 ( .A({n2678, n2677, n2677, n2677, 
        n2677, n2677, n2678, n2677, n2677, n2677, n2677, n2678, n2677, n2678, 
        n2574, n2566, n2570, n2572, n2567, n2571, n2573, n2568, n2576, n2575, 
        n2569}), .B({n2678, n2676, n2676, n2676, n2677, n2676, n2677, n2676, 
        n2677, n2676, n2677, n2676, n2677, n2676, n2677, n2676, n2674, n2574, 
        n2566, n2570, n2572, n2567, n2571, n2573, n2568}), .CI(1'b0), .SUM({
        N990, N989, N988, N987, N986, N985, N984, N983, N982, N981, N980, N979, 
        N978, N977, N976, N975, N974, N973, N972, N971, N970, N969, N968, N967, 
        N966}) );
  DFFRX1 Finish_reg ( .D(n707), .CK(clk), .RN(n2628), .Q(Finish) );
  DFFRX1 \sum_reg[22]  ( .D(n468), .CK(clk), .RN(n2628), .Q(sum[22]) );
  DFFRX1 \sum_reg[23]  ( .D(n462), .CK(clk), .RN(n2628), .Q(sum[23]) );
  DFFRX1 \sum_reg[9]  ( .D(n546), .CK(clk), .RN(n2629), .Q(sum[9]) );
  DFFRX1 \sum_reg[7]  ( .D(n558), .CK(clk), .RN(n2629), .Q(sum[7]) );
  DFFRX1 \sum_reg[8]  ( .D(n552), .CK(clk), .RN(n2629), .Q(sum[8]) );
  DFFRX1 \sum_reg[10]  ( .D(n540), .CK(clk), .RN(n2629), .Q(sum[10]) );
  DFFRX1 \sum_reg[11]  ( .D(n534), .CK(clk), .RN(n2629), .Q(sum[11]) );
  DFFRX1 \sum_reg[12]  ( .D(n528), .CK(clk), .RN(n2629), .Q(sum[12]) );
  DFFRX1 \sum_reg[13]  ( .D(n522), .CK(clk), .RN(n2629), .Q(sum[13]) );
  DFFRX1 \sum_reg[14]  ( .D(n516), .CK(clk), .RN(n2630), .Q(sum[14]) );
  DFFRX1 \sum_reg[15]  ( .D(n510), .CK(clk), .RN(n2630), .Q(sum[15]) );
  DFFRX1 \sum_reg[16]  ( .D(n504), .CK(clk), .RN(n2630), .Q(sum[16]) );
  DFFRX1 \sum_reg[17]  ( .D(n498), .CK(clk), .RN(n2630), .Q(sum[17]) );
  DFFRX1 \sum_reg[18]  ( .D(n492), .CK(clk), .RN(n2630), .Q(sum[18]) );
  DFFRX1 \sum_reg[19]  ( .D(n486), .CK(clk), .RN(n2630), .Q(sum[19]) );
  DFFRX1 \sum_reg[20]  ( .D(n480), .CK(clk), .RN(n2630), .Q(sum[20]) );
  DFFRX1 \sum_reg[21]  ( .D(n474), .CK(clk), .RN(n2630), .Q(sum[21]) );
  DFFRX1 \sum_reg[24]  ( .D(n456), .CK(clk), .RN(n2630), .Q(sum[24]) );
  DFFRX1 \RAddr_reg[19]  ( .D(n668), .CK(clk), .RN(n2628), .Q(RAddr[19]), .QN(
        n411) );
  DFFRX1 \WAddr_reg[19]  ( .D(n667), .CK(clk), .RN(n2628), .Q(WAddr[19]), .QN(
        n410) );
  DFFRX1 \RAddr_reg[12]  ( .D(n682), .CK(clk), .RN(n2627), .Q(RAddr[12]), .QN(
        n425) );
  DFFRX1 \WAddr_reg[12]  ( .D(n681), .CK(clk), .RN(n2627), .Q(WAddr[12]), .QN(
        n424) );
  DFFRX1 \RAddr_reg[13]  ( .D(n680), .CK(clk), .RN(n2627), .Q(RAddr[13]), .QN(
        n423) );
  DFFRX1 \WAddr_reg[13]  ( .D(n679), .CK(clk), .RN(n2627), .Q(WAddr[13]), .QN(
        n422) );
  DFFRX1 \RAddr_reg[14]  ( .D(n678), .CK(clk), .RN(n2627), .Q(RAddr[14]), .QN(
        n421) );
  DFFRX1 \WAddr_reg[14]  ( .D(n677), .CK(clk), .RN(n2627), .Q(WAddr[14]), .QN(
        n420) );
  DFFRX1 \RAddr_reg[15]  ( .D(n676), .CK(clk), .RN(n2627), .Q(RAddr[15]), .QN(
        n419) );
  DFFRX1 \WAddr_reg[15]  ( .D(n675), .CK(clk), .RN(n2627), .Q(WAddr[15]), .QN(
        n418) );
  DFFRX1 \RAddr_reg[16]  ( .D(n674), .CK(clk), .RN(n2627), .Q(RAddr[16]), .QN(
        n417) );
  DFFRX1 \WAddr_reg[16]  ( .D(n673), .CK(clk), .RN(n2627), .Q(WAddr[16]), .QN(
        n416) );
  DFFRX1 \RAddr_reg[17]  ( .D(n672), .CK(clk), .RN(n2627), .Q(RAddr[17]), .QN(
        n415) );
  DFFRX1 \WAddr_reg[17]  ( .D(n671), .CK(clk), .RN(n2627), .Q(WAddr[17]), .QN(
        n414) );
  DFFRX1 \RAddr_reg[18]  ( .D(n670), .CK(clk), .RN(n2628), .Q(RAddr[18]), .QN(
        n413) );
  DFFRX1 \WAddr_reg[18]  ( .D(n669), .CK(clk), .RN(n2628), .Q(WAddr[18]), .QN(
        n412) );
  DFFRX1 \RAddr_reg[5]  ( .D(n696), .CK(clk), .RN(n2625), .Q(RAddr[5]), .QN(
        n439) );
  DFFRX1 \WAddr_reg[5]  ( .D(n695), .CK(clk), .RN(n2625), .Q(WAddr[5]), .QN(
        n438) );
  DFFRX1 \RAddr_reg[6]  ( .D(n694), .CK(clk), .RN(n2626), .Q(RAddr[6]), .QN(
        n437) );
  DFFRX1 \WAddr_reg[6]  ( .D(n693), .CK(clk), .RN(n2626), .Q(WAddr[6]), .QN(
        n436) );
  DFFRX1 \RAddr_reg[7]  ( .D(n692), .CK(clk), .RN(n2626), .Q(RAddr[7]), .QN(
        n435) );
  DFFRX1 \WAddr_reg[7]  ( .D(n691), .CK(clk), .RN(n2626), .Q(WAddr[7]), .QN(
        n434) );
  DFFRX1 \RAddr_reg[8]  ( .D(n690), .CK(clk), .RN(n2626), .Q(RAddr[8]), .QN(
        n433) );
  DFFRX1 \WAddr_reg[8]  ( .D(n689), .CK(clk), .RN(n2626), .Q(WAddr[8]), .QN(
        n432) );
  DFFRX1 \RAddr_reg[9]  ( .D(n688), .CK(clk), .RN(n2626), .Q(RAddr[9]), .QN(
        n431) );
  DFFRX1 \WAddr_reg[9]  ( .D(n687), .CK(clk), .RN(n2626), .Q(WAddr[9]), .QN(
        n430) );
  DFFRX1 \RAddr_reg[10]  ( .D(n686), .CK(clk), .RN(n2626), .Q(RAddr[10]), .QN(
        n429) );
  DFFRX1 \WAddr_reg[10]  ( .D(n685), .CK(clk), .RN(n2626), .Q(WAddr[10]), .QN(
        n428) );
  DFFRX1 \RAddr_reg[11]  ( .D(n684), .CK(clk), .RN(n2626), .Q(RAddr[11]), .QN(
        n427) );
  DFFRX1 \WAddr_reg[11]  ( .D(n683), .CK(clk), .RN(n2626), .Q(WAddr[11]), .QN(
        n426) );
  DFFRX1 \WAddr_reg[0]  ( .D(n705), .CK(clk), .RN(n2625), .Q(WAddr[0]), .QN(
        n448) );
  DFFRX1 \RAddr_reg[1]  ( .D(n704), .CK(clk), .RN(n2625), .Q(RAddr[1]), .QN(
        n447) );
  DFFRX1 \WAddr_reg[1]  ( .D(n703), .CK(clk), .RN(n2625), .Q(WAddr[1]), .QN(
        n446) );
  DFFRX1 \RAddr_reg[2]  ( .D(n702), .CK(clk), .RN(n2625), .Q(RAddr[2]), .QN(
        n445) );
  DFFRX1 \WAddr_reg[2]  ( .D(n701), .CK(clk), .RN(n2625), .Q(WAddr[2]), .QN(
        n444) );
  DFFRX1 \RAddr_reg[3]  ( .D(n700), .CK(clk), .RN(n2625), .Q(RAddr[3]), .QN(
        n443) );
  DFFRX1 \WAddr_reg[3]  ( .D(n699), .CK(clk), .RN(n2625), .Q(WAddr[3]), .QN(
        n442) );
  DFFRX1 \RAddr_reg[4]  ( .D(n698), .CK(clk), .RN(n2625), .Q(RAddr[4]), .QN(
        n441) );
  DFFRX1 \WAddr_reg[4]  ( .D(n697), .CK(clk), .RN(n2625), .Q(WAddr[4]), .QN(
        n440) );
  DFFRX1 \RAddr_reg[0]  ( .D(n706), .CK(clk), .RN(n2625), .Q(RAddr[0]), .QN(
        n449) );
  DFFRX1 \state_reg[1]  ( .D(n2695), .CK(clk), .RN(n2628), .Q(state[1]) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n2628), .Q(state[0]) );
  DFFRX1 \ns2_reg[18]  ( .D(n489), .CK(clk), .RN(n2637), .Q(ns2[18]), .QN(
        n2471) );
  DFFRX1 \ns2_reg[22]  ( .D(n465), .CK(clk), .RN(n2639), .Q(ns2[22]), .QN(
        n2448) );
  DFFRX1 \ns2_reg[19]  ( .D(n483), .CK(clk), .RN(n2639), .Q(ns2[19]), .QN(
        n2428) );
  DFFRX1 \ns2_reg[21]  ( .D(n471), .CK(clk), .RN(n2641), .Q(ns2[21]), .QN(
        n2430) );
  DFFRX1 \ns2_reg[20]  ( .D(n477), .CK(clk), .RN(n2642), .Q(ns2[20]), .QN(
        n2429) );
  DFFRX1 \ns1_reg[23]  ( .D(n458), .CK(clk), .RN(n2644), .Q(ns1[23]), .QN(
        n2479) );
  DFFRX1 \ns1_reg[21]  ( .D(n470), .CK(clk), .RN(n2645), .Q(ns1[21]), .QN(
        n2447) );
  DFFRX1 \ns1_reg[22]  ( .D(n464), .CK(clk), .RN(n2646), .Q(ns1[22]), .QN(
        n2431) );
  DFFRX1 \ns3_reg[19]  ( .D(n484), .CK(clk), .RN(n2632), .Q(ns3[19]), .QN(
        n2446) );
  DFFRX1 \s5_reg[22]  ( .D(n666), .CK(clk), .RN(n2635), .Q(s5[22]), .QN(n2467)
         );
  DFFRX1 \ns2_reg[15]  ( .D(n507), .CK(clk), .RN(n2637), .Q(ns2[15]), .QN(
        n2427) );
  DFFRX1 \ns0_reg[20]  ( .D(n475), .CK(clk), .RN(n2638), .Q(ns0[20]), .QN(
        n2524) );
  DFFRX1 \ns2_reg[14]  ( .D(n513), .CK(clk), .RN(n2638), .Q(ns2[14]), .QN(
        n2425) );
  DFFRX1 \ns2_reg[17]  ( .D(n495), .CK(clk), .RN(n2638), .Q(ns2[17]), .QN(
        n2469) );
  DFFRX1 \ns2_reg[13]  ( .D(n519), .CK(clk), .RN(n2638), .Q(ns2[13]), .QN(
        n2437) );
  DFFRX1 \ns2_reg[16]  ( .D(n501), .CK(clk), .RN(n2639), .Q(ns2[16]), .QN(
        n2417) );
  DFFRX1 \ns1_reg[15]  ( .D(n506), .CK(clk), .RN(n2643), .Q(ns1[15]), .QN(
        n2443) );
  DFFRX1 \ns1_reg[14]  ( .D(n512), .CK(clk), .RN(n2643), .Q(ns1[14]), .QN(
        n2441) );
  DFFRX1 \ns1_reg[17]  ( .D(n494), .CK(clk), .RN(n2645), .Q(ns1[17]), .QN(
        n2523) );
  DFFRX1 \ns1_reg[20]  ( .D(n476), .CK(clk), .RN(n2645), .Q(ns1[20]), .QN(
        n2418) );
  DFFRX1 \ns1_reg[18]  ( .D(n488), .CK(clk), .RN(n2645), .Q(ns1[18]), .QN(
        n2525) );
  DFFRX1 \ns1_reg[16]  ( .D(n500), .CK(clk), .RN(n2646), .Q(ns1[16]), .QN(
        n2521) );
  DFFRX1 \ns1_reg[19]  ( .D(n482), .CK(clk), .RN(n2646), .Q(ns1[19]), .QN(
        n2478) );
  DFFRX1 \ns4_reg[22]  ( .D(n467), .CK(clk), .RN(n2634), .Q(ns4[22]) );
  DFFRX1 \ns4_reg[21]  ( .D(n473), .CK(clk), .RN(n2635), .Q(ns4[21]), .QN(
        n2474) );
  DFFRX1 \ns0_reg[22]  ( .D(n463), .CK(clk), .RN(n2638), .Q(ns0[22]) );
  DFFRX1 \ns4_reg[24]  ( .D(n455), .CK(clk), .RN(n2645), .Q(N590), .QN(n768)
         );
  DFFRX1 \ns3_reg[8]  ( .D(n550), .CK(clk), .RN(n2631), .Q(N792), .QN(n1395)
         );
  DFFRX1 \ns1_reg[7]  ( .D(n554), .CK(clk), .RN(n2635), .Q(N870), .QN(n1409)
         );
  DFFRX1 \ns3_reg[9]  ( .D(n544), .CK(clk), .RN(n2632), .Q(N793), .QN(n1396)
         );
  DFFRX1 \ns3_reg[7]  ( .D(n556), .CK(clk), .RN(n2630), .Q(N791), .QN(n1415)
         );
  DFFRX1 \s2_reg[7]  ( .D(n573), .CK(clk), .RN(n2631), .Q(s2[7]), .QN(n2505)
         );
  DFFRX1 \ns3_reg[18]  ( .D(n490), .CK(clk), .RN(n2635), .Q(N847), .QN(n1404)
         );
  DFFRX1 \ns0_reg[24]  ( .D(n451), .CK(clk), .RN(n2645), .Q(N740), .QN(n794)
         );
  DFFRX1 \s5_reg[24]  ( .D(n570), .CK(clk), .RN(n2645), .Q(N71), .QN(n781) );
  DFFRX1 \ns3_reg[11]  ( .D(n532), .CK(clk), .RN(n2634), .Q(N795), .QN(n1398)
         );
  DFFRX1 \ns3_reg[10]  ( .D(n538), .CK(clk), .RN(n2635), .Q(N794), .QN(n1397)
         );
  DFFRX1 \ns4_reg[10]  ( .D(n539), .CK(clk), .RN(n2629), .Q(N569), .QN(n1406)
         );
  DFFRX1 \s3_reg[24]  ( .D(n568), .CK(clk), .RN(n2645), .Q(s3[24]), .QN(n2423)
         );
  DFFRX1 \s1_reg[24]  ( .D(n566), .CK(clk), .RN(n2645), .Q(s1[24]), .QN(n2422)
         );
  DFFRX1 \s4_reg[24]  ( .D(n569), .CK(clk), .RN(n2645), .Q(s4[24]), .QN(n2433)
         );
  DFFRX1 \ns4_reg[12]  ( .D(n527), .CK(clk), .RN(n2629), .Q(ns4[12]), .QN(
        n2518) );
  DFFRX1 \ns4_reg[13]  ( .D(n521), .CK(clk), .RN(n2632), .Q(ns4[13]), .QN(
        n2512) );
  DFFRX1 \ns4_reg[20]  ( .D(n479), .CK(clk), .RN(n2632), .Q(ns4[20]), .QN(
        n2463) );
  DFFRX1 \ns1_reg[9]  ( .D(n542), .CK(clk), .RN(n2633), .Q(ns1[9]), .QN(n2462)
         );
  DFFRX1 \s5_reg[14]  ( .D(n618), .CK(clk), .RN(n2633), .Q(s5[14]), .QN(n2513)
         );
  DFFRX1 \s5_reg[13]  ( .D(n612), .CK(clk), .RN(n2634), .Q(s5[13]), .QN(n2511)
         );
  DFFRX1 \s5_reg[19]  ( .D(n648), .CK(clk), .RN(n2634), .Q(s5[19]), .QN(n2461)
         );
  DFFRX1 \s5_reg[15]  ( .D(n624), .CK(clk), .RN(n2635), .Q(s5[15]), .QN(n2456)
         );
  DFFRX1 \s5_reg[20]  ( .D(n654), .CK(clk), .RN(n2635), .Q(s5[20]), .QN(n2465)
         );
  DFFRX1 \s5_reg[18]  ( .D(n642), .CK(clk), .RN(n2636), .Q(s5[18]), .QN(n2459)
         );
  DFFRX1 \s5_reg[17]  ( .D(n636), .CK(clk), .RN(n2637), .Q(s5[17]), .QN(n2421)
         );
  DFFRX1 \s5_reg[16]  ( .D(n630), .CK(clk), .RN(n2637), .Q(s5[16]), .QN(n2514)
         );
  DFFRX1 \ns2_reg[9]  ( .D(n543), .CK(clk), .RN(n2637), .Q(ns2[9]), .QN(n2535)
         );
  DFFRX1 \ns2_reg[12]  ( .D(n525), .CK(clk), .RN(n2637), .Q(ns2[12]), .QN(
        n2420) );
  DFFRX1 \ns0_reg[17]  ( .D(n493), .CK(clk), .RN(n2638), .Q(ns0[17]), .QN(
        n2476) );
  DFFRX1 \ns2_reg[11]  ( .D(n531), .CK(clk), .RN(n2638), .Q(ns2[11]), .QN(
        n2419) );
  DFFRX1 \ns1_reg[10]  ( .D(n536), .CK(clk), .RN(n2642), .Q(ns1[10]), .QN(
        n2516) );
  DFFRX1 \ns1_reg[12]  ( .D(n524), .CK(clk), .RN(n2643), .Q(ns1[12]), .QN(
        n2473) );
  DFFRX1 \ns1_reg[13]  ( .D(n518), .CK(clk), .RN(n2646), .Q(ns1[13]), .QN(
        n2424) );
  DFFRX1 \s0_reg[8]  ( .D(n577), .CK(clk), .RN(n2631), .Q(s0[8]), .QN(n395) );
  DFFRX1 \s0_reg[7]  ( .D(n571), .CK(clk), .RN(n2631), .Q(s0[7]), .QN(n394) );
  DFFRX1 \ns4_reg[17]  ( .D(n497), .CK(clk), .RN(n2633), .Q(ns4[17]) );
  DFFRX1 \ns4_reg[16]  ( .D(n503), .CK(clk), .RN(n2633), .Q(ns4[16]), .QN(
        n2438) );
  DFFRX1 \ns4_reg[18]  ( .D(n491), .CK(clk), .RN(n2635), .Q(ns4[18]), .QN(
        n2468) );
  DFFRX1 \s1_reg[7]  ( .D(n572), .CK(clk), .RN(n2631), .Q(s1[7]), .QN(n2546)
         );
  DFFRX1 \s3_reg[7]  ( .D(n574), .CK(clk), .RN(n2631), .Q(s3[7]), .QN(n2545)
         );
  DFFRX1 \s0_reg[9]  ( .D(n583), .CK(clk), .RN(n2632), .Q(s0[9]), .QN(n396) );
  DFFRX1 \s4_reg[7]  ( .D(n575), .CK(clk), .RN(n2631), .Q(s4[7]), .QN(n2504)
         );
  DFFRX1 \ns0_reg[7]  ( .D(n553), .CK(clk), .RN(n2631), .Q(N720), .QN(n391) );
  DFFRX1 \ns0_reg[9]  ( .D(n541), .CK(clk), .RN(n2629), .Q(ns0[9]) );
  DFFRX1 \s1_reg[8]  ( .D(n578), .CK(clk), .RN(n2631), .Q(s1[8]), .QN(n2543)
         );
  DFFRX1 \ns0_reg[10]  ( .D(n535), .CK(clk), .RN(n2631), .Q(ns0[10]), .QN(
        n2457) );
  DFFRX1 \s4_reg[9]  ( .D(n587), .CK(clk), .RN(n2632), .Q(s4[9]), .QN(n2544)
         );
  DFFRX1 \ns4_reg[7]  ( .D(n557), .CK(clk), .RN(n2633), .Q(N547), .QN(n1411)
         );
  DFFRX1 \s1_reg[9]  ( .D(n584), .CK(clk), .RN(n2632), .Q(s1[9]), .QN(n2540)
         );
  DFFRX1 \s3_reg[8]  ( .D(n580), .CK(clk), .RN(n2632), .Q(s3[8]), .QN(n2451)
         );
  DFFRX1 \ns3_reg[17]  ( .D(n496), .CK(clk), .RN(n2634), .Q(N846), .QN(n1403)
         );
  DFFRX1 \s0_reg[10]  ( .D(n589), .CK(clk), .RN(n2635), .Q(s0[10]), .QN(n397)
         );
  DFFRX1 \s4_reg[8]  ( .D(n581), .CK(clk), .RN(n2633), .Q(s4[8]), .QN(n2542)
         );
  DFFRX1 \s2_reg[8]  ( .D(n579), .CK(clk), .RN(n2633), .Q(s2[8]), .QN(n2506)
         );
  DFFRX1 \ns4_reg[8]  ( .D(n551), .CK(clk), .RN(n2631), .Q(N548), .QN(n1405)
         );
  DFFRX1 \ns3_reg[20]  ( .D(n478), .CK(clk), .RN(n2633), .Q(ns3[20]), .QN(
        n2436) );
  DFFRX1 \ns0_reg[8]  ( .D(n547), .CK(clk), .RN(n2631), .Q(ns0[8]), .QN(n2515)
         );
  DFFRX1 \s3_reg[10]  ( .D(n592), .CK(clk), .RN(n2633), .Q(s3[10]), .QN(n2498)
         );
  DFFRX1 \s2_reg[24]  ( .D(n567), .CK(clk), .RN(n2645), .Q(s2[24]), .QN(n2432)
         );
  DFFRX1 \ns2_reg[10]  ( .D(n537), .CK(clk), .RN(n2638), .Q(ns2[10]), .QN(
        n2455) );
  DFFRX1 \s5_reg[8]  ( .D(n582), .CK(clk), .RN(n2628), .Q(s5[8]), .QN(n2454)
         );
  DFFRX1 \ns4_reg[15]  ( .D(n509), .CK(clk), .RN(n2634), .Q(ns4[15]), .QN(
        n2475) );
  DFFRX1 \ns4_reg[14]  ( .D(n515), .CK(clk), .RN(n2634), .Q(ns4[14]), .QN(
        n2458) );
  DFFRX1 \s5_reg[9]  ( .D(n588), .CK(clk), .RN(n2630), .Q(N31), .QN(n1408) );
  DFFRX1 \s5_reg[7]  ( .D(n576), .CK(clk), .RN(n2628), .Q(s5[7]), .QN(n2532)
         );
  DFFRX1 \s5_reg[11]  ( .D(n600), .CK(clk), .RN(n2629), .Q(s5[11]), .QN(n2434)
         );
  DFFRX1 \ns2_reg[24]  ( .D(n453), .CK(clk), .RN(n2645), .Q(N665), .QN(n784)
         );
  DFFRX1 \ns3_reg[24]  ( .D(n454), .CK(clk), .RN(n2646), .Q(ns3[24]), .QN(
        n2477) );
  DFFRX1 \ns1_reg[24]  ( .D(n452), .CK(clk), .RN(n2646), .Q(N890), .QN(n711)
         );
  DFFRX1 \ns4_reg[23]  ( .D(n461), .CK(clk), .RN(n2632), .Q(ns4[23]), .QN(
        n2470) );
  DFFRX1 \ns3_reg[13]  ( .D(n520), .CK(clk), .RN(n2637), .Q(N797), .QN(n1400)
         );
  DFFRX1 \ns3_reg[14]  ( .D(n514), .CK(clk), .RN(n2637), .Q(N798), .QN(n1401)
         );
  DFFRX1 \ns3_reg[15]  ( .D(n508), .CK(clk), .RN(n2637), .Q(N799), .QN(n1402)
         );
  DFFRX1 \ns4_reg[11]  ( .D(n533), .CK(clk), .RN(n2629), .Q(N570), .QN(n1407)
         );
  DFFRX1 \ns3_reg[12]  ( .D(n526), .CK(clk), .RN(n2638), .Q(N796), .QN(n1399)
         );
  DFFRX1 \s0_reg[24]  ( .D(n565), .CK(clk), .RN(n2646), .Q(s0[24]), .QN(n393)
         );
  DFFRX1 \s5_reg[21]  ( .D(n660), .CK(clk), .RN(n2636), .Q(s5[21]), .QN(n2460)
         );
  DFFRX1 \s0_reg[22]  ( .D(n661), .CK(clk), .RN(n2640), .Q(s0[22]), .QN(n409)
         );
  DFFRX1 \s0_reg[21]  ( .D(n655), .CK(clk), .RN(n2640), .Q(s0[21]), .QN(n408)
         );
  DFFRX1 \s0_reg[23]  ( .D(n559), .CK(clk), .RN(n2640), .Q(s0[23]), .QN(n392)
         );
  DFFRX1 \ns2_reg[7]  ( .D(n555), .CK(clk), .RN(n2639), .Q(N623), .QN(n1413)
         );
  DFFRX1 \ns3_reg[16]  ( .D(n502), .CK(clk), .RN(n2634), .Q(N845), .QN(n1414)
         );
  DFFRX1 \s0_reg[11]  ( .D(n595), .CK(clk), .RN(n2637), .Q(s0[11]), .QN(n398)
         );
  DFFRX1 \ns2_reg[8]  ( .D(n549), .CK(clk), .RN(n2638), .Q(N645), .QN(n1412)
         );
  DFFRX1 \ns4_reg[9]  ( .D(n545), .CK(clk), .RN(n2628), .Q(N568), .QN(n1410)
         );
  DFFRX1 \ns1_reg[8]  ( .D(n548), .CK(clk), .RN(n2636), .Q(N871), .QN(n1394)
         );
  DFFRX1 \ns4_reg[19]  ( .D(n485), .CK(clk), .RN(n2634), .Q(ns4[19]), .QN(
        n2519) );
  DFFRX1 \s0_reg[12]  ( .D(n601), .CK(clk), .RN(n2639), .Q(s0[12]), .QN(n399)
         );
  DFFRX1 \s0_reg[15]  ( .D(n619), .CK(clk), .RN(n2639), .Q(s0[15]), .QN(n402)
         );
  DFFRX1 \s0_reg[14]  ( .D(n613), .CK(clk), .RN(n2639), .Q(s0[14]), .QN(n401)
         );
  DFFRX1 \s0_reg[13]  ( .D(n607), .CK(clk), .RN(n2639), .Q(s0[13]), .QN(n400)
         );
  DFFRX1 \s0_reg[20]  ( .D(n649), .CK(clk), .RN(n2640), .Q(s0[20]), .QN(n407)
         );
  DFFRX1 \s0_reg[19]  ( .D(n643), .CK(clk), .RN(n2640), .Q(s0[19]), .QN(n406)
         );
  DFFRX1 \s0_reg[18]  ( .D(n637), .CK(clk), .RN(n2640), .Q(s0[18]), .QN(n405)
         );
  DFFRX1 \s0_reg[17]  ( .D(n631), .CK(clk), .RN(n2640), .Q(s0[17]), .QN(n404)
         );
  DFFRX1 \s0_reg[16]  ( .D(n625), .CK(clk), .RN(n2640), .Q(s0[16]), .QN(n403)
         );
  DFFRX1 \s5_reg[10]  ( .D(n594), .CK(clk), .RN(n2630), .Q(s5[10]), .QN(n2453)
         );
  DFFRX1 \s5_reg[12]  ( .D(n606), .CK(clk), .RN(n2632), .Q(s5[12]), .QN(n2452)
         );
  DFFRX1 \ns3_reg[23]  ( .D(n460), .CK(clk), .RN(n2632), .Q(ns3[23]), .QN(
        n2522) );
  DFFRX1 \ns2_reg[23]  ( .D(n459), .CK(clk), .RN(n2641), .Q(ns2[23]), .QN(
        n2442) );
  DFFRX1 \ns3_reg[22]  ( .D(n466), .CK(clk), .RN(n2633), .Q(ns3[22]), .QN(
        n2426) );
  DFFRX1 \ns3_reg[21]  ( .D(n472), .CK(clk), .RN(n2633), .Q(ns3[21]), .QN(
        n2520) );
  DFFRX1 \ns0_reg[23]  ( .D(n457), .CK(clk), .RN(n2638), .Q(ns0[23]), .QN(
        n2445) );
  DFFRX1 \ns0_reg[19]  ( .D(n481), .CK(clk), .RN(n2637), .Q(ns0[19]), .QN(
        n2444) );
  DFFRX1 \s5_reg[23]  ( .D(n564), .CK(clk), .RN(n2634), .Q(s5[23]), .QN(n2440)
         );
  DFFRX1 \ns0_reg[21]  ( .D(n469), .CK(clk), .RN(n2641), .Q(ns0[21]), .QN(
        n2526) );
  DFFRX1 \s1_reg[21]  ( .D(n656), .CK(clk), .RN(n2639), .Q(s1[21]), .QN(n2494)
         );
  DFFRX1 \s1_reg[22]  ( .D(n662), .CK(clk), .RN(n2642), .Q(s1[22]), .QN(n2495)
         );
  DFFRX1 \s3_reg[23]  ( .D(n562), .CK(clk), .RN(n2643), .Q(s3[23]), .QN(n2484)
         );
  DFFRX1 \s1_reg[23]  ( .D(n560), .CK(clk), .RN(n2643), .Q(s1[23]), .QN(n2490)
         );
  DFFRX1 \s1_reg[10]  ( .D(n590), .CK(clk), .RN(n2634), .Q(s1[10]), .QN(n2503)
         );
  DFFRX1 \s3_reg[9]  ( .D(n586), .CK(clk), .RN(n2634), .Q(s3[9]), .QN(n2502)
         );
  DFFRX1 \s2_reg[10]  ( .D(n591), .CK(clk), .RN(n2635), .Q(s2[10]), .QN(n2541)
         );
  DFFRX1 \s4_reg[10]  ( .D(n593), .CK(clk), .RN(n2635), .Q(s4[10]), .QN(n2531)
         );
  DFFRX1 \s2_reg[9]  ( .D(n585), .CK(clk), .RN(n2635), .Q(s2[9]), .QN(n2449)
         );
  DFFRX1 \ns0_reg[12]  ( .D(n523), .CK(clk), .RN(n2632), .Q(ns0[12]), .QN(
        n2439) );
  DFFRX1 \s4_reg[13]  ( .D(n611), .CK(clk), .RN(n2636), .Q(s4[13]), .QN(n2500)
         );
  DFFRX1 \s3_reg[13]  ( .D(n610), .CK(clk), .RN(n2636), .Q(s3[13]), .QN(n2536)
         );
  DFFRX1 \s2_reg[13]  ( .D(n609), .CK(clk), .RN(n2636), .Q(s2[13]), .QN(n2501)
         );
  DFFRX1 \s1_reg[13]  ( .D(n608), .CK(clk), .RN(n2636), .Q(s1[13]), .QN(n2538)
         );
  DFFRX1 \s4_reg[12]  ( .D(n605), .CK(clk), .RN(n2636), .Q(s4[12]), .QN(n2537)
         );
  DFFRX1 \s3_reg[12]  ( .D(n604), .CK(clk), .RN(n2636), .Q(s3[12]), .QN(n2499)
         );
  DFFRX1 \s2_reg[12]  ( .D(n603), .CK(clk), .RN(n2636), .Q(s2[12]), .QN(n2450)
         );
  DFFRX1 \s1_reg[12]  ( .D(n602), .CK(clk), .RN(n2636), .Q(s1[12]), .QN(n2539)
         );
  DFFRX1 \ns0_reg[11]  ( .D(n529), .CK(clk), .RN(n2633), .Q(ns0[11]), .QN(
        n2517) );
  DFFRX1 \s3_reg[11]  ( .D(n598), .CK(clk), .RN(n2641), .Q(s3[11]), .QN(n2496)
         );
  DFFRX1 \s1_reg[11]  ( .D(n596), .CK(clk), .RN(n2641), .Q(s1[11]), .QN(n2497)
         );
  DFFRX1 \s4_reg[11]  ( .D(n599), .CK(clk), .RN(n2641), .Q(s4[11]), .QN(n2534)
         );
  DFFRX1 \s2_reg[11]  ( .D(n597), .CK(clk), .RN(n2642), .Q(s2[11]), .QN(n2533)
         );
  DFFRX1 \s1_reg[14]  ( .D(n614), .CK(clk), .RN(n2642), .Q(s1[14]), .QN(n2530)
         );
  DFFRX1 \ns0_reg[16]  ( .D(n499), .CK(clk), .RN(n2637), .Q(ns0[16]), .QN(
        n2464) );
  DFFRX1 \ns0_reg[14]  ( .D(n511), .CK(clk), .RN(n2638), .Q(ns0[14]), .QN(
        n2563) );
  DFFRX1 \s4_reg[14]  ( .D(n617), .CK(clk), .RN(n2642), .Q(s4[14]), .QN(n2483)
         );
  DFFRX1 \s2_reg[14]  ( .D(n615), .CK(clk), .RN(n2642), .Q(s2[14]), .QN(n2482)
         );
  DFFRX1 \ns0_reg[15]  ( .D(n505), .CK(clk), .RN(n2641), .Q(ns0[15]), .QN(
        n2564) );
  DFFRX1 \ns0_reg[18]  ( .D(n487), .CK(clk), .RN(n2641), .Q(ns0[18]), .QN(
        n2472) );
  DFFRX1 \ns0_reg[13]  ( .D(n517), .CK(clk), .RN(n2636), .Q(ns0[13]), .QN(
        n2466) );
  DFFRX1 \s1_reg[15]  ( .D(n620), .CK(clk), .RN(n2639), .Q(s1[15]), .QN(n2481)
         );
  DFFRX1 \s1_reg[18]  ( .D(n638), .CK(clk), .RN(n2639), .Q(s1[18]), .QN(n2491)
         );
  DFFRX1 \s3_reg[21]  ( .D(n658), .CK(clk), .RN(n2640), .Q(s3[21]), .QN(n2489)
         );
  DFFRX1 \s3_reg[22]  ( .D(n664), .CK(clk), .RN(n2642), .Q(s3[22]), .QN(n2488)
         );
  DFFRX1 \s3_reg[20]  ( .D(n652), .CK(clk), .RN(n2642), .Q(s3[20]), .QN(n2487)
         );
  DFFRX1 \s1_reg[20]  ( .D(n650), .CK(clk), .RN(n2642), .Q(s1[20]), .QN(n2493)
         );
  DFFRX1 \s3_reg[19]  ( .D(n646), .CK(clk), .RN(n2643), .Q(s3[19]), .QN(n2486)
         );
  DFFRX1 \s1_reg[19]  ( .D(n644), .CK(clk), .RN(n2643), .Q(s1[19]), .QN(n2492)
         );
  DFFRX1 \s4_reg[15]  ( .D(n623), .CK(clk), .RN(n2640), .Q(s4[15]), .QN(n2527)
         );
  DFFRX1 \ns1_reg[11]  ( .D(n530), .CK(clk), .RN(n2642), .Q(ns1[11]), .QN(
        n2435) );
  DFFRX1 \s3_reg[14]  ( .D(n616), .CK(clk), .RN(n2642), .Q(s3[14]), .QN(n2529)
         );
  DFFRX1 \s3_reg[15]  ( .D(n622), .CK(clk), .RN(n2639), .Q(s3[15]), .QN(n2480)
         );
  DFFRX1 \s3_reg[17]  ( .D(n634), .CK(clk), .RN(n2643), .Q(s3[17]), .QN(n2485)
         );
  DFFRX1 \s2_reg[15]  ( .D(n621), .CK(clk), .RN(n2640), .Q(s2[15]), .QN(n2528)
         );
  TBUFXL \Yn_tri[0]  ( .A(sum[7]), .OE(n2656), .Y(Yn[0]) );
  TBUFXL \Yn_tri[1]  ( .A(sum[8]), .OE(n2657), .Y(Yn[1]) );
  TBUFXL \Yn_tri[2]  ( .A(sum[9]), .OE(n2658), .Y(Yn[2]) );
  TBUFXL \Yn_tri[3]  ( .A(sum[10]), .OE(WEN), .Y(Yn[3]) );
  TBUFXL \Yn_tri[4]  ( .A(sum[11]), .OE(n2655), .Y(Yn[4]) );
  TBUFXL \Yn_tri[5]  ( .A(sum[12]), .OE(n2656), .Y(Yn[5]) );
  TBUFXL \Yn_tri[6]  ( .A(sum[13]), .OE(n2657), .Y(Yn[6]) );
  TBUFXL \Yn_tri[10]  ( .A(sum[17]), .OE(n2658), .Y(Yn[10]) );
  TBUFXL \Yn_tri[11]  ( .A(sum[18]), .OE(WEN), .Y(Yn[11]) );
  TBUFXL \Yn_tri[12]  ( .A(sum[19]), .OE(n2655), .Y(Yn[12]) );
  TBUFXL \Yn_tri[13]  ( .A(sum[20]), .OE(n2656), .Y(Yn[13]) );
  TBUFXL \Yn_tri[14]  ( .A(sum[21]), .OE(n2657), .Y(Yn[14]) );
  TBUFXL \Yn_tri[15]  ( .A(sum[24]), .OE(n2658), .Y(Yn[15]) );
  TBUFXL \Yn_tri[7]  ( .A(sum[14]), .OE(WEN), .Y(Yn[7]) );
  TBUFXL \Yn_tri[8]  ( .A(sum[15]), .OE(n2655), .Y(Yn[8]) );
  TBUFXL \Yn_tri[9]  ( .A(sum[16]), .OE(n2656), .Y(Yn[9]) );
  DFFRX1 \s2_reg[21]  ( .D(n657), .CK(clk), .RN(n2641), .Q(s2[21]), .QN(n2562)
         );
  DFFRX1 \s2_reg[18]  ( .D(n639), .CK(clk), .RN(n2641), .Q(s2[18]), .QN(n2561)
         );
  DFFRX1 \s4_reg[21]  ( .D(n659), .CK(clk), .RN(n2641), .Q(s4[21]), .QN(n2560)
         );
  DFFRX1 \s4_reg[18]  ( .D(n641), .CK(clk), .RN(n2641), .Q(s4[18]), .QN(n2559)
         );
  DFFRX1 \s4_reg[22]  ( .D(n665), .CK(clk), .RN(n2643), .Q(s4[22]), .QN(n2558)
         );
  DFFRX1 \s2_reg[22]  ( .D(n663), .CK(clk), .RN(n2643), .Q(s2[22]), .QN(n2557)
         );
  DFFRX1 \s4_reg[20]  ( .D(n653), .CK(clk), .RN(n2644), .Q(s4[20]), .QN(n2556)
         );
  DFFRX1 \s2_reg[20]  ( .D(n651), .CK(clk), .RN(n2644), .Q(s2[20]), .QN(n2555)
         );
  DFFRX1 \s4_reg[19]  ( .D(n647), .CK(clk), .RN(n2644), .Q(s4[19]), .QN(n2554)
         );
  DFFRX1 \s2_reg[19]  ( .D(n645), .CK(clk), .RN(n2644), .Q(s2[19]), .QN(n2553)
         );
  DFFRX1 \s4_reg[17]  ( .D(n635), .CK(clk), .RN(n2644), .Q(s4[17]), .QN(n2552)
         );
  DFFRX1 \s4_reg[23]  ( .D(n563), .CK(clk), .RN(n2644), .Q(s4[23]), .QN(n2551)
         );
  DFFRX1 \s2_reg[23]  ( .D(n561), .CK(clk), .RN(n2644), .Q(s2[23]), .QN(n2550)
         );
  DFFRX1 \s2_reg[17]  ( .D(n633), .CK(clk), .RN(n2644), .Q(s2[17]), .QN(n2549)
         );
  DFFRX1 \s3_reg[16]  ( .D(n628), .CK(clk), .RN(n2643), .Q(s3[16]), .QN(n2548)
         );
  DFFRX1 \s1_reg[16]  ( .D(n626), .CK(clk), .RN(n2644), .Q(s1[16]), .QN(n2547)
         );
  DFFRX1 \s1_reg[17]  ( .D(n632), .CK(clk), .RN(n2643), .Q(s1[17]), .QN(n2510)
         );
  DFFRX1 \s3_reg[18]  ( .D(n640), .CK(clk), .RN(n2640), .Q(s3[18]), .QN(n2509)
         );
  DFFRX1 \s4_reg[16]  ( .D(n629), .CK(clk), .RN(n2644), .Q(s4[16]), .QN(n2508)
         );
  DFFRX1 \s2_reg[16]  ( .D(n627), .CK(clk), .RN(n2644), .Q(s2[16]), .QN(n2507)
         );
  OAI21XL U1709 ( .A0(n2461), .A1(n2252), .B0(n2253), .Y(n2249) );
  OAI21XL U1710 ( .A0(n2429), .A1(n2155), .B0(n2156), .Y(n2152) );
  CLKINVX1 U1711 ( .A(n2718), .Y(n2715) );
  CLKINVX1 U1712 ( .A(n2708), .Y(n2705) );
  CLKINVX1 U1713 ( .A(n2723), .Y(n2719) );
  CLKINVX1 U1714 ( .A(n2712), .Y(n2710) );
  CLKINVX1 U1715 ( .A(n2707), .Y(n2704) );
  CLKINVX1 U1716 ( .A(n2717), .Y(n2714) );
  OAI21XL U1717 ( .A0(n2438), .A1(n2335), .B0(n2336), .Y(n2329) );
  CLKINVX1 U1718 ( .A(n2722), .Y(n2720) );
  OAI21XL U1719 ( .A0(n2427), .A1(n2222), .B0(n2223), .Y(n2219) );
  OAI22XL U1720 ( .A0(n2441), .A1(n2034), .B0(n2035), .B1(n2477), .Y(n2031) );
  CLKINVX1 U1721 ( .A(n2713), .Y(n2709) );
  CLKINVX1 U1722 ( .A(n2477), .Y(n2698) );
  OAI21XL U1723 ( .A0(n2439), .A1(n2132), .B0(n2133), .Y(n2129) );
  CLKBUFX3 U1724 ( .A(s0[24]), .Y(n2702) );
  CLKBUFX3 U1725 ( .A(s0[24]), .Y(n2701) );
  CLKBUFX3 U1726 ( .A(N740), .Y(n2681) );
  CLKBUFX3 U1727 ( .A(N71), .Y(n2687) );
  CLKBUFX3 U1728 ( .A(s0[24]), .Y(n2700) );
  CLKBUFX3 U1729 ( .A(N71), .Y(n2686) );
  CLKBUFX3 U1730 ( .A(N590), .Y(n2684) );
  CLKBUFX3 U1731 ( .A(N740), .Y(n2680) );
  CLKBUFX3 U1732 ( .A(N890), .Y(n2674) );
  CLKBUFX3 U1733 ( .A(N890), .Y(n2676) );
  CLKBUFX3 U1734 ( .A(s0[24]), .Y(n2699) );
  CLKBUFX3 U1735 ( .A(N740), .Y(n2679) );
  CLKBUFX3 U1736 ( .A(N890), .Y(n2678) );
  CLKBUFX3 U1737 ( .A(N890), .Y(n2677) );
  CLKBUFX3 U1738 ( .A(N890), .Y(n2675) );
  CLKBUFX3 U1739 ( .A(N665), .Y(n2682) );
  NOR2X1 U1740 ( .A(n2744), .B(state[1]), .Y(next_state[1]) );
  NAND2X1 U1741 ( .A(state[1]), .B(n2744), .Y(n1954) );
  CLKINVX1 U1742 ( .A(rst), .Y(n2724) );
  CLKINVX1 U1743 ( .A(n2661), .Y(WEN) );
  CLKINVX1 U1744 ( .A(n2661), .Y(n2655) );
  CLKINVX1 U1745 ( .A(n2660), .Y(n2656) );
  CLKINVX1 U1746 ( .A(n2660), .Y(n2657) );
  CLKINVX1 U1747 ( .A(n2659), .Y(n2658) );
  OAI22XL U1748 ( .A0(n2421), .A1(n2387), .B0(n2388), .B1(n2465), .Y(n2384) );
  AND2X2 U1749 ( .A(n2387), .B(n2421), .Y(n2388) );
  OAI22XL U1750 ( .A0(n2513), .A1(n2396), .B0(n2397), .B1(n2421), .Y(n2393) );
  AND2X2 U1751 ( .A(n2396), .B(n2513), .Y(n2397) );
  OAI22XL U1752 ( .A0(n2419), .A1(n2182), .B0(n2183), .B1(n2437), .Y(n2179) );
  AND2X2 U1753 ( .A(n2182), .B(n2419), .Y(n2183) );
  OAI22XL U1754 ( .A0(n2425), .A1(n2173), .B0(n2174), .B1(n2417), .Y(n2170) );
  AND2X2 U1755 ( .A(n2173), .B(n2425), .Y(n2174) );
  OAI22XL U1756 ( .A0(n2441), .A1(n1984), .B0(n1985), .B1(n2521), .Y(n1981) );
  AND2X2 U1757 ( .A(n1984), .B(n2441), .Y(n1985) );
  OAI22XL U1758 ( .A0(n2518), .A1(n2347), .B0(n2348), .B1(n2458), .Y(n2344) );
  AND2X2 U1759 ( .A(n2347), .B(n2518), .Y(n2348) );
  OAI22XL U1760 ( .A0(n2512), .A1(n2294), .B0(n2295), .B1(n2468), .Y(n2291) );
  AND2X2 U1761 ( .A(n2294), .B(n2512), .Y(n2295) );
  OAI22XL U1762 ( .A0(n2420), .A1(n2231), .B0(n2232), .B1(n2437), .Y(n2228) );
  AND2X2 U1763 ( .A(n2231), .B(n2420), .Y(n2232) );
  OAI22XL U1764 ( .A0(n2438), .A1(n2282), .B0(n2283), .B1(n2474), .Y(n2279) );
  AND2X2 U1765 ( .A(n2282), .B(n2438), .Y(n2283) );
  OAI22XL U1766 ( .A0(n2523), .A1(n1975), .B0(n1976), .B1(n2478), .Y(n1972) );
  AND2X2 U1767 ( .A(n1975), .B(n2523), .Y(n1976) );
  OAI22XL U1768 ( .A0(n2471), .A1(n2213), .B0(n2214), .B1(n2428), .Y(n2210) );
  AND2X2 U1769 ( .A(n2213), .B(n2471), .Y(n2214) );
  OAI22XL U1770 ( .A0(n2418), .A1(n1966), .B0(n1967), .B1(n2431), .Y(n1963) );
  AND2X2 U1771 ( .A(n1966), .B(n2418), .Y(n1967) );
  OAI22XL U1772 ( .A0(n2430), .A1(n2204), .B0(n2205), .B1(n2448), .Y(n2198) );
  AND2X2 U1773 ( .A(n2204), .B(n2430), .Y(n2205) );
  OAI21XL U1774 ( .A0(n2263), .A1(n2264), .B0(n2265), .Y(n2261) );
  OAI21XL U1775 ( .A0(n2479), .A1(n2007), .B0(n2008), .Y(n2005) );
  OAI2BB1X1 U1776 ( .A0N(n2007), .A1N(n2479), .B0(ns3[24]), .Y(n2008) );
  XNOR2X1 U1777 ( .A(n2261), .B(n2262), .Y(N587) );
  XOR2X1 U1778 ( .A(n2030), .B(n2029), .Y(N857) );
  XOR2X1 U1779 ( .A(n2521), .B(n2698), .Y(n2030) );
  XNOR2X1 U1780 ( .A(n2024), .B(n2022), .Y(N859) );
  XOR2X1 U1781 ( .A(n2525), .B(n2698), .Y(n2024) );
  XNOR2X1 U1782 ( .A(n2021), .B(n2019), .Y(N860) );
  XOR2X1 U1783 ( .A(n2478), .B(n2698), .Y(n2021) );
  XNOR2X1 U1784 ( .A(n2015), .B(n2013), .Y(N862) );
  XOR2X1 U1785 ( .A(n2447), .B(n2698), .Y(n2015) );
  XNOR2X1 U1786 ( .A(n2012), .B(n2010), .Y(N863) );
  XOR2X1 U1787 ( .A(n2431), .B(n2698), .Y(n2012) );
  NOR2BX1 U1788 ( .AN(n2265), .B(n2263), .Y(n2266) );
  CLKBUFX3 U1789 ( .A(n2653), .Y(n2671) );
  CLKBUFX3 U1790 ( .A(n2653), .Y(n2673) );
  CLKINVX1 U1791 ( .A(n2692), .Y(n2697) );
  CLKBUFX3 U1792 ( .A(n2653), .Y(n2672) );
  CLKINVX1 U1793 ( .A(n2690), .Y(n2696) );
  OAI22XL U1794 ( .A0(n2658), .A1(n2431), .B0(n2668), .B1(n2448), .Y(n464) );
  OAI22XL U1795 ( .A0(n2657), .A1(n2478), .B0(n2668), .B1(n2428), .Y(n482) );
  OAI22XL U1796 ( .A0(n2656), .A1(n2521), .B0(n2669), .B1(n2417), .Y(n500) );
  OAI22XL U1797 ( .A0(n2657), .A1(n2424), .B0(n2669), .B1(n2437), .Y(n518) );
  OAI22XL U1798 ( .A0(n2656), .A1(n2447), .B0(n2668), .B1(n2430), .Y(n470) );
  OAI22XL U1799 ( .A0(n2656), .A1(n2525), .B0(n2669), .B1(n2471), .Y(n488) );
  OAI22XL U1800 ( .A0(n2655), .A1(n2418), .B0(n2668), .B1(n2429), .Y(n476) );
  OAI22XL U1801 ( .A0(n2657), .A1(n2523), .B0(n2669), .B1(n2469), .Y(n494) );
  OAI22XL U1802 ( .A0(WEN), .A1(n2441), .B0(n2669), .B1(n2425), .Y(n512) );
  OAI22XL U1803 ( .A0(n2655), .A1(n2443), .B0(n2669), .B1(n2427), .Y(n506) );
  OAI22XL U1804 ( .A0(n2656), .A1(n2473), .B0(n2670), .B1(n2420), .Y(n524) );
  OAI22XL U1805 ( .A0(n2656), .A1(n2516), .B0(n2670), .B1(n2455), .Y(n536) );
  OAI22XL U1806 ( .A0(n2658), .A1(n2428), .B0(n2669), .B1(n2446), .Y(n483) );
  OAI22XL U1807 ( .A0(n2657), .A1(n2524), .B0(n2668), .B1(n2418), .Y(n475) );
  OAI22XL U1808 ( .A0(n2656), .A1(n2476), .B0(n2669), .B1(n2523), .Y(n493) );
  OAI22XL U1809 ( .A0(n2656), .A1(n2462), .B0(n2670), .B1(n2535), .Y(n542) );
  OAI22XL U1810 ( .A0(n2655), .A1(n2706), .B0(n2662), .B1(n2711), .Y(n566) );
  OAI22XL U1811 ( .A0(n2655), .A1(n2716), .B0(n2662), .B1(n2721), .Y(n568) );
  OAI22XL U1812 ( .A0(n2655), .A1(n2711), .B0(n2662), .B1(n2716), .Y(n567) );
  CLKBUFX3 U1813 ( .A(n2651), .Y(n2665) );
  CLKBUFX3 U1814 ( .A(n2651), .Y(n2666) );
  CLKBUFX3 U1815 ( .A(n2650), .Y(n2664) );
  CLKBUFX3 U1816 ( .A(n2652), .Y(n2669) );
  CLKBUFX3 U1817 ( .A(n2650), .Y(n2663) );
  CLKBUFX3 U1818 ( .A(n2651), .Y(n2667) );
  CLKBUFX3 U1819 ( .A(n2652), .Y(n2668) );
  CLKBUFX3 U1820 ( .A(n2649), .Y(n2661) );
  CLKBUFX3 U1821 ( .A(n2649), .Y(n2660) );
  CLKBUFX3 U1822 ( .A(n2649), .Y(n2659) );
  CLKBUFX3 U1823 ( .A(n2652), .Y(n2670) );
  CLKBUFX3 U1824 ( .A(n2650), .Y(n2662) );
  CLKBUFX3 U1825 ( .A(n2623), .Y(n2645) );
  CLKBUFX3 U1826 ( .A(n2623), .Y(n2644) );
  CLKBUFX3 U1827 ( .A(n2623), .Y(n2643) );
  CLKBUFX3 U1828 ( .A(n2622), .Y(n2642) );
  CLKBUFX3 U1829 ( .A(n2622), .Y(n2641) );
  CLKBUFX3 U1830 ( .A(n2622), .Y(n2640) );
  CLKBUFX3 U1831 ( .A(n2621), .Y(n2639) );
  CLKBUFX3 U1832 ( .A(n2621), .Y(n2638) );
  CLKBUFX3 U1833 ( .A(n2621), .Y(n2637) );
  CLKBUFX3 U1834 ( .A(n2620), .Y(n2636) );
  CLKBUFX3 U1835 ( .A(n2620), .Y(n2635) );
  CLKBUFX3 U1836 ( .A(n2620), .Y(n2634) );
  CLKBUFX3 U1837 ( .A(n2619), .Y(n2633) );
  CLKBUFX3 U1838 ( .A(n2619), .Y(n2632) );
  CLKBUFX3 U1839 ( .A(n2619), .Y(n2631) );
  CLKBUFX3 U1840 ( .A(n2618), .Y(n2630) );
  CLKBUFX3 U1841 ( .A(n2618), .Y(n2629) );
  CLKBUFX3 U1842 ( .A(n2618), .Y(n2628) );
  CLKBUFX3 U1843 ( .A(n2617), .Y(n2627) );
  CLKBUFX3 U1844 ( .A(n2617), .Y(n2626) );
  CLKBUFX3 U1845 ( .A(n2617), .Y(n2625) );
  AOI2BB2X1 U1846 ( .B0(n2152), .B1(n2580), .A0N(n2153), .A1N(n2442), .Y(n2150) );
  NOR2X1 U1847 ( .A(n2580), .B(n2152), .Y(n2153) );
  AOI2BB2X1 U1848 ( .B0(n2384), .B1(n2598), .A0N(n2385), .A1N(n2460), .Y(n2382) );
  NOR2X1 U1849 ( .A(n2598), .B(n2384), .Y(n2385) );
  AOI2BB2X1 U1850 ( .B0(n2249), .B1(n2599), .A0N(n2250), .A1N(n2460), .Y(n2234) );
  NOR2X1 U1851 ( .A(n2599), .B(n2249), .Y(n2250) );
  XNOR2X1 U1852 ( .A(n2209), .B(n2207), .Y(N637) );
  XNOR2X1 U1853 ( .A(n2148), .B(n2146), .Y(N662) );
  XOR2X1 U1854 ( .A(n2429), .B(n2580), .Y(n2209) );
  OAI22XL U1855 ( .A0(n2605), .A1(n2399), .B0(n2596), .B1(n2400), .Y(n2396) );
  AND2X2 U1856 ( .A(n2399), .B(n2605), .Y(n2400) );
  OAI22XL U1857 ( .A0(n2585), .A1(n2185), .B0(n2594), .B1(n2186), .Y(n2182) );
  AND2X2 U1858 ( .A(n2185), .B(n2585), .Y(n2186) );
  OAI22XL U1859 ( .A0(n2596), .A1(n2390), .B0(n2604), .B1(n2391), .Y(n2387) );
  AND2X2 U1860 ( .A(n2390), .B(n2596), .Y(n2391) );
  OAI22XL U1861 ( .A0(n2584), .A1(n2176), .B0(n2593), .B1(n2177), .Y(n2173) );
  AND2X2 U1862 ( .A(n2176), .B(n2584), .Y(n2177) );
  OAI22XL U1863 ( .A0(n2604), .A1(n2745), .B0(n2600), .B1(n2381), .Y(n2378) );
  CLKINVX1 U1864 ( .A(n2382), .Y(n2745) );
  NOR2X1 U1865 ( .A(n2382), .B(n2461), .Y(n2381) );
  OAI2BB1X1 U1866 ( .A0N(n2252), .A1N(n2461), .B0(n2599), .Y(n2253) );
  OAI22XL U1867 ( .A0(n2602), .A1(n2313), .B0(n2596), .B1(n2314), .Y(n2288) );
  AND2X2 U1868 ( .A(n2313), .B(n2602), .Y(n2314) );
  OAI22XL U1869 ( .A0(n2581), .A1(n2158), .B0(n2580), .B1(n2159), .Y(n2155) );
  AND2X2 U1870 ( .A(n2158), .B(n2581), .Y(n2159) );
  OAI22XL U1871 ( .A0(n2465), .A1(n2378), .B0(n2379), .B1(n2440), .Y(n2375) );
  AND2X2 U1872 ( .A(n2378), .B(n2465), .Y(n2379) );
  OAI22XL U1873 ( .A0(n2686), .A1(n2372), .B0(n2600), .B1(n2373), .Y(n2371) );
  AND2X2 U1874 ( .A(n2372), .B(n2686), .Y(n2373) );
  XNOR2X1 U1875 ( .A(n2252), .B(n2254), .Y(N60) );
  XNOR2X1 U1876 ( .A(n2395), .B(n2393), .Y(N40) );
  XOR2X1 U1877 ( .A(n2599), .B(n2604), .Y(n2254) );
  XNOR2X1 U1878 ( .A(n2200), .B(n2371), .Y(N48) );
  XNOR2X1 U1879 ( .A(n2251), .B(n2249), .Y(N61) );
  XNOR2X1 U1880 ( .A(n2392), .B(n2390), .Y(N41) );
  XOR2X1 U1881 ( .A(n2460), .B(n2599), .Y(n2251) );
  XOR2X1 U1882 ( .A(n2248), .B(n2234), .Y(N62) );
  XNOR2X1 U1883 ( .A(n2387), .B(n2389), .Y(N42) );
  XOR2X1 U1884 ( .A(n2460), .B(n2600), .Y(n2248) );
  OAI21XL U1885 ( .A0(n2434), .A1(n2405), .B0(n2406), .Y(n2402) );
  OAI2BB1X1 U1886 ( .A0N(n2405), .A1N(n2434), .B0(n2609), .Y(n2406) );
  OAI21XL U1887 ( .A0(n2469), .A1(n2164), .B0(n2165), .Y(n2161) );
  OAI2BB1X1 U1888 ( .A0N(n2164), .A1N(n2469), .B0(n2581), .Y(n2165) );
  OAI2BB1X1 U1889 ( .A0N(n2393), .A1N(n2602), .B0(n2394), .Y(n2390) );
  OAI21XL U1890 ( .A0(n2602), .A1(n2393), .B0(n2598), .Y(n2394) );
  OAI2BB1X1 U1891 ( .A0N(n2179), .A1N(n2594), .B0(n2180), .Y(n2176) );
  OAI21XL U1892 ( .A0(n2594), .A1(n2179), .B0(n2588), .Y(n2180) );
  OAI2BB1X1 U1893 ( .A0N(n2170), .A1N(n2593), .B0(n2171), .Y(n2167) );
  OAI21XL U1894 ( .A0(n2593), .A1(n2170), .B0(n2587), .Y(n2171) );
  OAI2BB1X1 U1895 ( .A0N(n2332), .A1N(n2609), .B0(n2333), .Y(n2313) );
  OAI21XL U1896 ( .A0(n2609), .A1(n2332), .B0(n2602), .Y(n2333) );
  OAI2BB1X1 U1897 ( .A0N(n2258), .A1N(n2597), .B0(n2259), .Y(n2255) );
  OAI21XL U1898 ( .A0(n2597), .A1(n2258), .B0(n2598), .Y(n2259) );
  OAI2BB1X1 U1899 ( .A0N(n2161), .A1N(n2592), .B0(n2162), .Y(n2158) );
  OAI21XL U1900 ( .A0(n2592), .A1(n2161), .B0(n2579), .Y(n2162) );
  XNOR2X1 U1901 ( .A(n2315), .B(n2262), .Y(N565) );
  OAI2BB1X1 U1902 ( .A0N(n2363), .A1N(n2605), .B0(n2364), .Y(n2332) );
  OAI21XL U1903 ( .A0(n2605), .A1(n2363), .B0(n2609), .Y(n2364) );
  AOI32X1 U1904 ( .A0(n2595), .A1(N623), .A2(n2194), .B0(N645), .B1(n2585), 
        .Y(n2191) );
  OAI21XL U1905 ( .A0(n2514), .A1(n2288), .B0(n2289), .Y(n2258) );
  OAI2BB1X1 U1906 ( .A0N(n2288), .A1N(n2514), .B0(n2597), .Y(n2289) );
  OAI2BB1X1 U1907 ( .A0N(n2155), .A1N(n2429), .B0(n2582), .Y(n2156) );
  OAI21XL U1908 ( .A0(n2191), .A1(n2419), .B0(n2192), .Y(n2185) );
  OAI2BB1X1 U1909 ( .A0N(n2419), .A1N(n2191), .B0(n2595), .Y(n2192) );
  OAI21XL U1910 ( .A0(n2187), .A1(n2371), .B0(n2189), .Y(N49) );
  XNOR2X1 U1911 ( .A(n2188), .B(n2200), .Y(N64) );
  XOR2X1 U1912 ( .A(n2383), .B(n2382), .Y(N44) );
  XOR2X1 U1913 ( .A(n2467), .B(n2604), .Y(n2383) );
  XNOR2X1 U1914 ( .A(n2203), .B(n2198), .Y(N639) );
  XOR2X1 U1915 ( .A(n2442), .B(n2582), .Y(n2203) );
  NAND2X1 U1916 ( .A(n2454), .B(n2434), .Y(n2414) );
  XNOR2X1 U1917 ( .A(n2233), .B(n2201), .Y(N63) );
  XNOR2X1 U1918 ( .A(n2386), .B(n2384), .Y(N43) );
  XOR2X1 U1919 ( .A(n2440), .B(n2600), .Y(n2233) );
  XNOR2X1 U1920 ( .A(n2212), .B(n2210), .Y(N636) );
  XOR2X1 U1921 ( .A(n2150), .B(n2151), .Y(N661) );
  XOR2X1 U1922 ( .A(n2428), .B(n2579), .Y(n2212) );
  OAI22XL U1923 ( .A0(n2452), .A1(n2366), .B0(n2367), .B1(n2511), .Y(n2363) );
  AND2X2 U1924 ( .A(n2366), .B(n2452), .Y(n2367) );
  OAI22XL U1925 ( .A0(n2598), .A1(n2255), .B0(n2604), .B1(n2256), .Y(n2252) );
  AND2X2 U1926 ( .A(n2255), .B(n2598), .Y(n2256) );
  OAI22XL U1927 ( .A0(n2583), .A1(n2167), .B0(n2592), .B1(n2168), .Y(n2164) );
  AND2X2 U1928 ( .A(n2167), .B(n2583), .Y(n2168) );
  AOI2BB2X1 U1929 ( .B0(n1981), .B1(n2576), .A0N(n1982), .A1N(n2523), .Y(n1979) );
  NOR2X1 U1930 ( .A(n2576), .B(n1981), .Y(n1982) );
  AOI2BB2X1 U1931 ( .B0(n2031), .B1(n2576), .A0N(n2032), .A1N(n2477), .Y(n2029) );
  NOR2X1 U1932 ( .A(n2576), .B(n2031), .Y(n2032) );
  AOI2BB2X1 U1933 ( .B0(n2329), .B1(n2612), .A0N(n2330), .A1N(n2519), .Y(n2327) );
  NOR2X1 U1934 ( .A(n2612), .B(n2329), .Y(n2330) );
  AOI2BB2X1 U1935 ( .B0(n2219), .B1(n2583), .A0N(n2220), .A1N(n2469), .Y(n2217) );
  NOR2X1 U1936 ( .A(n2583), .B(n2219), .Y(n2220) );
  AOI2BB2X1 U1937 ( .B0(n2063), .B1(n2614), .A0N(n2064), .A1N(n2477), .Y(n2061) );
  NOR2X1 U1938 ( .A(n2614), .B(n2063), .Y(n2064) );
  AND2X2 U1939 ( .A(n2034), .B(n2441), .Y(n2035) );
  OAI22XL U1940 ( .A0(n2303), .A1(N569), .B0(n2607), .B1(n2304), .Y(n2300) );
  AND2X2 U1941 ( .A(n2303), .B(N569), .Y(n2304) );
  OAI22XL U1942 ( .A0(n1960), .A1(n2675), .B0(n2566), .B1(n1961), .Y(n1957) );
  AND2X2 U1943 ( .A(n1960), .B(n2675), .Y(n1961) );
  OAI22XL U1944 ( .A0(n2578), .A1(n1996), .B0(n2577), .B1(n1997), .Y(n1993) );
  AND2X2 U1945 ( .A(n1996), .B(n2578), .Y(n1997) );
  OAI22XL U1946 ( .A0(N570), .A1(n2350), .B0(n2615), .B1(n2351), .Y(n2347) );
  AND2X2 U1947 ( .A(n2350), .B(N570), .Y(n2351) );
  OAI22XL U1948 ( .A0(n2586), .A1(n2237), .B0(n2594), .B1(n2238), .Y(n2231) );
  AND2X2 U1949 ( .A(n2237), .B(n2586), .Y(n2238) );
  OAI22XL U1950 ( .A0(n2569), .A1(n1987), .B0(n2576), .B1(n1988), .Y(n1984) );
  AND2X2 U1951 ( .A(n1987), .B(n2569), .Y(n1988) );
  OAI22XL U1952 ( .A0(n2569), .A1(n2037), .B0(n2698), .B1(n2038), .Y(n2034) );
  AND2X2 U1953 ( .A(n2037), .B(n2569), .Y(n2038) );
  OAI22XL U1954 ( .A0(n2607), .A1(n2285), .B0(n2613), .B1(n2286), .Y(n2282) );
  AND2X2 U1955 ( .A(n2285), .B(n2607), .Y(n2286) );
  OAI22XL U1956 ( .A0(n2568), .A1(n2751), .B0(n2571), .B1(n1978), .Y(n1975) );
  CLKINVX1 U1957 ( .A(n1979), .Y(n2751) );
  NOR2X1 U1958 ( .A(n1979), .B(n2521), .Y(n1978) );
  OAI22XL U1959 ( .A0(n2568), .A1(n2750), .B0(n2698), .B1(n2028), .Y(n2025) );
  CLKINVX1 U1960 ( .A(n2029), .Y(n2750) );
  NOR2X1 U1961 ( .A(n2029), .B(n2521), .Y(n2028) );
  OAI22XL U1962 ( .A0(n2567), .A1(n1969), .B0(n2570), .B1(n1970), .Y(n1966) );
  AND2X2 U1963 ( .A(n1969), .B(n2567), .Y(n1970) );
  OAI22XL U1964 ( .A0(n2567), .A1(n2019), .B0(n2698), .B1(n2020), .Y(n2016) );
  AND2X2 U1965 ( .A(n2019), .B(n2567), .Y(n2020) );
  OAI22XL U1966 ( .A0(n2579), .A1(n2207), .B0(n2580), .B1(n2208), .Y(n2204) );
  AND2X2 U1967 ( .A(n2207), .B(n2579), .Y(n2208) );
  XNOR2X1 U1968 ( .A(n2242), .B(n2240), .Y(N627) );
  XNOR2X1 U1969 ( .A(n2178), .B(n2176), .Y(N652) );
  XOR2X1 U1970 ( .A(n2419), .B(n2585), .Y(n2242) );
  XNOR2X1 U1971 ( .A(n2230), .B(n2228), .Y(N630) );
  XNOR2X1 U1972 ( .A(n2169), .B(n2167), .Y(N655) );
  XOR2X1 U1973 ( .A(n2437), .B(n2588), .Y(n2230) );
  XNOR2X1 U1974 ( .A(n2221), .B(n2219), .Y(N633) );
  XNOR2X1 U1975 ( .A(n2160), .B(n2158), .Y(N658) );
  XOR2X1 U1976 ( .A(n2417), .B(n2587), .Y(n2221) );
  XNOR2X1 U1977 ( .A(n2239), .B(n2237), .Y(N628) );
  XNOR2X1 U1978 ( .A(n2173), .B(n2175), .Y(N653) );
  XOR2X1 U1979 ( .A(n2419), .B(n2594), .Y(n2239) );
  XNOR2X1 U1980 ( .A(n2227), .B(n2225), .Y(N631) );
  XNOR2X1 U1981 ( .A(n2164), .B(n2166), .Y(N656) );
  XOR2X1 U1982 ( .A(n2425), .B(n2593), .Y(n2227) );
  XOR2X1 U1983 ( .A(n2218), .B(n2217), .Y(N634) );
  XNOR2X1 U1984 ( .A(n2155), .B(n2157), .Y(N659) );
  XOR2X1 U1985 ( .A(n2469), .B(n2592), .Y(n2218) );
  XNOR2X1 U1986 ( .A(n2007), .B(n2009), .Y(N864) );
  XOR2X1 U1987 ( .A(n2698), .B(n2574), .Y(n2009) );
  OAI2BB1X1 U1988 ( .A0N(n2335), .A1N(n2438), .B0(n2603), .Y(n2336) );
  OAI22XL U1989 ( .A0(n2435), .A1(n1993), .B0(n1994), .B1(n2424), .Y(n1990) );
  AND2X2 U1990 ( .A(n1993), .B(n2435), .Y(n1994) );
  OAI22XL U1991 ( .A0(n2564), .A1(n2123), .B0(n2124), .B1(n2464), .Y(n2120) );
  AND2X2 U1992 ( .A(n2123), .B(n2564), .Y(n2124) );
  OAI22XL U1993 ( .A0(n2472), .A1(n2114), .B0(n2115), .B1(n2444), .Y(n2111) );
  AND2X2 U1994 ( .A(n2114), .B(n2472), .Y(n2115) );
  OAI22XL U1995 ( .A0(n2523), .A1(n2025), .B0(n2026), .B1(n2477), .Y(n2022) );
  AND2X2 U1996 ( .A(n2025), .B(n2523), .Y(n2026) );
  OAI22XL U1997 ( .A0(n2519), .A1(n2323), .B0(n2324), .B1(n2474), .Y(n2320) );
  AND2X2 U1998 ( .A(n2323), .B(n2519), .Y(n2324) );
  OAI22XL U1999 ( .A0(n2418), .A1(n2016), .B0(n2017), .B1(n2477), .Y(n2013) );
  AND2X2 U2000 ( .A(n2016), .B(n2418), .Y(n2017) );
  OAI22XL U2001 ( .A0(n2607), .A1(n2338), .B0(n2612), .B1(n2339), .Y(n2335) );
  AND2X2 U2002 ( .A(n2338), .B(n2607), .Y(n2339) );
  OAI22XL U2003 ( .A0(n2588), .A1(n2225), .B0(n2593), .B1(n2226), .Y(n2222) );
  AND2X2 U2004 ( .A(n2225), .B(n2588), .Y(n2226) );
  OAI22XL U2005 ( .A0(n2566), .A1(n2010), .B0(n2698), .B1(n2011), .Y(n2007) );
  AND2X2 U2006 ( .A(n2010), .B(n2566), .Y(n2011) );
  OAI22XL U2007 ( .A0(n2685), .A1(n2267), .B0(n2601), .B1(n2268), .Y(n2264) );
  AND2X2 U2008 ( .A(n2267), .B(n2685), .Y(n2268) );
  XNOR2X1 U2009 ( .A(n2281), .B(n2279), .Y(N581) );
  XNOR2X1 U2010 ( .A(n2608), .B(n2612), .Y(n2281) );
  OAI21XL U2011 ( .A0(n1999), .A1(n2435), .B0(n2000), .Y(n1996) );
  AO21X1 U2012 ( .A0(n2435), .A1(n1999), .B0(n2462), .Y(n2000) );
  OAI21XL U2013 ( .A0(n2049), .A1(n2462), .B0(n2050), .Y(n2046) );
  AO21X1 U2014 ( .A0(n2462), .A1(n2049), .B0(n2520), .Y(n2050) );
  XNOR2X1 U2015 ( .A(n2104), .B(n2102), .Y(N736) );
  XOR2X1 U2016 ( .A(n2445), .B(n2591), .Y(n2104) );
  OAI21XL U2017 ( .A0(n2359), .A1(N548), .B0(n2360), .Y(n2356) );
  AO21X1 U2018 ( .A0(N548), .A1(n2359), .B0(N569), .Y(n2360) );
  XNOR2X1 U2019 ( .A(n2264), .B(n2266), .Y(N586) );
  XNOR2X1 U2020 ( .A(n2278), .B(n2276), .Y(N582) );
  XOR2X1 U2021 ( .A(n2470), .B(n2603), .Y(n2278) );
  XNOR2X1 U2022 ( .A(n2331), .B(n2313), .Y(N56) );
  XNOR2X1 U2023 ( .A(n2405), .B(n2407), .Y(N36) );
  XOR2X1 U2024 ( .A(n2456), .B(n2596), .Y(n2331) );
  XNOR2X1 U2025 ( .A(n2257), .B(n2255), .Y(N59) );
  XNOR2X1 U2026 ( .A(n2396), .B(n2398), .Y(N39) );
  XOR2X1 U2027 ( .A(n2459), .B(n2604), .Y(n2257) );
  XNOR2X1 U2028 ( .A(n2282), .B(n2284), .Y(N580) );
  XOR2X1 U2029 ( .A(n2601), .B(n2611), .Y(n2284) );
  OAI21XL U2030 ( .A0(n2526), .A1(n2105), .B0(n2106), .Y(n2102) );
  OAI2BB1X1 U2031 ( .A0N(n2105), .A1N(n2526), .B0(n2591), .Y(n2106) );
  OAI21XL U2032 ( .A0(n2455), .A1(n2243), .B0(n2244), .Y(n2240) );
  OAI2BB1X1 U2033 ( .A0N(n2243), .A1N(n2455), .B0(n2595), .Y(n2244) );
  OAI21XL U2034 ( .A0(n2595), .A1(N623), .B0(N645), .Y(n2243) );
  OAI21XL U2035 ( .A0(n2090), .A1(N794), .B0(n2091), .Y(n2087) );
  AO21X1 U2036 ( .A0(N794), .A1(n2090), .B0(n2614), .Y(n2091) );
  OAI2BB1X1 U2037 ( .A0N(N847), .A1N(n2066), .B0(n2067), .Y(n2063) );
  OAI21XL U2038 ( .A0(N847), .A1(n2066), .B0(ns3[24]), .Y(n2067) );
  OAI21XL U2039 ( .A0(n2434), .A1(n2454), .B0(n2414), .Y(n2415) );
  OAI2BB1X1 U2040 ( .A0N(n1990), .A1N(n2577), .B0(n1991), .Y(n1987) );
  OAI21XL U2041 ( .A0(n2577), .A1(n1990), .B0(n2575), .Y(n1991) );
  OAI2BB1X1 U2042 ( .A0N(n2040), .A1N(n2577), .B0(n2041), .Y(n2037) );
  OAI21XL U2043 ( .A0(n2577), .A1(n2040), .B0(n2698), .Y(n2041) );
  OAI2BB1X1 U2044 ( .A0N(n2228), .A1N(n2584), .B0(n2229), .Y(n2225) );
  OAI21XL U2045 ( .A0(n2584), .A1(n2228), .B0(n2588), .Y(n2229) );
  OAI2BB1X1 U2046 ( .A0N(n1972), .A1N(n2571), .B0(n1973), .Y(n1969) );
  OAI21XL U2047 ( .A0(n2571), .A1(n1972), .B0(n2572), .Y(n1973) );
  OAI2BB1X1 U2048 ( .A0N(n2022), .A1N(n2571), .B0(n2023), .Y(n2019) );
  OAI21XL U2049 ( .A0(n2571), .A1(n2022), .B0(ns3[24]), .Y(n2023) );
  OAI2BB1X1 U2050 ( .A0N(n2210), .A1N(n2581), .B0(n2211), .Y(n2207) );
  OAI21XL U2051 ( .A0(n2581), .A1(n2210), .B0(n2579), .Y(n2211) );
  OAI2BB1X1 U2052 ( .A0N(n2320), .A1N(n2613), .B0(n2321), .Y(n2317) );
  OAI21XL U2053 ( .A0(n2613), .A1(n2320), .B0(n2608), .Y(n2321) );
  OAI2BB1X1 U2054 ( .A0N(n2013), .A1N(n2570), .B0(n2014), .Y(n2010) );
  OAI21XL U2055 ( .A0(n2570), .A1(n2013), .B0(ns3[24]), .Y(n2014) );
  OAI2BB1X1 U2056 ( .A0N(n2341), .A1N(n2606), .B0(n2342), .Y(n2338) );
  OAI21XL U2057 ( .A0(n2606), .A1(n2341), .B0(n2611), .Y(n2342) );
  OAI2BB1X1 U2058 ( .A0N(n2240), .A1N(n2585), .B0(n2241), .Y(n2237) );
  OAI21XL U2059 ( .A0(n2585), .A1(n2240), .B0(n2586), .Y(n2241) );
  OAI2BB1X1 U2060 ( .A0N(n1963), .A1N(n2570), .B0(n1964), .Y(n1960) );
  OAI21XL U2061 ( .A0(n2570), .A1(n1963), .B0(n2574), .Y(n1964) );
  OAI2BB1X1 U2062 ( .A0N(N569), .A1N(n2353), .B0(n2354), .Y(n2350) );
  OAI21XL U2063 ( .A0(N569), .A1(n2353), .B0(n2616), .Y(n2354) );
  XOR2X1 U2064 ( .A(n2005), .B(n2006), .Y(N865) );
  XOR2X1 U2065 ( .A(n2675), .B(n2698), .Y(n2006) );
  OAI2BB1X1 U2066 ( .A0N(n2344), .A1N(n2615), .B0(n2345), .Y(n2341) );
  OAI21XL U2067 ( .A0(n2615), .A1(n2344), .B0(n2607), .Y(n2345) );
  OAI2BB1X1 U2068 ( .A0N(n2279), .A1N(n2612), .B0(n2280), .Y(n2276) );
  OAI21XL U2069 ( .A0(n2612), .A1(n2279), .B0(n2608), .Y(n2280) );
  AOI32X1 U2070 ( .A0(n2616), .A1(N547), .A2(n2309), .B0(N548), .B1(n2615), 
        .Y(n2306) );
  AOI32X1 U2071 ( .A0(n2610), .A1(N870), .A2(n2002), .B0(N871), .B1(n2578), 
        .Y(n1999) );
  OAI22XL U2072 ( .A0(n2587), .A1(n2752), .B0(n2592), .B1(n2216), .Y(n2213) );
  CLKINVX1 U2073 ( .A(n2217), .Y(n2752) );
  NOR2X1 U2074 ( .A(n2217), .B(n2469), .Y(n2216) );
  OAI22XL U2075 ( .A0(n2603), .A1(n2746), .B0(n2613), .B1(n2326), .Y(n2323) );
  CLKINVX1 U2076 ( .A(n2327), .Y(n2746) );
  NOR2X1 U2077 ( .A(n2327), .B(n2468), .Y(n2326) );
  NOR2X1 U2078 ( .A(n2434), .B(n2453), .Y(n2369) );
  OAI2BB1X1 U2079 ( .A0N(n2222), .A1N(n2427), .B0(n2583), .Y(n2223) );
  OAI21XL U2080 ( .A0(n2616), .A1(n2297), .B0(n2298), .Y(n2294) );
  AO21X1 U2081 ( .A0(n2297), .A1(n2616), .B0(n2612), .Y(n2298) );
  OAI21XL U2082 ( .A0(n2075), .A1(N799), .B0(n2076), .Y(n2072) );
  AO21X1 U2083 ( .A0(N799), .A1(n2075), .B0(ns3[24]), .Y(n2076) );
  XNOR2X1 U2084 ( .A(n2266), .B(n2316), .Y(N564) );
  XNOR2X1 U2085 ( .A(n2365), .B(n2363), .Y(N54) );
  XNOR2X1 U2086 ( .A(n2411), .B(n2413), .Y(N34) );
  XOR2X1 U2087 ( .A(n2511), .B(n2609), .Y(n2365) );
  XNOR2X1 U2088 ( .A(n2362), .B(n2332), .Y(N55) );
  XNOR2X1 U2089 ( .A(n2410), .B(n2408), .Y(N35) );
  XOR2X1 U2090 ( .A(n2513), .B(n2602), .Y(n2362) );
  XOR2X1 U2091 ( .A(N547), .B(n2616), .Y(N571) );
  XOR2X1 U2092 ( .A(N623), .B(n2595), .Y(N646) );
  XNOR2X1 U2093 ( .A(n2288), .B(n2312), .Y(N57) );
  XNOR2X1 U2094 ( .A(n2404), .B(n2402), .Y(N37) );
  XOR2X1 U2095 ( .A(n2597), .B(n2596), .Y(n2312) );
  XNOR2X1 U2096 ( .A(n2287), .B(n2258), .Y(N58) );
  XNOR2X1 U2097 ( .A(n2401), .B(n2399), .Y(N38) );
  XOR2X1 U2098 ( .A(n2421), .B(n2598), .Y(n2287) );
  XNOR2X1 U2099 ( .A(n2302), .B(n2300), .Y(N575) );
  XOR2X1 U2100 ( .A(N570), .B(n2611), .Y(n2302) );
  XNOR2X1 U2101 ( .A(n2299), .B(n2297), .Y(N576) );
  XOR2X1 U2102 ( .A(n2518), .B(n2612), .Y(n2299) );
  XNOR2X1 U2103 ( .A(n2243), .B(n2245), .Y(N626) );
  XNOR2X1 U2104 ( .A(n2181), .B(n2179), .Y(N651) );
  XOR2X1 U2105 ( .A(n2595), .B(n2585), .Y(n2245) );
  XNOR2X1 U2106 ( .A(n2294), .B(n2296), .Y(N577) );
  XOR2X1 U2107 ( .A(n2603), .B(n2615), .Y(n2296) );
  XNOR2X1 U2108 ( .A(n2293), .B(n2291), .Y(N578) );
  XOR2X1 U2109 ( .A(n2519), .B(n2606), .Y(n2293) );
  XOR2X1 U2110 ( .A(n2092), .B(n2090), .Y(N803) );
  XOR2X1 U2111 ( .A(N794), .B(n2614), .Y(n2092) );
  XNOR2X1 U2112 ( .A(n2347), .B(n2349), .Y(N554) );
  XOR2X1 U2113 ( .A(n2606), .B(n2616), .Y(n2349) );
  XNOR2X1 U2114 ( .A(n2290), .B(n2285), .Y(N579) );
  XOR2X1 U2115 ( .A(n2463), .B(n2607), .Y(n2290) );
  XNOR2X1 U2116 ( .A(n2231), .B(n2236), .Y(N629) );
  XNOR2X1 U2117 ( .A(n2172), .B(n2170), .Y(N654) );
  XOR2X1 U2118 ( .A(n2584), .B(n2594), .Y(n2236) );
  XNOR2X1 U2119 ( .A(n2346), .B(n2344), .Y(N555) );
  XOR2X1 U2120 ( .A(n2512), .B(n2607), .Y(n2346) );
  XNOR2X1 U2121 ( .A(n2122), .B(n2120), .Y(N730) );
  XOR2X1 U2122 ( .A(n2464), .B(n2590), .Y(n2122) );
  XNOR2X1 U2123 ( .A(n2343), .B(n2341), .Y(N556) );
  XOR2X1 U2124 ( .A(n2458), .B(n2611), .Y(n2343) );
  XNOR2X1 U2125 ( .A(n2340), .B(n2338), .Y(N557) );
  XOR2X1 U2126 ( .A(n2475), .B(n2612), .Y(n2340) );
  XNOR2X1 U2127 ( .A(n2222), .B(n2224), .Y(N632) );
  XNOR2X1 U2128 ( .A(n2163), .B(n2161), .Y(N657) );
  XOR2X1 U2129 ( .A(n2583), .B(n2593), .Y(n2224) );
  XNOR2X1 U2130 ( .A(n2335), .B(n2337), .Y(N558) );
  XOR2X1 U2131 ( .A(n2603), .B(n2611), .Y(n2337) );
  XOR2X1 U2132 ( .A(n2077), .B(n2075), .Y(N808) );
  XOR2X1 U2133 ( .A(N799), .B(n2698), .Y(n2077) );
  XNOR2X1 U2134 ( .A(n2113), .B(n2111), .Y(N733) );
  XOR2X1 U2135 ( .A(n2444), .B(n2589), .Y(n2113) );
  XNOR2X1 U2136 ( .A(n2074), .B(n2072), .Y(N809) );
  XOR2X1 U2137 ( .A(N845), .B(n2698), .Y(n2074) );
  XNOR2X1 U2138 ( .A(n2334), .B(n2329), .Y(N559) );
  XOR2X1 U2139 ( .A(n2519), .B(n2612), .Y(n2334) );
  XNOR2X1 U2140 ( .A(n2213), .B(n2215), .Y(N635) );
  XNOR2X1 U2141 ( .A(n2154), .B(n2152), .Y(N660) );
  XOR2X1 U2142 ( .A(n2581), .B(n2592), .Y(n2215) );
  XOR2X1 U2143 ( .A(n2328), .B(n2327), .Y(N560) );
  XOR2X1 U2144 ( .A(n2463), .B(n2603), .Y(n2328) );
  XNOR2X1 U2145 ( .A(n2065), .B(n2063), .Y(N812) );
  XOR2X1 U2146 ( .A(n2446), .B(n2698), .Y(n2065) );
  XNOR2X1 U2147 ( .A(n2322), .B(n2320), .Y(N562) );
  XOR2X1 U2148 ( .A(n2608), .B(n2463), .Y(n2322) );
  XNOR2X1 U2149 ( .A(n1965), .B(n1963), .Y(N886) );
  XOR2X1 U2150 ( .A(n2479), .B(n2570), .Y(n1965) );
  XOR2X1 U2151 ( .A(n2062), .B(n2061), .Y(N813) );
  XOR2X1 U2152 ( .A(n2436), .B(n2698), .Y(n2062) );
  OAI2BB2XL U2153 ( .B0(n2260), .B1(n2470), .A0N(n2685), .A1N(n2261), .Y(N588)
         );
  NOR2X1 U2154 ( .A(n2685), .B(n2261), .Y(n2260) );
  XNOR2X1 U2155 ( .A(n2319), .B(n2317), .Y(N563) );
  XOR2X1 U2156 ( .A(n2470), .B(n2601), .Y(n2319) );
  XNOR2X1 U2157 ( .A(n1959), .B(n1957), .Y(N888) );
  XOR2X1 U2158 ( .A(n2675), .B(n2574), .Y(n1959) );
  CLKINVX1 U2159 ( .A(n2100), .Y(n2748) );
  OAI22XL U2160 ( .A0(n2435), .A1(n2043), .B0(n2044), .B1(n2522), .Y(n2040) );
  AND2X2 U2161 ( .A(n2043), .B(n2435), .Y(n2044) );
  XNOR2X1 U2162 ( .A(n2191), .B(n2193), .Y(N648) );
  XOR2X1 U2163 ( .A(n2595), .B(n2586), .Y(n2193) );
  XOR2X1 U2164 ( .A(n2246), .B(n2247), .Y(N625) );
  XNOR2X1 U2165 ( .A(n2182), .B(n2184), .Y(N650) );
  NAND2X1 U2166 ( .A(N623), .B(N645), .Y(n2246) );
  XNOR2X1 U2167 ( .A(n2016), .B(n2018), .Y(N861) );
  XOR2X1 U2168 ( .A(n2698), .B(n2572), .Y(n2018) );
  XNOR2X1 U2169 ( .A(n1971), .B(n1969), .Y(N884) );
  XOR2X1 U2170 ( .A(n2478), .B(n2570), .Y(n1971) );
  XNOR2X1 U2171 ( .A(n1975), .B(n1977), .Y(N882) );
  XOR2X1 U2172 ( .A(n2567), .B(n2573), .Y(n1977) );
  XNOR2X1 U2173 ( .A(n1966), .B(n1968), .Y(N885) );
  XOR2X1 U2174 ( .A(n2566), .B(n2572), .Y(n1968) );
  CLKBUFX3 U2175 ( .A(n2708), .Y(n2707) );
  CLKBUFX3 U2176 ( .A(n2423), .Y(n2717) );
  CLKBUFX3 U2177 ( .A(n2433), .Y(n2723) );
  OAI21XL U2178 ( .A0(n2263), .A1(n2316), .B0(n2265), .Y(n2315) );
  CLKBUFX3 U2179 ( .A(n2432), .Y(n2712) );
  CLKBUFX3 U2180 ( .A(n2433), .Y(n2722) );
  CLKBUFX3 U2181 ( .A(n2432), .Y(n2711) );
  CLKBUFX3 U2182 ( .A(n2708), .Y(n2706) );
  CLKBUFX3 U2183 ( .A(n2423), .Y(n2718) );
  CLKBUFX3 U2184 ( .A(n2422), .Y(n2708) );
  XOR2X1 U2185 ( .A(n1980), .B(n1979), .Y(N881) );
  XOR2X1 U2186 ( .A(n2521), .B(n2571), .Y(n1980) );
  XOR2X1 U2187 ( .A(N870), .B(n2610), .Y(N872) );
  XOR2X1 U2188 ( .A(N870), .B(n2614), .Y(N848) );
  XOR2X1 U2189 ( .A(n2001), .B(n1999), .Y(N874) );
  XOR2X1 U2190 ( .A(n2435), .B(n2610), .Y(n2001) );
  XNOR2X1 U2191 ( .A(n1998), .B(n1996), .Y(N875) );
  XOR2X1 U2192 ( .A(n2516), .B(n2577), .Y(n1998) );
  XOR2X1 U2193 ( .A(n2051), .B(n2049), .Y(N850) );
  XOR2X1 U2194 ( .A(n2520), .B(n2610), .Y(n2051) );
  XNOR2X1 U2195 ( .A(n2048), .B(n2046), .Y(N851) );
  XOR2X1 U2196 ( .A(n2426), .B(n2578), .Y(n2048) );
  XNOR2X1 U2197 ( .A(n1992), .B(n1990), .Y(N877) );
  XOR2X1 U2198 ( .A(n2473), .B(n2575), .Y(n1992) );
  XNOR2X1 U2199 ( .A(n1989), .B(n1987), .Y(N878) );
  XOR2X1 U2200 ( .A(n2424), .B(n2576), .Y(n1989) );
  XNOR2X1 U2201 ( .A(n2042), .B(n2040), .Y(N853) );
  XOR2X1 U2202 ( .A(n2473), .B(n2698), .Y(n2042) );
  XNOR2X1 U2203 ( .A(n1984), .B(n1986), .Y(N879) );
  XOR2X1 U2204 ( .A(n2568), .B(n2575), .Y(n1986) );
  XNOR2X1 U2205 ( .A(n2039), .B(n2037), .Y(N854) );
  XOR2X1 U2206 ( .A(n2424), .B(n2698), .Y(n2039) );
  XNOR2X1 U2207 ( .A(n1983), .B(n1981), .Y(N880) );
  XOR2X1 U2208 ( .A(n2443), .B(n2573), .Y(n1983) );
  XNOR2X1 U2209 ( .A(n2034), .B(n2036), .Y(N855) );
  XOR2X1 U2210 ( .A(n2698), .B(n2575), .Y(n2036) );
  XNOR2X1 U2211 ( .A(n2033), .B(n2031), .Y(N856) );
  XOR2X1 U2212 ( .A(n2443), .B(n2698), .Y(n2033) );
  XNOR2X1 U2213 ( .A(n1974), .B(n1972), .Y(N883) );
  XOR2X1 U2214 ( .A(n2525), .B(n2572), .Y(n1974) );
  XNOR2X1 U2215 ( .A(n2025), .B(n2027), .Y(N858) );
  XOR2X1 U2216 ( .A(n2698), .B(n2573), .Y(n2027) );
  XOR2X1 U2217 ( .A(n2597), .B(n2609), .Y(n2398) );
  XOR2X1 U2218 ( .A(n2456), .B(n2598), .Y(n2395) );
  XOR2X1 U2219 ( .A(n2511), .B(n2596), .Y(n2401) );
  XOR2X1 U2220 ( .A(n2420), .B(n2585), .Y(n2190) );
  XOR2X1 U2221 ( .A(n2453), .B(n2605), .Y(n2410) );
  XOR2X1 U2222 ( .A(n2452), .B(n2602), .Y(n2404) );
  CLKBUFX3 U2223 ( .A(n2432), .Y(n2713) );
  NOR2BX1 U2224 ( .AN(n2189), .B(n2187), .Y(n2200) );
  CLKBUFX3 U2225 ( .A(n2433), .Y(n2721) );
  CLKBUFX3 U2226 ( .A(n2718), .Y(n2716) );
  XOR2X1 U2227 ( .A(n2599), .B(n2597), .Y(n2389) );
  XOR2X1 U2228 ( .A(n2584), .B(n2586), .Y(n2184) );
  XOR2X1 U2229 ( .A(n2583), .B(n2588), .Y(n2175) );
  XOR2X1 U2230 ( .A(n2514), .B(n2604), .Y(n2392) );
  XOR2X1 U2231 ( .A(n2427), .B(n2587), .Y(n2172) );
  XOR2X1 U2232 ( .A(n2420), .B(n2588), .Y(n2181) );
  XOR2X1 U2233 ( .A(n2417), .B(n2592), .Y(n2169) );
  XOR2X1 U2234 ( .A(n2437), .B(n2593), .Y(n2178) );
  XOR2X1 U2235 ( .A(n2460), .B(n2598), .Y(n2386) );
  NOR2X1 U2236 ( .A(n2685), .B(n2608), .Y(n2263) );
  CLKBUFX3 U2237 ( .A(next_state[1]), .Y(n2689) );
  CLKBUFX3 U2238 ( .A(next_state[1]), .Y(n2692) );
  NAND2X1 U2239 ( .A(n2608), .B(n2685), .Y(n2265) );
  XOR2X1 U2240 ( .A(n2581), .B(n2587), .Y(n2166) );
  XOR2X1 U2241 ( .A(n2582), .B(n2579), .Y(n2157) );
  XOR2X1 U2242 ( .A(n2471), .B(n2579), .Y(n2163) );
  XOR2X1 U2243 ( .A(n2428), .B(n2580), .Y(n2160) );
  XOR2X1 U2244 ( .A(n2442), .B(n2580), .Y(n2154) );
  CLKINVX1 U2245 ( .A(N1952), .Y(n2726) );
  CLKBUFX3 U2246 ( .A(n1954), .Y(n2653) );
  CLKBUFX3 U2247 ( .A(next_state[1]), .Y(n2690) );
  XOR2X1 U2248 ( .A(n2470), .B(n2685), .Y(n2262) );
  CLKINVX1 U2249 ( .A(N1951), .Y(n2727) );
  CLKINVX1 U2250 ( .A(N1950), .Y(n2728) );
  CLKINVX1 U2251 ( .A(N1949), .Y(n2729) );
  CLKINVX1 U2252 ( .A(N1948), .Y(n2730) );
  CLKINVX1 U2253 ( .A(N1947), .Y(n2731) );
  CLKINVX1 U2254 ( .A(N1946), .Y(n2732) );
  CLKINVX1 U2255 ( .A(N1945), .Y(n2733) );
  CLKINVX1 U2256 ( .A(N1944), .Y(n2734) );
  CLKINVX1 U2257 ( .A(N1943), .Y(n2735) );
  CLKINVX1 U2258 ( .A(N1942), .Y(n2736) );
  CLKINVX1 U2259 ( .A(N1941), .Y(n2737) );
  CLKINVX1 U2260 ( .A(N1940), .Y(n2738) );
  CLKINVX1 U2261 ( .A(N1939), .Y(n2739) );
  CLKINVX1 U2262 ( .A(N1938), .Y(n2740) );
  CLKINVX1 U2263 ( .A(N1937), .Y(n2741) );
  OAI22XL U2264 ( .A0(n2656), .A1(n2517), .B0(n2670), .B1(n2435), .Y(n529) );
  OAI22XL U2265 ( .A0(n2656), .A1(n2560), .B0(n2666), .B1(n2460), .Y(n659) );
  OAI22XL U2266 ( .A0(n2656), .A1(n2479), .B0(n2668), .B1(n2442), .Y(n458) );
  OAI22XL U2267 ( .A0(n2657), .A1(n2508), .B0(n2665), .B1(n2514), .Y(n629) );
  OAI22XL U2268 ( .A0(n2656), .A1(n2552), .B0(n2665), .B1(n2421), .Y(n635) );
  OAI22XL U2269 ( .A0(WEN), .A1(n2554), .B0(n2666), .B1(n2461), .Y(n647) );
  OAI22XL U2270 ( .A0(n2658), .A1(n2556), .B0(n2666), .B1(n2465), .Y(n653) );
  OAI22XL U2271 ( .A0(n2657), .A1(n2558), .B0(n2667), .B1(n2467), .Y(n665) );
  OAI22XL U2272 ( .A0(n2657), .A1(n2435), .B0(n2670), .B1(n2419), .Y(n530) );
  OAI22XL U2273 ( .A0(WEN), .A1(n2483), .B0(n2664), .B1(n2513), .Y(n617) );
  OAI22XL U2274 ( .A0(n2657), .A1(n2526), .B0(n2668), .B1(n2447), .Y(n469) );
  OAI22XL U2275 ( .A0(n2657), .A1(n2472), .B0(n2669), .B1(n2525), .Y(n487) );
  OAI22XL U2276 ( .A0(n2656), .A1(n2564), .B0(n2669), .B1(n2443), .Y(n505) );
  OAI22XL U2277 ( .A0(n2655), .A1(n2559), .B0(n2665), .B1(n2459), .Y(n641) );
  OAI22XL U2278 ( .A0(n2658), .A1(n2527), .B0(n2665), .B1(n2456), .Y(n623) );
  OAI22XL U2279 ( .A0(n2657), .A1(n2563), .B0(n2669), .B1(n2441), .Y(n511) );
  OAI22XL U2280 ( .A0(WEN), .A1(n2445), .B0(n2668), .B1(n2479), .Y(n457) );
  OAI22XL U2281 ( .A0(n2655), .A1(n2444), .B0(n2668), .B1(n2478), .Y(n481) );
  OAI22XL U2282 ( .A0(WEN), .A1(n2500), .B0(n2664), .B1(n2511), .Y(n611) );
  OAI22XL U2283 ( .A0(n2655), .A1(n2466), .B0(n2669), .B1(n2424), .Y(n517) );
  OAI22XL U2284 ( .A0(n2655), .A1(n2449), .B0(n2663), .B1(n2502), .Y(n585) );
  OAI22XL U2285 ( .A0(WEN), .A1(n2541), .B0(n2663), .B1(n2498), .Y(n591) );
  OAI22XL U2286 ( .A0(n2655), .A1(n2502), .B0(n2663), .B1(n2544), .Y(n586) );
  OAI22XL U2287 ( .A0(n2655), .A1(n2498), .B0(n2663), .B1(n2531), .Y(n592) );
  OAI22XL U2288 ( .A0(n2655), .A1(n2506), .B0(n2663), .B1(n2451), .Y(n579) );
  OAI22XL U2289 ( .A0(n2655), .A1(n2542), .B0(n2663), .B1(n2454), .Y(n581) );
  OAI22XL U2290 ( .A0(n2656), .A1(n2436), .B0(n2668), .B1(n2463), .Y(n478) );
  OAI22XL U2291 ( .A0(n2657), .A1(n2520), .B0(n2668), .B1(n2474), .Y(n472) );
  OAI22XL U2292 ( .A0(n2657), .A1(n2464), .B0(n2669), .B1(n2521), .Y(n499) );
  OAI22XL U2293 ( .A0(n2655), .A1(n2451), .B0(n2663), .B1(n2542), .Y(n580) );
  OAI22XL U2294 ( .A0(n2655), .A1(n2543), .B0(n2663), .B1(n2506), .Y(n578) );
  OAI22XL U2295 ( .A0(n2656), .A1(n2505), .B0(n2662), .B1(n2545), .Y(n573) );
  OAI22XL U2296 ( .A0(n2655), .A1(n2504), .B0(n2662), .B1(n2532), .Y(n575) );
  OAI22XL U2297 ( .A0(n2655), .A1(n2545), .B0(n2662), .B1(n2504), .Y(n574) );
  OAI22XL U2298 ( .A0(n2655), .A1(n2546), .B0(n2662), .B1(n2505), .Y(n572) );
  OAI22XL U2299 ( .A0(n2656), .A1(n2457), .B0(n2670), .B1(n2516), .Y(n535) );
  OAI22XL U2300 ( .A0(WEN), .A1(n2533), .B0(n2663), .B1(n2496), .Y(n597) );
  OAI22XL U2301 ( .A0(WEN), .A1(n2497), .B0(n2663), .B1(n2533), .Y(n596) );
  OAI22XL U2302 ( .A0(WEN), .A1(n2496), .B0(n2663), .B1(n2534), .Y(n598) );
  OAI22XL U2303 ( .A0(n2657), .A1(n2442), .B0(n2668), .B1(n2522), .Y(n459) );
  OAI22XL U2304 ( .A0(WEN), .A1(n2539), .B0(n2664), .B1(n2450), .Y(n602) );
  OAI22XL U2305 ( .A0(WEN), .A1(n2450), .B0(n2664), .B1(n2499), .Y(n603) );
  OAI22XL U2306 ( .A0(WEN), .A1(n2499), .B0(n2664), .B1(n2537), .Y(n604) );
  OAI22XL U2307 ( .A0(WEN), .A1(n2501), .B0(n2664), .B1(n2536), .Y(n609) );
  OAI22XL U2308 ( .A0(WEN), .A1(n2536), .B0(n2664), .B1(n2500), .Y(n610) );
  OAI22XL U2309 ( .A0(n2655), .A1(n2503), .B0(n2663), .B1(n2541), .Y(n590) );
  OAI22XL U2310 ( .A0(n2655), .A1(n2540), .B0(n2663), .B1(n2449), .Y(n584) );
  OAI22XL U2311 ( .A0(n2657), .A1(n2439), .B0(n2670), .B1(n2473), .Y(n523) );
  OAI22XL U2312 ( .A0(WEN), .A1(n2538), .B0(n2664), .B1(n2501), .Y(n608) );
  OAI22XL U2313 ( .A0(WEN), .A1(n2482), .B0(n2664), .B1(n2529), .Y(n615) );
  OAI22XL U2314 ( .A0(n2656), .A1(n2547), .B0(n2665), .B1(n2507), .Y(n626) );
  OAI22XL U2315 ( .A0(n2657), .A1(n2507), .B0(n2665), .B1(n2548), .Y(n627) );
  OAI22XL U2316 ( .A0(n2656), .A1(n2550), .B0(n2661), .B1(n2484), .Y(n561) );
  OAI22XL U2317 ( .A0(n2656), .A1(n2549), .B0(n2665), .B1(n2485), .Y(n633) );
  OAI22XL U2318 ( .A0(n2656), .A1(n2553), .B0(n2666), .B1(n2486), .Y(n645) );
  OAI22XL U2319 ( .A0(WEN), .A1(n2555), .B0(n2666), .B1(n2487), .Y(n651) );
  OAI22XL U2320 ( .A0(n2658), .A1(n2557), .B0(n2666), .B1(n2488), .Y(n663) );
  OAI22XL U2321 ( .A0(WEN), .A1(n2530), .B0(n2664), .B1(n2482), .Y(n614) );
  OAI22XL U2322 ( .A0(WEN), .A1(n2529), .B0(n2664), .B1(n2483), .Y(n616) );
  OAI22XL U2323 ( .A0(n2656), .A1(n2448), .B0(n2668), .B1(n2426), .Y(n465) );
  OAI22XL U2324 ( .A0(n2656), .A1(n2551), .B0(n2662), .B1(n2440), .Y(n563) );
  OAI22XL U2325 ( .A0(n2655), .A1(n2548), .B0(n2665), .B1(n2508), .Y(n628) );
  OAI22XL U2326 ( .A0(n2658), .A1(n2510), .B0(n2665), .B1(n2549), .Y(n632) );
  OAI22XL U2327 ( .A0(n2656), .A1(n2490), .B0(n2660), .B1(n2550), .Y(n560) );
  OAI22XL U2328 ( .A0(n2656), .A1(n2484), .B0(n2662), .B1(n2551), .Y(n562) );
  OAI22XL U2329 ( .A0(n2657), .A1(n2485), .B0(n2665), .B1(n2552), .Y(n634) );
  OAI22XL U2330 ( .A0(n2656), .A1(n2492), .B0(n2666), .B1(n2553), .Y(n644) );
  OAI22XL U2331 ( .A0(n2657), .A1(n2486), .B0(n2666), .B1(n2554), .Y(n646) );
  OAI22XL U2332 ( .A0(n2656), .A1(n2493), .B0(n2666), .B1(n2555), .Y(n650) );
  OAI22XL U2333 ( .A0(WEN), .A1(n2487), .B0(n2666), .B1(n2556), .Y(n652) );
  OAI22XL U2334 ( .A0(n2658), .A1(n2495), .B0(n2666), .B1(n2557), .Y(n662) );
  OAI22XL U2335 ( .A0(n2657), .A1(n2488), .B0(n2666), .B1(n2558), .Y(n664) );
  OAI22XL U2336 ( .A0(WEN), .A1(n2534), .B0(n2663), .B1(n2434), .Y(n599) );
  OAI22XL U2337 ( .A0(n2656), .A1(n2430), .B0(n2668), .B1(n2520), .Y(n471) );
  OAI22XL U2338 ( .A0(n2656), .A1(n2562), .B0(n2666), .B1(n2489), .Y(n657) );
  OAI22XL U2339 ( .A0(WEN), .A1(n2528), .B0(n2664), .B1(n2480), .Y(n621) );
  OAI22XL U2340 ( .A0(n2657), .A1(n2429), .B0(n2668), .B1(n2436), .Y(n477) );
  OAI22XL U2341 ( .A0(WEN), .A1(n2561), .B0(n2665), .B1(n2509), .Y(n639) );
  OAI22XL U2342 ( .A0(n2655), .A1(n2509), .B0(n2665), .B1(n2559), .Y(n640) );
  OAI22XL U2343 ( .A0(n2655), .A1(n2489), .B0(n2666), .B1(n2560), .Y(n658) );
  OAI22XL U2344 ( .A0(n2658), .A1(n2491), .B0(n2665), .B1(n2561), .Y(n638) );
  OAI22XL U2345 ( .A0(WEN), .A1(n2494), .B0(n2666), .B1(n2562), .Y(n656) );
  OAI22XL U2346 ( .A0(n2657), .A1(n2480), .B0(n2670), .B1(n2527), .Y(n622) );
  OAI22XL U2347 ( .A0(WEN), .A1(n2481), .B0(n2664), .B1(n2528), .Y(n620) );
  OAI22XL U2348 ( .A0(WEN), .A1(n2531), .B0(n2663), .B1(n2453), .Y(n593) );
  OAI22XL U2349 ( .A0(n2657), .A1(n2522), .B0(n2668), .B1(n2470), .Y(n460) );
  OAI22XL U2350 ( .A0(WEN), .A1(n2537), .B0(n2664), .B1(n2452), .Y(n605) );
  OAI22XL U2351 ( .A0(n2657), .A1(n2446), .B0(n2669), .B1(n2519), .Y(n484) );
  CLKBUFX3 U2352 ( .A(n1955), .Y(n2647) );
  CLKBUFX3 U2353 ( .A(next_state[1]), .Y(n2691) );
  CLKBUFX3 U2354 ( .A(next_state[1]), .Y(n2693) );
  OAI2BB2XL U2355 ( .B0(WEN), .B1(n2426), .A0N(n2655), .A1N(n2608), .Y(n466)
         );
  OAI21XL U2356 ( .A0(n2647), .A1(n2467), .B0(n1956), .Y(n666) );
  OAI21XL U2357 ( .A0(n2648), .A1(n2440), .B0(n1956), .Y(n564) );
  CLKBUFX3 U2358 ( .A(next_state[1]), .Y(n2694) );
  CLKBUFX3 U2359 ( .A(n1955), .Y(n2648) );
  CLKBUFX3 U2360 ( .A(next_state[1]), .Y(n2695) );
  CLKINVX1 U2361 ( .A(N1936), .Y(n2742) );
  CLKINVX1 U2362 ( .A(N1935), .Y(n2743) );
  CLKBUFX3 U2363 ( .A(n1954), .Y(n2649) );
  CLKBUFX3 U2364 ( .A(n1954), .Y(n2650) );
  CLKBUFX3 U2365 ( .A(n1954), .Y(n2651) );
  CLKBUFX3 U2366 ( .A(n1954), .Y(n2652) );
  CLKBUFX3 U2367 ( .A(n2724), .Y(n2623) );
  CLKBUFX3 U2368 ( .A(n2724), .Y(n2622) );
  CLKBUFX3 U2369 ( .A(n2724), .Y(n2621) );
  CLKBUFX3 U2370 ( .A(n2724), .Y(n2620) );
  CLKBUFX3 U2371 ( .A(n2724), .Y(n2619) );
  CLKBUFX3 U2372 ( .A(n2724), .Y(n2618) );
  CLKBUFX3 U2373 ( .A(n2724), .Y(n2617) );
  CLKBUFX3 U2374 ( .A(n2624), .Y(n2646) );
  CLKBUFX3 U2375 ( .A(n2724), .Y(n2624) );
  OAI22XL U2376 ( .A0(n2753), .A1(n2683), .B0(n2582), .B1(n2149), .Y(n2146) );
  CLKINVX1 U2377 ( .A(n2150), .Y(n2753) );
  NOR2X1 U2378 ( .A(n2150), .B(n784), .Y(n2149) );
  OAI22XL U2379 ( .A0(s5[10]), .A1(n2408), .B0(n2605), .B1(n2409), .Y(n2405)
         );
  AND2X2 U2380 ( .A(n2408), .B(s5[10]), .Y(n2409) );
  OAI22XL U2381 ( .A0(n2600), .A1(n2201), .B0(s5[23]), .B1(n2202), .Y(n2188)
         );
  AND2X2 U2382 ( .A(n2201), .B(n2600), .Y(n2202) );
  OAI21XL U2383 ( .A0(n2234), .A1(n2460), .B0(n2235), .Y(n2201) );
  OAI21XL U2384 ( .A0(s5[21]), .A1(n2747), .B0(n2600), .Y(n2235) );
  CLKINVX1 U2385 ( .A(n2234), .Y(n2747) );
  OAI21XL U2386 ( .A0(n1408), .A1(n2411), .B0(n2412), .Y(n2408) );
  OAI2BB1X1 U2387 ( .A0N(n2411), .A1N(n1408), .B0(s5[12]), .Y(n2412) );
  OAI21XL U2388 ( .A0(s5[10]), .A1(s5[12]), .B0(s5[11]), .Y(n2366) );
  OAI21XL U2389 ( .A0(n2187), .A1(n2188), .B0(n2189), .Y(N65) );
  XNOR2X1 U2390 ( .A(n2378), .B(n2380), .Y(N45) );
  XOR2X1 U2391 ( .A(s5[23]), .B(n2599), .Y(n2380) );
  OAI2BB1X1 U2392 ( .A0N(n2402), .A1N(s5[12]), .B0(n2403), .Y(n2399) );
  OAI21XL U2393 ( .A0(s5[12]), .A1(n2402), .B0(n2602), .Y(n2403) );
  OAI2BB1X1 U2394 ( .A0N(n2686), .A1N(n2375), .B0(n2376), .Y(n2372) );
  OAI21XL U2395 ( .A0(n2686), .A1(n2375), .B0(s5[21]), .Y(n2376) );
  AOI32X1 U2396 ( .A0(s5[7]), .A1(n2414), .A2(s5[10]), .B0(s5[11]), .B1(s5[8]), 
        .Y(n2411) );
  CLKBUFX3 U2397 ( .A(ns2[10]), .Y(n2585) );
  CLKBUFX3 U2398 ( .A(ns4[15]), .Y(n2607) );
  NAND2X1 U2399 ( .A(n1412), .B(n2455), .Y(n2194) );
  CLKBUFX3 U2400 ( .A(ns4[14]), .Y(n2606) );
  XNOR2X1 U2401 ( .A(n2375), .B(n2377), .Y(N46) );
  XOR2X1 U2402 ( .A(s5[21]), .B(n781), .Y(n2377) );
  XNOR2X1 U2403 ( .A(n2372), .B(n2374), .Y(N47) );
  XOR2X1 U2404 ( .A(n2600), .B(n781), .Y(n2374) );
  XNOR2X1 U2405 ( .A(n2204), .B(n2206), .Y(N638) );
  OAI22XL U2406 ( .A0(n784), .A1(n2146), .B0(n2147), .B1(n2442), .Y(N663) );
  XOR2X1 U2407 ( .A(n2582), .B(n2580), .Y(n2206) );
  AO22X1 U2408 ( .A0(n2697), .A1(sum[21]), .B0(N1930), .B1(n2694), .Y(n474) );
  AO22X1 U2409 ( .A0(n2697), .A1(sum[23]), .B0(N1932), .B1(n2694), .Y(n462) );
  AO22X1 U2410 ( .A0(n2697), .A1(sum[22]), .B0(N1931), .B1(n2694), .Y(n468) );
  AO22X1 U2411 ( .A0(n2697), .A1(sum[24]), .B0(N1933), .B1(n2694), .Y(n456) );
  AOI2BB2X1 U2412 ( .B0(n2129), .B1(ns0[13]), .A0N(n2130), .A1N(n2563), .Y(
        n2127) );
  NOR2X1 U2413 ( .A(ns0[13]), .B(n2129), .Y(n2130) );
  AO22X1 U2414 ( .A0(n2563), .A1(n2127), .B0(n2564), .B1(n2565), .Y(n2123) );
  OR2X1 U2415 ( .A(n2127), .B(n2563), .Y(n2565) );
  OAI22XL U2416 ( .A0(n2590), .A1(n2117), .B0(ns0[18]), .B1(n2118), .Y(n2114)
         );
  AND2X2 U2417 ( .A(n2117), .B(n2590), .Y(n2118) );
  OAI22XL U2418 ( .A0(n2578), .A1(n2046), .B0(ns3[22]), .B1(n2047), .Y(n2043)
         );
  AND2X2 U2419 ( .A(n2046), .B(n2578), .Y(n2047) );
  OAI22XL U2420 ( .A0(ns3[20]), .A1(n2749), .B0(n2698), .B1(n2060), .Y(n2057)
         );
  CLKINVX1 U2421 ( .A(n2061), .Y(n2749) );
  NOR2X1 U2422 ( .A(n2061), .B(n2436), .Y(n2060) );
  OAI22XL U2423 ( .A0(n1407), .A1(n2300), .B0(n2301), .B1(n2438), .Y(n2297) );
  AND2X2 U2424 ( .A(n2300), .B(n1407), .Y(n2301) );
  OAI2BB1X1 U2425 ( .A0N(n2132), .A1N(n2439), .B0(ns0[13]), .Y(n2133) );
  OAI22XL U2426 ( .A0(n2685), .A1(n2273), .B0(ns4[19]), .B1(n2274), .Y(n2270)
         );
  AND2X2 U2427 ( .A(n2273), .B(n2685), .Y(n2274) );
  OAI22XL U2428 ( .A0(n2589), .A1(n2108), .B0(ns0[21]), .B1(n2109), .Y(n2105)
         );
  AND2X2 U2429 ( .A(n2108), .B(n2589), .Y(n2109) );
  OAI22XL U2430 ( .A0(ns0[11]), .A1(n2135), .B0(ns0[12]), .B1(n2136), .Y(n2132) );
  AND2X2 U2431 ( .A(n2135), .B(ns0[11]), .Y(n2136) );
  OAI22XL U2432 ( .A0(n1407), .A1(n2356), .B0(n1410), .B1(n2357), .Y(n2353) );
  AND2X2 U2433 ( .A(n2356), .B(n1407), .Y(n2357) );
  OAI22XL U2434 ( .A0(n2601), .A1(n2317), .B0(ns4[23]), .B1(n2318), .Y(n2316)
         );
  AND2X2 U2435 ( .A(n2317), .B(n2601), .Y(n2318) );
  AOI2BB1X1 U2436 ( .A0N(n1403), .A1N(n1395), .B0(n2096), .Y(n2093) );
  AOI211X1 U2437 ( .A0(n1395), .A1(n1403), .B0(n1414), .C0(n1415), .Y(n2096)
         );
  XNOR2X1 U2438 ( .A(n2272), .B(n2270), .Y(N584) );
  XOR2X1 U2439 ( .A(n2463), .B(n768), .Y(n2272) );
  AOI2BB2X1 U2440 ( .B0(n2093), .B1(n1396), .A0N(n2094), .A1N(N847), .Y(n2090)
         );
  NOR2X1 U2441 ( .A(n2093), .B(n1396), .Y(n2094) );
  AOI2BB2X1 U2442 ( .B0(n2078), .B1(n1401), .A0N(ns3[23]), .A1N(n2079), .Y(
        n2075) );
  NOR2X1 U2443 ( .A(n2078), .B(n1401), .Y(n2079) );
  OAI21XL U2444 ( .A0(n1410), .A1(n2306), .B0(n2307), .Y(n2303) );
  AO21X1 U2445 ( .A0(n2306), .A1(n1410), .B0(n2458), .Y(n2307) );
  OAI21XL U2446 ( .A0(n768), .A1(n2270), .B0(n2271), .Y(n2267) );
  OAI2BB1X1 U2447 ( .A0N(n2270), .A1N(n768), .B0(n2613), .Y(n2271) );
  OAI21XL U2448 ( .A0(n2457), .A1(n2141), .B0(n2142), .Y(n2138) );
  OAI2BB1X1 U2449 ( .A0N(n2141), .A1N(n2457), .B0(ns0[9]), .Y(n2142) );
  OAI21XL U2450 ( .A0(ns0[9]), .A1(N720), .B0(ns0[8]), .Y(n2141) );
  OAI21XL U2451 ( .A0(n1403), .A1(n2069), .B0(n2070), .Y(n2066) );
  AO21X1 U2452 ( .A0(n1403), .A1(n2069), .B0(n2477), .Y(n2070) );
  OAI2BB2XL U2453 ( .B0(ns3[21]), .B1(n2084), .A0N(n2085), .A1N(n1399), .Y(
        n2081) );
  NOR2X1 U2454 ( .A(n2085), .B(n1399), .Y(n2084) );
  OA21XL U2455 ( .A0(n1400), .A1(n2081), .B0(n2082), .Y(n2078) );
  OAI2BB1X1 U2456 ( .A0N(n2081), .A1N(n1400), .B0(ns3[22]), .Y(n2082) );
  OA22X1 U2457 ( .A0(n1398), .A1(n2087), .B0(n2088), .B1(n2436), .Y(n2085) );
  AND2X2 U2458 ( .A(n2087), .B(n1398), .Y(n2088) );
  NOR2X1 U2459 ( .A(n1410), .B(n1411), .Y(n2359) );
  OAI2BB1X1 U2460 ( .A0N(n2120), .A1N(ns0[16]), .B0(n2121), .Y(n2117) );
  OAI21XL U2461 ( .A0(ns0[16]), .A1(n2120), .B0(n2590), .Y(n2121) );
  OAI2BB1X1 U2462 ( .A0N(n2111), .A1N(ns0[19]), .B0(n2112), .Y(n2108) );
  OAI21XL U2463 ( .A0(ns0[19]), .A1(n2111), .B0(n2589), .Y(n2112) );
  OAI2BB1X1 U2464 ( .A0N(n2102), .A1N(n2591), .B0(n2103), .Y(n2100) );
  OAI21XL U2465 ( .A0(n2591), .A1(n2102), .B0(ns0[23]), .Y(n2103) );
  OAI2BB1X1 U2466 ( .A0N(n2291), .A1N(n2606), .B0(n2292), .Y(n2285) );
  OAI21XL U2467 ( .A0(n2606), .A1(n2291), .B0(ns4[19]), .Y(n2292) );
  OAI2BB1X1 U2468 ( .A0N(n2138), .A1N(ns0[10]), .B0(n2139), .Y(n2135) );
  OAI21XL U2469 ( .A0(ns0[10]), .A1(n2138), .B0(ns0[11]), .Y(n2139) );
  OA22X1 U2470 ( .A0(n1414), .A1(n2072), .B0(n2073), .B1(n2477), .Y(n2069) );
  AND2X2 U2471 ( .A(n2072), .B(n1414), .Y(n2073) );
  OAI2BB1X1 U2472 ( .A0N(n2276), .A1N(n2603), .B0(n2277), .Y(n2273) );
  OAI21XL U2473 ( .A0(n2603), .A1(n2276), .B0(ns4[23]), .Y(n2277) );
  CLKBUFX3 U2474 ( .A(ns1[13]), .Y(n2569) );
  AOI32X1 U2475 ( .A0(n2614), .A1(N870), .A2(n2052), .B0(N871), .B1(ns3[20]), 
        .Y(n2049) );
  CLKBUFX3 U2476 ( .A(ns1[12]), .Y(n2577) );
  CLKBUFX3 U2477 ( .A(ns2[9]), .Y(n2595) );
  XOR2X1 U2478 ( .A(s5[11]), .B(s5[10]), .Y(N51) );
  CLKBUFX3 U2479 ( .A(s5[18]), .Y(n2598) );
  CLKBUFX3 U2480 ( .A(s5[16]), .Y(n2596) );
  NAND2X1 U2481 ( .A(n1394), .B(n2516), .Y(n2002) );
  NAND2X1 U2482 ( .A(n1394), .B(n2436), .Y(n2052) );
  CLKBUFX3 U2483 ( .A(ns2[12]), .Y(n2594) );
  CLKBUFX3 U2484 ( .A(ns1[10]), .Y(n2578) );
  CLKBUFX3 U2485 ( .A(s5[20]), .Y(n2599) );
  CLKBUFX3 U2486 ( .A(ns2[11]), .Y(n2586) );
  CLKBUFX3 U2487 ( .A(s5[19]), .Y(n2604) );
  CLKBUFX3 U2488 ( .A(ns4[17]), .Y(n2612) );
  CLKBUFX3 U2489 ( .A(s5[17]), .Y(n2597) );
  CLKBUFX3 U2490 ( .A(ns0[17]), .Y(n2590) );
  NAND2X1 U2491 ( .A(s5[7]), .B(s5[10]), .Y(n2416) );
  CLKBUFX3 U2492 ( .A(ns4[18]), .Y(n2603) );
  CLKBUFX3 U2493 ( .A(s5[15]), .Y(n2602) );
  CLKBUFX3 U2494 ( .A(s5[13]), .Y(n2605) );
  CLKBUFX3 U2495 ( .A(ns1[9]), .Y(n2610) );
  CLKBUFX3 U2496 ( .A(s5[14]), .Y(n2609) );
  NAND2X1 U2497 ( .A(n1405), .B(n2512), .Y(n2309) );
  CLKBUFX3 U2498 ( .A(ns4[16]), .Y(n2611) );
  CLKBUFX3 U2499 ( .A(ns4[20]), .Y(n2613) );
  XNOR2X1 U2500 ( .A(n1960), .B(n1962), .Y(N887) );
  XOR2X1 U2501 ( .A(n2566), .B(n711), .Y(n1962) );
  CLKBUFX3 U2502 ( .A(ns4[12]), .Y(n2616) );
  CLKBUFX3 U2503 ( .A(ns4[13]), .Y(n2615) );
  OAI22XL U2504 ( .A0(n711), .A1(n1957), .B0(n1958), .B1(n2479), .Y(N889) );
  AND2X2 U2505 ( .A(n1957), .B(n711), .Y(n1958) );
  XNOR2X1 U2506 ( .A(n2057), .B(n2059), .Y(N814) );
  XOR2X1 U2507 ( .A(n2698), .B(ns3[21]), .Y(n2059) );
  XOR2X1 U2508 ( .A(s5[12]), .B(s5[11]), .Y(n2370) );
  XOR2X1 U2509 ( .A(N720), .B(ns0[8]), .Y(N721) );
  XOR2X1 U2510 ( .A(s5[7]), .B(s5[10]), .Y(N32) );
  XOR2X1 U2511 ( .A(n2369), .B(n2370), .Y(N52) );
  XNOR2X1 U2512 ( .A(n2366), .B(n2368), .Y(N53) );
  XOR2X1 U2513 ( .A(n2415), .B(n2416), .Y(N33) );
  XOR2X1 U2514 ( .A(n2605), .B(s5[12]), .Y(n2368) );
  XOR2X1 U2515 ( .A(n2310), .B(n2311), .Y(N572) );
  NAND2X1 U2516 ( .A(n2616), .B(N547), .Y(n2311) );
  OAI21XL U2517 ( .A0(n1405), .A1(n2512), .B0(n2309), .Y(n2310) );
  XOR2X1 U2518 ( .A(n2144), .B(n2145), .Y(N722) );
  NOR2X1 U2519 ( .A(n391), .B(n2515), .Y(n2144) );
  XOR2X1 U2520 ( .A(ns0[9]), .B(ns0[8]), .Y(n2145) );
  XOR2X1 U2521 ( .A(n2306), .B(n2308), .Y(N573) );
  XOR2X1 U2522 ( .A(n2606), .B(n1410), .Y(n2308) );
  XNOR2X1 U2523 ( .A(n2141), .B(n2143), .Y(N723) );
  XOR2X1 U2524 ( .A(ns0[9]), .B(ns0[10]), .Y(n2143) );
  XOR2X1 U2525 ( .A(n2195), .B(n2196), .Y(N647) );
  NAND2X1 U2526 ( .A(n2595), .B(N623), .Y(n2196) );
  OAI21XL U2527 ( .A0(n1412), .A1(n2455), .B0(n2194), .Y(n2195) );
  XOR2X1 U2528 ( .A(n1411), .B(n1410), .Y(N549) );
  XNOR2X1 U2529 ( .A(n2303), .B(n2305), .Y(N574) );
  XOR2X1 U2530 ( .A(n2607), .B(n1406), .Y(n2305) );
  XNOR2X1 U2531 ( .A(n2140), .B(n2138), .Y(N724) );
  XOR2X1 U2532 ( .A(n2457), .B(ns0[11]), .Y(n2140) );
  XOR2X1 U2533 ( .A(n2359), .B(n2361), .Y(N550) );
  XOR2X1 U2534 ( .A(n1406), .B(n1405), .Y(n2361) );
  XOR2X1 U2535 ( .A(n1415), .B(n1414), .Y(N800) );
  XNOR2X1 U2536 ( .A(n2137), .B(n2135), .Y(N725) );
  XOR2X1 U2537 ( .A(n2517), .B(ns0[12]), .Y(n2137) );
  XNOR2X1 U2538 ( .A(n2356), .B(n2358), .Y(N551) );
  XOR2X1 U2539 ( .A(n1410), .B(n1407), .Y(n2358) );
  XOR2X1 U2540 ( .A(n2097), .B(n2098), .Y(N801) );
  NOR2X1 U2541 ( .A(n1414), .B(n1415), .Y(n2097) );
  XNOR2X1 U2542 ( .A(n2132), .B(n2134), .Y(N726) );
  XOR2X1 U2543 ( .A(ns0[13]), .B(ns0[12]), .Y(n2134) );
  XNOR2X1 U2544 ( .A(n2353), .B(n2355), .Y(N552) );
  XOR2X1 U2545 ( .A(n2616), .B(n1406), .Y(n2355) );
  XOR2X1 U2546 ( .A(n2095), .B(n2093), .Y(N802) );
  XOR2X1 U2547 ( .A(n1396), .B(N847), .Y(n2095) );
  XNOR2X1 U2548 ( .A(n2131), .B(n2129), .Y(N727) );
  XOR2X1 U2549 ( .A(n2466), .B(ns0[14]), .Y(n2131) );
  XNOR2X1 U2550 ( .A(n2350), .B(n2352), .Y(N553) );
  XOR2X1 U2551 ( .A(n2615), .B(n1407), .Y(n2352) );
  XOR2X1 U2552 ( .A(n2128), .B(n2127), .Y(N728) );
  XOR2X1 U2553 ( .A(n2563), .B(ns0[15]), .Y(n2128) );
  XNOR2X1 U2554 ( .A(n2089), .B(n2087), .Y(N804) );
  XOR2X1 U2555 ( .A(n1398), .B(n2436), .Y(n2089) );
  XNOR2X1 U2556 ( .A(n2123), .B(n2125), .Y(N729) );
  XOR2X1 U2557 ( .A(ns0[16]), .B(ns0[15]), .Y(n2125) );
  XOR2X1 U2558 ( .A(n2085), .B(n2086), .Y(N805) );
  XOR2X1 U2559 ( .A(ns3[21]), .B(n1399), .Y(n2086) );
  XNOR2X1 U2560 ( .A(n2083), .B(n2081), .Y(N806) );
  XOR2X1 U2561 ( .A(n1400), .B(n2426), .Y(n2083) );
  XNOR2X1 U2562 ( .A(n2119), .B(n2117), .Y(N731) );
  XOR2X1 U2563 ( .A(n2476), .B(ns0[18]), .Y(n2119) );
  XOR2X1 U2564 ( .A(n2078), .B(n2080), .Y(N807) );
  XOR2X1 U2565 ( .A(ns3[23]), .B(n1401), .Y(n2080) );
  XNOR2X1 U2566 ( .A(n2114), .B(n2116), .Y(N732) );
  XOR2X1 U2567 ( .A(ns0[19]), .B(ns0[18]), .Y(n2116) );
  XNOR2X1 U2568 ( .A(n2273), .B(n2275), .Y(N583) );
  XOR2X1 U2569 ( .A(ns4[19]), .B(n768), .Y(n2275) );
  XNOR2X1 U2570 ( .A(n2110), .B(n2108), .Y(N734) );
  XOR2X1 U2571 ( .A(n2524), .B(ns0[21]), .Y(n2110) );
  XOR2X1 U2572 ( .A(n2069), .B(n2071), .Y(N810) );
  XOR2X1 U2573 ( .A(n2698), .B(n1403), .Y(n2071) );
  XNOR2X1 U2574 ( .A(n2105), .B(n2107), .Y(N735) );
  XOR2X1 U2575 ( .A(n2591), .B(ns0[21]), .Y(n2107) );
  XNOR2X1 U2576 ( .A(n2267), .B(n2269), .Y(N585) );
  XOR2X1 U2577 ( .A(n2601), .B(n768), .Y(n2269) );
  XNOR2X1 U2578 ( .A(n2066), .B(n2068), .Y(N811) );
  XOR2X1 U2579 ( .A(n2698), .B(n1404), .Y(n2068) );
  XNOR2X1 U2580 ( .A(n2323), .B(n2325), .Y(N561) );
  XOR2X1 U2581 ( .A(n2601), .B(ns4[19]), .Y(n2325) );
  XOR2X1 U2582 ( .A(n2748), .B(n2101), .Y(N737) );
  XOR2X1 U2583 ( .A(ns0[23]), .B(n794), .Y(n2101) );
  OAI22XL U2584 ( .A0(n794), .A1(n2748), .B0(n2099), .B1(n2445), .Y(N738) );
  NOR2BX1 U2585 ( .AN(n794), .B(n2100), .Y(n2099) );
  XOR2X1 U2586 ( .A(n1408), .B(n2452), .Y(n2413) );
  AO22X1 U2587 ( .A0(n2697), .A1(sum[20]), .B0(N1929), .B1(n2694), .Y(n480) );
  AO22X1 U2588 ( .A0(n2697), .A1(sum[19]), .B0(N1928), .B1(n2695), .Y(n486) );
  AO22X1 U2589 ( .A0(n2697), .A1(sum[18]), .B0(N1927), .B1(n2695), .Y(n492) );
  AO22X1 U2590 ( .A0(n2697), .A1(sum[17]), .B0(N1926), .B1(n2695), .Y(n498) );
  AND2X2 U2591 ( .A(n2146), .B(n784), .Y(n2147) );
  XOR2X1 U2592 ( .A(n2055), .B(n2056), .Y(N815) );
  XOR2X1 U2593 ( .A(n2698), .B(ns3[22]), .Y(n2056) );
  OAI22XL U2594 ( .A0(n2520), .A1(n2057), .B0(n2058), .B1(n2477), .Y(n2055) );
  AND2X2 U2595 ( .A(n2057), .B(n2520), .Y(n2058) );
  XOR2X1 U2596 ( .A(n2197), .B(n2148), .Y(N640) );
  OAI2BB1X1 U2597 ( .A0N(n2198), .A1N(n2582), .B0(n2199), .Y(n2197) );
  OAI21XL U2598 ( .A0(n2582), .A1(n2198), .B0(ns2[23]), .Y(n2199) );
  XOR2X1 U2599 ( .A(n1413), .B(n1412), .Y(N624) );
  XNOR2X1 U2600 ( .A(n2190), .B(n2185), .Y(N649) );
  CLKBUFX3 U2601 ( .A(ns1[15]), .Y(n2576) );
  CLKBUFX3 U2602 ( .A(ns1[18]), .Y(n2571) );
  CLKBUFX3 U2603 ( .A(ns1[19]), .Y(n2567) );
  CLKBUFX3 U2604 ( .A(ns1[20]), .Y(n2572) );
  CLKBUFX3 U2605 ( .A(ns1[16]), .Y(n2568) );
  CLKBUFX3 U2606 ( .A(ns1[17]), .Y(n2573) );
  CLKBUFX3 U2607 ( .A(N590), .Y(n2685) );
  CLKBUFX3 U2608 ( .A(ns1[14]), .Y(n2575) );
  CLKBUFX3 U2609 ( .A(ns2[16]), .Y(n2583) );
  CLKBUFX3 U2610 ( .A(ns2[14]), .Y(n2588) );
  CLKBUFX3 U2611 ( .A(ns2[15]), .Y(n2593) );
  CLKBUFX3 U2612 ( .A(N71), .Y(n2688) );
  CLKBUFX3 U2613 ( .A(ns2[13]), .Y(n2584) );
  CLKBUFX3 U2614 ( .A(s5[22]), .Y(n2600) );
  CLKBUFX3 U2615 ( .A(ns2[17]), .Y(n2587) );
  CLKBUFX3 U2616 ( .A(ns0[20]), .Y(n2589) );
  CLKBUFX3 U2617 ( .A(ns3[19]), .Y(n2614) );
  CLKBUFX3 U2618 ( .A(ns4[21]), .Y(n2601) );
  CLKBUFX3 U2619 ( .A(ns0[22]), .Y(n2591) );
  CLKBUFX3 U2620 ( .A(ns4[22]), .Y(n2608) );
  XOR2X1 U2621 ( .A(n2595), .B(n1412), .Y(n2247) );
  XOR2X1 U2622 ( .A(n2003), .B(n2004), .Y(N873) );
  NAND2X1 U2623 ( .A(n2610), .B(N870), .Y(n2004) );
  OAI21XL U2624 ( .A0(n1394), .A1(n2516), .B0(n2002), .Y(n2003) );
  XOR2X1 U2625 ( .A(n2053), .B(n2054), .Y(N849) );
  NAND2X1 U2626 ( .A(n2614), .B(N870), .Y(n2054) );
  OAI21XL U2627 ( .A0(n1394), .A1(n2436), .B0(n2052), .Y(n2053) );
  XNOR2X1 U2628 ( .A(n1993), .B(n1995), .Y(N876) );
  XOR2X1 U2629 ( .A(n2569), .B(ns1[11]), .Y(n1995) );
  XNOR2X1 U2630 ( .A(n2043), .B(n2045), .Y(N852) );
  XOR2X1 U2631 ( .A(ns3[23]), .B(ns1[11]), .Y(n2045) );
  XOR2X1 U2632 ( .A(n2609), .B(s5[11]), .Y(n2407) );
  AO22X1 U2633 ( .A0(n2697), .A1(sum[16]), .B0(N1925), .B1(n2695), .Y(n504) );
  AO22X1 U2634 ( .A0(n2697), .A1(sum[15]), .B0(N1924), .B1(n2695), .Y(n510) );
  AO22X1 U2635 ( .A0(n2697), .A1(sum[14]), .B0(N1923), .B1(n2695), .Y(n516) );
  AO22X1 U2636 ( .A0(n2697), .A1(sum[13]), .B0(N1922), .B1(n2695), .Y(n522) );
  NOR2X1 U2637 ( .A(n2686), .B(s5[23]), .Y(n2187) );
  NAND2X1 U2638 ( .A(s5[23]), .B(n2686), .Y(n2189) );
  CLKBUFX3 U2639 ( .A(ns1[21]), .Y(n2570) );
  CLKBUFX3 U2640 ( .A(ns1[22]), .Y(n2566) );
  CLKBUFX3 U2641 ( .A(ns1[23]), .Y(n2574) );
  CLKBUFX3 U2642 ( .A(s0[24]), .Y(n2703) );
  CLKBUFX3 U2643 ( .A(ns2[21]), .Y(n2580) );
  CLKBUFX3 U2644 ( .A(ns2[22]), .Y(n2582) );
  CLKBUFX3 U2645 ( .A(ns2[20]), .Y(n2579) );
  CLKBUFX3 U2646 ( .A(ns2[18]), .Y(n2592) );
  CLKBUFX3 U2647 ( .A(ns2[19]), .Y(n2581) );
  XOR2X1 U2648 ( .A(n1403), .B(n1395), .Y(n2098) );
  AO22X1 U2649 ( .A0(n2697), .A1(sum[12]), .B0(N1921), .B1(n2695), .Y(n528) );
  AO22X1 U2650 ( .A0(n2697), .A1(sum[11]), .B0(N1920), .B1(n2695), .Y(n534) );
  AO22X1 U2651 ( .A0(n2697), .A1(sum[10]), .B0(N1919), .B1(n2695), .Y(n540) );
  AO22X1 U2652 ( .A0(n2697), .A1(sum[9]), .B0(N1918), .B1(n2695), .Y(n546) );
  AO22X1 U2653 ( .A0(n2697), .A1(sum[8]), .B0(N1917), .B1(n2695), .Y(n552) );
  OAI22XL U2654 ( .A0(n449), .A1(n2697), .B0(n448), .B1(n2671), .Y(\U3/U1/Z_0 ) );
  OAI22XL U2655 ( .A0(n410), .A1(n2658), .B0(n2667), .B1(n2725), .Y(n667) );
  OAI22XL U2656 ( .A0(n2696), .A1(n2725), .B0(n411), .B1(n2694), .Y(n668) );
  OAI22XL U2657 ( .A0(n412), .A1(n2657), .B0(n2667), .B1(n2726), .Y(n669) );
  CLKBUFX3 U2658 ( .A(N665), .Y(n2683) );
  OAI22XL U2659 ( .A0(n447), .A1(n2697), .B0(n446), .B1(n2673), .Y(\U3/U1/Z_1 ) );
  OAI22XL U2660 ( .A0(n445), .A1(n2696), .B0(n444), .B1(n2671), .Y(\U3/U1/Z_2 ) );
  OAI22XL U2661 ( .A0(n443), .A1(n2696), .B0(n442), .B1(n2672), .Y(\U3/U1/Z_3 ) );
  OAI22XL U2662 ( .A0(n441), .A1(n2696), .B0(n440), .B1(n2672), .Y(\U3/U1/Z_4 ) );
  OAI22XL U2663 ( .A0(n439), .A1(n2696), .B0(n438), .B1(n2671), .Y(\U3/U1/Z_5 ) );
  OAI22XL U2664 ( .A0(n437), .A1(n2696), .B0(n436), .B1(n2672), .Y(\U3/U1/Z_6 ) );
  OAI22XL U2665 ( .A0(n435), .A1(n2696), .B0(n434), .B1(n2672), .Y(\U3/U1/Z_7 ) );
  OAI22XL U2666 ( .A0(n433), .A1(n2696), .B0(n432), .B1(n2671), .Y(\U3/U1/Z_8 ) );
  OAI22XL U2667 ( .A0(n431), .A1(n2696), .B0(n430), .B1(n2672), .Y(\U3/U1/Z_9 ) );
  OAI22XL U2668 ( .A0(n429), .A1(n2696), .B0(n428), .B1(n2672), .Y(
        \U3/U1/Z_10 ) );
  OAI22XL U2669 ( .A0(n427), .A1(n2696), .B0(n426), .B1(n2673), .Y(
        \U3/U1/Z_11 ) );
  OAI22XL U2670 ( .A0(n425), .A1(n2696), .B0(n424), .B1(n2672), .Y(
        \U3/U1/Z_12 ) );
  OAI22XL U2671 ( .A0(n423), .A1(n2696), .B0(n422), .B1(n2673), .Y(
        \U3/U1/Z_13 ) );
  OAI22XL U2672 ( .A0(n421), .A1(n2696), .B0(n420), .B1(n2671), .Y(
        \U3/U1/Z_14 ) );
  OAI22XL U2673 ( .A0(n419), .A1(n2696), .B0(n418), .B1(n2672), .Y(
        \U3/U1/Z_15 ) );
  OAI22XL U2674 ( .A0(n417), .A1(n2696), .B0(n416), .B1(n2672), .Y(
        \U3/U1/Z_16 ) );
  OAI22XL U2675 ( .A0(n415), .A1(n2696), .B0(n414), .B1(n2672), .Y(
        \U3/U1/Z_17 ) );
  CLKINVX1 U2676 ( .A(state[0]), .Y(n2744) );
  OAI22XL U2677 ( .A0(n413), .A1(n2696), .B0(n412), .B1(n2672), .Y(
        \U3/U1/Z_18 ) );
  XOR2X1 U2678 ( .A(n2582), .B(n784), .Y(n2151) );
  AO22X1 U2679 ( .A0(n2697), .A1(sum[7]), .B0(N1916), .B1(n2694), .Y(n558) );
  CLKINVX1 U2680 ( .A(N1953), .Y(n2725) );
  OAI22XL U2681 ( .A0(n411), .A1(n2696), .B0(n410), .B1(n2672), .Y(
        \U3/U1/Z_19 ) );
  OAI22XL U2682 ( .A0(n2696), .A1(n2726), .B0(n413), .B1(n2694), .Y(n670) );
  OAI22XL U2683 ( .A0(n414), .A1(n2658), .B0(n2667), .B1(n2727), .Y(n671) );
  OAI22XL U2684 ( .A0(n2696), .A1(n2727), .B0(n415), .B1(n2694), .Y(n672) );
  OAI22XL U2685 ( .A0(n416), .A1(n2658), .B0(n2667), .B1(n2728), .Y(n673) );
  OAI22XL U2686 ( .A0(n2696), .A1(n2728), .B0(n417), .B1(n2694), .Y(n674) );
  OAI22XL U2687 ( .A0(n418), .A1(n2657), .B0(n2667), .B1(n2729), .Y(n675) );
  OAI22XL U2688 ( .A0(n420), .A1(n2657), .B0(n2667), .B1(n2730), .Y(n677) );
  OAI22XL U2689 ( .A0(n2696), .A1(n2730), .B0(n421), .B1(n2694), .Y(n678) );
  OAI22XL U2690 ( .A0(n422), .A1(n2658), .B0(n2667), .B1(n2731), .Y(n679) );
  OAI22XL U2691 ( .A0(n424), .A1(n2658), .B0(n2667), .B1(n2732), .Y(n681) );
  OAI22XL U2692 ( .A0(n426), .A1(n2657), .B0(n2667), .B1(n2733), .Y(n683) );
  OAI22XL U2693 ( .A0(n2696), .A1(n2729), .B0(n419), .B1(n2693), .Y(n676) );
  OAI22XL U2694 ( .A0(n2696), .A1(n2731), .B0(n423), .B1(n2693), .Y(n680) );
  OAI22XL U2695 ( .A0(n2696), .A1(n2732), .B0(n425), .B1(n2693), .Y(n682) );
  OAI22XL U2696 ( .A0(n2696), .A1(n2733), .B0(n427), .B1(n2693), .Y(n684) );
  XOR2X1 U2697 ( .A(n2683), .B(ns2[23]), .Y(n2148) );
  OAI22XL U2698 ( .A0(n428), .A1(n2658), .B0(n2667), .B1(n2734), .Y(n685) );
  OAI22XL U2699 ( .A0(n430), .A1(n2657), .B0(n2667), .B1(n2735), .Y(n687) );
  OAI22XL U2700 ( .A0(n432), .A1(n2658), .B0(n2667), .B1(n2736), .Y(n689) );
  OAI22XL U2701 ( .A0(n434), .A1(n2657), .B0(n2667), .B1(n2737), .Y(n691) );
  OAI22XL U2702 ( .A0(n436), .A1(n2658), .B0(n2667), .B1(n2738), .Y(n693) );
  OAI22XL U2703 ( .A0(n438), .A1(n2657), .B0(n2667), .B1(n2739), .Y(n695) );
  OAI22XL U2704 ( .A0(n440), .A1(n2658), .B0(n2667), .B1(n2740), .Y(n697) );
  OAI22XL U2705 ( .A0(n442), .A1(n2657), .B0(n2667), .B1(n2741), .Y(n699) );
  OAI22XL U2706 ( .A0(n2696), .A1(n2734), .B0(n429), .B1(n2693), .Y(n686) );
  OAI22XL U2707 ( .A0(n2696), .A1(n2735), .B0(n431), .B1(n2693), .Y(n688) );
  OAI22XL U2708 ( .A0(n2696), .A1(n2736), .B0(n433), .B1(n2693), .Y(n690) );
  OAI22XL U2709 ( .A0(n2696), .A1(n2737), .B0(n435), .B1(n2692), .Y(n692) );
  OAI22XL U2710 ( .A0(n2696), .A1(n2738), .B0(n437), .B1(n2692), .Y(n694) );
  OAI22XL U2711 ( .A0(n2696), .A1(n2739), .B0(n439), .B1(n2691), .Y(n696) );
  OAI22XL U2712 ( .A0(n2696), .A1(n2740), .B0(n441), .B1(n2691), .Y(n698) );
  OAI22XL U2713 ( .A0(n2656), .A1(n2515), .B0(n1394), .B1(n2671), .Y(n547) );
  OAI22XL U2714 ( .A0(n1396), .A1(n2658), .B0(n1410), .B1(n2671), .Y(n544) );
  OAI22XL U2715 ( .A0(n1394), .A1(n2658), .B0(n1412), .B1(n2672), .Y(n548) );
  OAI22XL U2716 ( .A0(n711), .A1(n2658), .B0(n784), .B1(n2672), .Y(n452) );
  OAI22XL U2717 ( .A0(n1398), .A1(n2657), .B0(n1407), .B1(n2671), .Y(n532) );
  OAI22XL U2718 ( .A0(WEN), .A1(n2417), .B0(n1414), .B1(n2670), .Y(n501) );
  OAI22XL U2719 ( .A0(n2658), .A1(n2477), .B0(n768), .B1(n2672), .Y(n454) );
  OAI22XL U2720 ( .A0(n794), .A1(n2658), .B0(n711), .B1(n2672), .Y(n451) );
  OAI22XL U2721 ( .A0(n1395), .A1(n2656), .B0(n1405), .B1(n2671), .Y(n550) );
  OAI22XL U2722 ( .A0(WEN), .A1(n2469), .B0(n1403), .B1(n2671), .Y(n495) );
  OAI22XL U2723 ( .A0(n2655), .A1(n2721), .B0(n781), .B1(n2671), .Y(n569) );
  OAI22XL U2724 ( .A0(n1397), .A1(n2658), .B0(n1406), .B1(n2671), .Y(n538) );
  OAI22XL U2725 ( .A0(n1415), .A1(n2655), .B0(n1411), .B1(n2672), .Y(n556) );
  OAI22XL U2726 ( .A0(n2656), .A1(n2535), .B0(n1396), .B1(n2671), .Y(n543) );
  OAI22XL U2727 ( .A0(n2655), .A1(n2425), .B0(n1401), .B1(n2670), .Y(n513) );
  OAI22XL U2728 ( .A0(n448), .A1(n2657), .B0(\U3/U1/Z_0 ), .B1(n2670), .Y(n705) );
  OAI22XL U2729 ( .A0(n449), .A1(n2689), .B0(\U3/U1/Z_0 ), .B1(n2697), .Y(n706) );
  OAI22XL U2730 ( .A0(n1409), .A1(WEN), .B0(n1413), .B1(n2672), .Y(n554) );
  OAI22XL U2731 ( .A0(n2657), .A1(n2471), .B0(n1404), .B1(n2671), .Y(n489) );
  OAI22XL U2732 ( .A0(n2658), .A1(n2420), .B0(n1399), .B1(n2670), .Y(n525) );
  OAI22XL U2733 ( .A0(n1413), .A1(n2658), .B0(n1415), .B1(n2671), .Y(n555) );
  OAI22XL U2734 ( .A0(n2655), .A1(n2544), .B0(n1408), .B1(n2671), .Y(n587) );
  OAI22XL U2735 ( .A0(n2656), .A1(n2455), .B0(n1397), .B1(n2671), .Y(n537) );
  OAI22XL U2736 ( .A0(n2656), .A1(n2427), .B0(n1402), .B1(n2670), .Y(n507) );
  OAI22XL U2737 ( .A0(n391), .A1(n2658), .B0(n1409), .B1(n2671), .Y(n553) );
  OAI22XL U2738 ( .A0(n2656), .A1(n2419), .B0(n1398), .B1(n2670), .Y(n531) );
  OAI22XL U2739 ( .A0(n2656), .A1(n2437), .B0(n1400), .B1(n2670), .Y(n519) );
  OAI22XL U2740 ( .A0(n1412), .A1(n2657), .B0(n1395), .B1(n2670), .Y(n549) );
  OAI22XL U2741 ( .A0(n784), .A1(n2658), .B0(n2668), .B1(n2477), .Y(n453) );
  OAI22XL U2742 ( .A0(n1399), .A1(n2658), .B0(n2670), .B1(n2518), .Y(n526) );
  OAI22XL U2743 ( .A0(n1402), .A1(n2658), .B0(n2669), .B1(n2475), .Y(n508) );
  OAI22XL U2744 ( .A0(n1401), .A1(n2658), .B0(n2669), .B1(n2458), .Y(n514) );
  OAI22XL U2745 ( .A0(n1400), .A1(n2658), .B0(n2670), .B1(n2512), .Y(n520) );
  OAI22XL U2746 ( .A0(n2655), .A1(n397), .B0(n2663), .B1(n2503), .Y(n589) );
  OAI22XL U2747 ( .A0(n1404), .A1(n2658), .B0(n2669), .B1(n2468), .Y(n490) );
  OAI22XL U2748 ( .A0(n1414), .A1(n2658), .B0(n2669), .B1(n2438), .Y(n502) );
  OAI22XL U2749 ( .A0(n2655), .A1(n396), .B0(n2663), .B1(n2540), .Y(n583) );
  OAI22XL U2750 ( .A0(n2655), .A1(n394), .B0(n2662), .B1(n2546), .Y(n571) );
  OAI22XL U2751 ( .A0(n2655), .A1(n395), .B0(n2662), .B1(n2543), .Y(n577) );
  OAI22XL U2752 ( .A0(n446), .A1(n2657), .B0(n2659), .B1(n2743), .Y(n703) );
  OAI22XL U2753 ( .A0(WEN), .A1(n400), .B0(n2664), .B1(n2538), .Y(n607) );
  OAI22XL U2754 ( .A0(WEN), .A1(n399), .B0(n2664), .B1(n2539), .Y(n601) );
  OAI22XL U2755 ( .A0(WEN), .A1(n401), .B0(n2664), .B1(n2530), .Y(n613) );
  OAI22XL U2756 ( .A0(WEN), .A1(n398), .B0(n2663), .B1(n2497), .Y(n595) );
  OAI22XL U2757 ( .A0(n444), .A1(n2658), .B0(n2668), .B1(n2742), .Y(n701) );
  OAI22XL U2758 ( .A0(n2655), .A1(n393), .B0(n2662), .B1(n2706), .Y(n565) );
  OAI22XL U2759 ( .A0(n2696), .A1(n2742), .B0(n445), .B1(n2690), .Y(n702) );
  OAI22XL U2760 ( .A0(n2696), .A1(n2743), .B0(n447), .B1(n2689), .Y(n704) );
  OAI22XL U2761 ( .A0(n2696), .A1(n2741), .B0(n443), .B1(n2690), .Y(n700) );
  OAI22XL U2762 ( .A0(n2656), .A1(n403), .B0(n2665), .B1(n2547), .Y(n625) );
  OAI22XL U2763 ( .A0(n2656), .A1(n392), .B0(n2665), .B1(n2490), .Y(n559) );
  OAI22XL U2764 ( .A0(WEN), .A1(n404), .B0(n2665), .B1(n2510), .Y(n631) );
  OAI22XL U2765 ( .A0(WEN), .A1(n405), .B0(n2665), .B1(n2491), .Y(n637) );
  OAI22XL U2766 ( .A0(n2658), .A1(n406), .B0(n2665), .B1(n2492), .Y(n643) );
  OAI22XL U2767 ( .A0(n2655), .A1(n407), .B0(n2666), .B1(n2493), .Y(n649) );
  OAI22XL U2768 ( .A0(n2657), .A1(n408), .B0(n2666), .B1(n2494), .Y(n655) );
  OAI22XL U2769 ( .A0(n2656), .A1(n409), .B0(n2666), .B1(n2495), .Y(n661) );
  OAI22XL U2770 ( .A0(n2658), .A1(n402), .B0(n2664), .B1(n2481), .Y(n619) );
  NOR2X1 U2771 ( .A(n2655), .B(state[0]), .Y(n1955) );
  OAI2BB2XL U2772 ( .B0(n1410), .B1(n2658), .A0N(n2655), .A1N(sum[9]), .Y(n545) );
  OAI2BB2XL U2773 ( .B0(n1403), .B1(n2657), .A0N(WEN), .A1N(n2612), .Y(n496)
         );
  OAI21XL U2774 ( .A0(n781), .A1(n2648), .B0(n1956), .Y(n570) );
  OAI2BB2XL U2775 ( .B0(n1408), .B1(n2647), .A0N(DIn[2]), .A1N(n2648), .Y(n588) );
  OAI2BB2XL U2776 ( .B0(n2647), .B1(n2460), .A0N(DIn[14]), .A1N(n2648), .Y(
        n660) );
  OAI2BB2XL U2777 ( .B0(n2647), .B1(n2459), .A0N(DIn[11]), .A1N(n2648), .Y(
        n642) );
  OAI2BB2XL U2778 ( .B0(n2647), .B1(n2456), .A0N(DIn[8]), .A1N(n2648), .Y(n624) );
  OAI2BB2XL U2779 ( .B0(n2647), .B1(n2514), .A0N(DIn[9]), .A1N(n2648), .Y(n630) );
  OAI2BB2XL U2780 ( .B0(n2647), .B1(n2513), .A0N(DIn[7]), .A1N(n2648), .Y(n618) );
  OAI2BB2XL U2781 ( .B0(n2647), .B1(n2465), .A0N(DIn[13]), .A1N(n2648), .Y(
        n654) );
  OAI2BB2XL U2782 ( .B0(n2647), .B1(n2461), .A0N(DIn[12]), .A1N(n2648), .Y(
        n648) );
  OAI2BB2XL U2783 ( .B0(n2647), .B1(n2511), .A0N(DIn[6]), .A1N(n2648), .Y(n612) );
  OAI2BB2XL U2784 ( .B0(n2647), .B1(n2421), .A0N(DIn[10]), .A1N(n2648), .Y(
        n636) );
  OAI2BB2XL U2785 ( .B0(n2647), .B1(n2454), .A0N(DIn[1]), .A1N(n2648), .Y(n582) );
  OAI2BB2XL U2786 ( .B0(n2647), .B1(n2532), .A0N(DIn[0]), .A1N(n2648), .Y(n576) );
  OAI2BB2XL U2787 ( .B0(n2647), .B1(n2453), .A0N(DIn[3]), .A1N(n2648), .Y(n594) );
  OAI2BB2XL U2788 ( .B0(n2647), .B1(n2434), .A0N(DIn[4]), .A1N(n2648), .Y(n600) );
  OAI2BB2XL U2789 ( .B0(n2647), .B1(n2452), .A0N(DIn[5]), .A1N(n2648), .Y(n606) );
  NAND2X1 U2790 ( .A(DIn[15]), .B(n2647), .Y(n1956) );
  AO22X1 U2791 ( .A0(n2673), .A1(ns4[19]), .B0(WEN), .B1(sum[19]), .Y(n485) );
  AO22X1 U2792 ( .A0(n2685), .A1(n2673), .B0(n2658), .B1(sum[24]), .Y(n455) );
  AO22X1 U2793 ( .A0(n2673), .A1(n2607), .B0(n2658), .B1(sum[15]), .Y(n509) );
  AO22X1 U2794 ( .A0(N547), .A1(n2673), .B0(n2657), .B1(sum[7]), .Y(n557) );
  AO22X1 U2795 ( .A0(n2673), .A1(n2613), .B0(WEN), .B1(sum[20]), .Y(n479) );
  AO22X1 U2796 ( .A0(n2673), .A1(n2615), .B0(WEN), .B1(sum[13]), .Y(n521) );
  AO22X1 U2797 ( .A0(N548), .A1(n2673), .B0(n2655), .B1(sum[8]), .Y(n551) );
  AO22X1 U2798 ( .A0(n2673), .A1(n2616), .B0(n2658), .B1(sum[12]), .Y(n527) );
  AO22X1 U2799 ( .A0(N570), .A1(n2673), .B0(n2657), .B1(sum[11]), .Y(n533) );
  AO22X1 U2800 ( .A0(N569), .A1(n2673), .B0(n2656), .B1(sum[10]), .Y(n539) );
  AO22X1 U2801 ( .A0(data_done), .A1(n2693), .B0(n2697), .B1(Finish), .Y(n707)
         );
  AO22X1 U2802 ( .A0(n2673), .A1(n2608), .B0(n2657), .B1(sum[22]), .Y(n467) );
  AO22X1 U2803 ( .A0(n2673), .A1(ns4[23]), .B0(n2656), .B1(sum[23]), .Y(n461)
         );
  AO22X1 U2804 ( .A0(n2657), .A1(n2566), .B0(n2673), .B1(n2591), .Y(n463) );
  AO22X1 U2805 ( .A0(n2656), .A1(n2610), .B0(n2673), .B1(ns0[9]), .Y(n541) );
  AO22X1 U2806 ( .A0(n2673), .A1(n2601), .B0(n2658), .B1(sum[21]), .Y(n473) );
  AO22X1 U2807 ( .A0(n2673), .A1(n2603), .B0(n2657), .B1(sum[18]), .Y(n491) );
  AO22X1 U2808 ( .A0(n2673), .A1(n2606), .B0(n2656), .B1(sum[14]), .Y(n515) );
  AO22X1 U2809 ( .A0(n2673), .A1(n2611), .B0(WEN), .B1(sum[16]), .Y(n503) );
  AO22X1 U2810 ( .A0(n2673), .A1(n2612), .B0(n2658), .B1(sum[17]), .Y(n497) );
  NOR2X1 U2811 ( .A(state[1]), .B(state[0]), .Y(next_state[0]) );
endmodule

