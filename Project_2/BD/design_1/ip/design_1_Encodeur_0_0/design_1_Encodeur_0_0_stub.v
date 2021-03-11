// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Feb 26 15:58:05 2021
// Host        : LAPTOP-5MI2KRL1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Travail/ProjetVHDL/Project_2/Project_2.srcs/sources_1/bd/design_1/ip/design_1_Encodeur_0_0/design_1_Encodeur_0_0_stub.v
// Design      : design_1_Encodeur_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Encodeur,Vivado 2019.1" *)
module design_1_Encodeur_0_0(Q, PA1, PA2, PB1, PB2, INH)
/* synthesis syn_black_box black_box_pad_pin="Q[2:0],PA1,PA2,PB1,PB2,INH" */;
  input [2:0]Q;
  output PA1;
  output PA2;
  output PB1;
  output PB2;
  input INH;
endmodule
