// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Feb 26 15:58:05 2021
// Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Travail/ProjetVHDL/Project_2/Project_2.srcs/sources_1/bd/design_1/ip/design_1_Encodeur_0_0/design_1_Encodeur_0_0_sim_netlist.v
// Design      : design_1_Encodeur_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Encodeur_0_0,Encodeur,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Encodeur,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_Encodeur_0_0
   (Q,
    PA1,
    PA2,
    PB1,
    PB2,
    INH);
  input [2:0]Q;
  output PA1;
  output PA2;
  output PB1;
  output PB2;
  input INH;

  wire INH;
  wire PA1;
  wire PA2;
  wire PB1;
  wire PB2;
  wire [2:0]Q;

  design_1_Encodeur_0_0_Encodeur U0
       (.INH(INH),
        .PA1(PA1),
        .PA2(PA2),
        .PB1(PB1),
        .PB2(PB2),
        .Q(Q));
endmodule

(* ORIG_REF_NAME = "Encodeur" *) 
module design_1_Encodeur_0_0_Encodeur
   (PA2,
    PA1,
    PB2,
    PB1,
    INH,
    Q);
  output PA2;
  output PA1;
  output PB2;
  output PB1;
  input INH;
  input [2:0]Q;

  wire INH;
  wire PA1;
  wire PA2;
  wire PB1;
  wire PB2;
  wire [2:0]Q;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88A2)) 
    PA1_INST_0
       (.I0(INH),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(PA1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h22A8)) 
    PA2_INST_0
       (.I0(INH),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(PA2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h80AA)) 
    PB1_INST_0
       (.I0(INH),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(PB1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    PB2_INST_0
       (.I0(INH),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(PB2));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
