vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../../Hex_Editor_Final.srcs/sources_1/bd/Hex_Editor/ipshared/8b3d" \
"../../../bd/Hex_Editor/ip/Hex_Editor_Debounce_Switch_0_0/sim/Hex_Editor_Debounce_Switch_0_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_Debounce_Switch_1_0/sim/Hex_Editor_Debounce_Switch_1_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_Debounce_Switch_2_0/sim/Hex_Editor_Debounce_Switch_2_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_clk_wiz_0_0/Hex_Editor_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_clk_wiz_0_0/Hex_Editor_clk_wiz_0_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_num_capture_4bit_0_0/sim/Hex_Editor_num_capture_4bit_0_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_ScreenBufferMem_0_0/sim/Hex_Editor_ScreenBufferMem_0_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_VGA_timings_0_0/sim/Hex_Editor_VGA_timings_0_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_VGA_pattern_0_0/sim/Hex_Editor_VGA_pattern_0_0.v" \
"../../../bd/Hex_Editor/ip/Hex_Editor_AsciiCharsMem_0_0/sim/Hex_Editor_AsciiCharsMem_0_0.v" \
"../../../bd/Hex_Editor/sim/Hex_Editor.v" \


vlog -work xil_defaultlib \
"glbl.v"

