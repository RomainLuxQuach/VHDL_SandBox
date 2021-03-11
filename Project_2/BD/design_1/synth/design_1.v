//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Feb 26 14:58:25 2021
//Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (H,
    INH,
    PA,
    RAZ);
  input H;
  input INH;
  output [3:0]PA;
  input RAZ;

  wire [2:0]Compteur_3bits_0_S;
  wire [3:0]Encodeur_0_PA;
  wire H_1;
  wire INH_1;
  wire RAZ_1;

  assign H_1 = H;
  assign INH_1 = INH;
  assign PA[3:0] = Encodeur_0_PA;
  assign RAZ_1 = RAZ;
  design_1_Compteur_3bits_0_0 Compteur_3bits_0
       (.H(H_1),
        .RAZ(RAZ_1),
        .S(Compteur_3bits_0_S));
  design_1_Encodeur_0_0 Encodeur_0
       (.INH(INH_1),
        .PA(Encodeur_0_PA),
        .Q(Compteur_3bits_0_S));
endmodule
