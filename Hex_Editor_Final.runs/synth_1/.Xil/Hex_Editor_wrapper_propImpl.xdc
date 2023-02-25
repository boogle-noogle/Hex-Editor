set_property SRC_FILE_INFO {cfile:c:/Users/PsilosC/Desktop/Hex_Editor_Final/Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ip/Hex_Editor_clk_wiz_0_0/Hex_Editor_clk_wiz_0_0/Hex_Editor_clk_wiz_0_0_in_context.xdc rfile:../../../Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ip/Hex_Editor_clk_wiz_0_0/Hex_Editor_clk_wiz_0_0/Hex_Editor_clk_wiz_0_0_in_context.xdc id:1 order:EARLY scoped_inst:Hex_Editor_i/clk_wiz_0} [current_design]
set_property SRC_FILE_INFO {cfile:{C:/Users/PsilosC/Desktop/Hex_Editor_Final/Hex_Editor_Final.srcs/constrs_1/imports/Downloads/PYNQ-Z2 v1.0.xdc} rfile:{../../../Hex_Editor_Final.srcs/constrs_1/imports/Downloads/PYNQ-Z2 v1.0.xdc} id:2} [current_design]
current_instance Hex_Editor_i/clk_wiz_0
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 8.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 16.000 32.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { iClk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { oLEDs[0] }]; #IO_L6N_T0_VREF_34 Sch=led[0]
set_property src_info {type:XDC file:2 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { oLEDs[1] }]; #IO_L6P_T0_34 Sch=led[1]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { oLEDs[2] }]; #IO_L21N_T3_DQS_AD14N_35 Sch=led[2]
set_property src_info {type:XDC file:2 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { oLEDs[3] }]; #IO_L23P_T3_35 Sch=led[3]
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { iRst }]; #IO_L4P_T0_35 Sch=btn[0]
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { iPush }]; #IO_L4N_T0_35 Sch=btn[1]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { iStop }]; #IO_L9N_T1_DQS_AD3N_35 Sch=btn[2]
set_property src_info {type:XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { iSpace}]; #IO_L9P_T1_DQS_AD3P_35 Sch=btn[3]
set_property src_info {type:XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { oRed[0] }]; #IO_L17P_T2_34 Sch=ja_p[1]
set_property src_info {type:XDC file:2 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { oRed[1] }]; #IO_L17N_T2_34 Sch=ja_n[1]
set_property src_info {type:XDC file:2 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { oRed[2] }]; #IO_L7P_T1_34 Sch=ja_p[2]
set_property src_info {type:XDC file:2 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { oRed[3] }]; #IO_L7N_T1_34 Sch=ja_n[2]
set_property src_info {type:XDC file:2 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { oBlue[0] }]; #IO_L12P_T1_MRCC_34 Sch=ja_p[3]
set_property src_info {type:XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { oBlue[1] }]; #IO_L12N_T1_MRCC_34 Sch=ja_n[3]
set_property src_info {type:XDC file:2 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { oBlue[2] }]; #IO_L22P_T3_34 Sch=ja_p[4]
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { oBlue[3] }]; #IO_L22N_T3_34 Sch=ja_n[4]
set_property src_info {type:XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { oGreen[0] }]; #IO_L8P_T1_34 Sch=jb_p[1]
set_property src_info {type:XDC file:2 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { oGreen[1] }]; #IO_L8N_T1_34 Sch=jb_n[1]
set_property src_info {type:XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { oGreen[2] }]; #IO_L1P_T0_34 Sch=jb_p[2]
set_property src_info {type:XDC file:2 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { oGreen[3] }]; #IO_L1N_T0_34 Sch=jb_n[2]
set_property src_info {type:XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { oHS }]; #IO_L18P_T2_34 Sch=jb_p[3]
set_property src_info {type:XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { oVS }]; #IO_L18N_T2_34 Sch=jb_n[3]
