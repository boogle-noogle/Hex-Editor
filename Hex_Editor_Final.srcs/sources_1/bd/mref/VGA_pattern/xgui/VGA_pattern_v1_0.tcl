# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "HEIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_BP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_FP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_PW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_PW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ascii_mem_depth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ascii_mem_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "mem_Depth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "mem_Width" -parent ${Page_0}


}

proc update_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to update HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HEIGHT { PARAM_VALUE.HEIGHT } {
	# Procedure called to validate HEIGHT
	return true
}

proc update_PARAM_VALUE.H_BP { PARAM_VALUE.H_BP } {
	# Procedure called to update H_BP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BP { PARAM_VALUE.H_BP } {
	# Procedure called to validate H_BP
	return true
}

proc update_PARAM_VALUE.H_FP { PARAM_VALUE.H_FP } {
	# Procedure called to update H_FP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FP { PARAM_VALUE.H_FP } {
	# Procedure called to validate H_FP
	return true
}

proc update_PARAM_VALUE.H_PW { PARAM_VALUE.H_PW } {
	# Procedure called to update H_PW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_PW { PARAM_VALUE.H_PW } {
	# Procedure called to validate H_PW
	return true
}

proc update_PARAM_VALUE.V_BP { PARAM_VALUE.V_BP } {
	# Procedure called to update V_BP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BP { PARAM_VALUE.V_BP } {
	# Procedure called to validate V_BP
	return true
}

proc update_PARAM_VALUE.V_FP { PARAM_VALUE.V_FP } {
	# Procedure called to update V_FP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FP { PARAM_VALUE.V_FP } {
	# Procedure called to validate V_FP
	return true
}

proc update_PARAM_VALUE.V_PW { PARAM_VALUE.V_PW } {
	# Procedure called to update V_PW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_PW { PARAM_VALUE.V_PW } {
	# Procedure called to validate V_PW
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}

proc update_PARAM_VALUE.ascii_mem_depth { PARAM_VALUE.ascii_mem_depth } {
	# Procedure called to update ascii_mem_depth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ascii_mem_depth { PARAM_VALUE.ascii_mem_depth } {
	# Procedure called to validate ascii_mem_depth
	return true
}

proc update_PARAM_VALUE.ascii_mem_width { PARAM_VALUE.ascii_mem_width } {
	# Procedure called to update ascii_mem_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ascii_mem_width { PARAM_VALUE.ascii_mem_width } {
	# Procedure called to validate ascii_mem_width
	return true
}

proc update_PARAM_VALUE.mem_Depth { PARAM_VALUE.mem_Depth } {
	# Procedure called to update mem_Depth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.mem_Depth { PARAM_VALUE.mem_Depth } {
	# Procedure called to validate mem_Depth
	return true
}

proc update_PARAM_VALUE.mem_Width { PARAM_VALUE.mem_Width } {
	# Procedure called to update mem_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.mem_Width { PARAM_VALUE.mem_Width } {
	# Procedure called to validate mem_Width
	return true
}


proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

proc update_MODELPARAM_VALUE.H_FP { MODELPARAM_VALUE.H_FP PARAM_VALUE.H_FP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FP}] ${MODELPARAM_VALUE.H_FP}
}

proc update_MODELPARAM_VALUE.H_PW { MODELPARAM_VALUE.H_PW PARAM_VALUE.H_PW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_PW}] ${MODELPARAM_VALUE.H_PW}
}

proc update_MODELPARAM_VALUE.H_BP { MODELPARAM_VALUE.H_BP PARAM_VALUE.H_BP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BP}] ${MODELPARAM_VALUE.H_BP}
}

proc update_MODELPARAM_VALUE.HEIGHT { MODELPARAM_VALUE.HEIGHT PARAM_VALUE.HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HEIGHT}] ${MODELPARAM_VALUE.HEIGHT}
}

proc update_MODELPARAM_VALUE.V_FP { MODELPARAM_VALUE.V_FP PARAM_VALUE.V_FP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FP}] ${MODELPARAM_VALUE.V_FP}
}

proc update_MODELPARAM_VALUE.V_PW { MODELPARAM_VALUE.V_PW PARAM_VALUE.V_PW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_PW}] ${MODELPARAM_VALUE.V_PW}
}

proc update_MODELPARAM_VALUE.V_BP { MODELPARAM_VALUE.V_BP PARAM_VALUE.V_BP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BP}] ${MODELPARAM_VALUE.V_BP}
}

proc update_MODELPARAM_VALUE.mem_Width { MODELPARAM_VALUE.mem_Width PARAM_VALUE.mem_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.mem_Width}] ${MODELPARAM_VALUE.mem_Width}
}

proc update_MODELPARAM_VALUE.mem_Depth { MODELPARAM_VALUE.mem_Depth PARAM_VALUE.mem_Depth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.mem_Depth}] ${MODELPARAM_VALUE.mem_Depth}
}

proc update_MODELPARAM_VALUE.ascii_mem_width { MODELPARAM_VALUE.ascii_mem_width PARAM_VALUE.ascii_mem_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ascii_mem_width}] ${MODELPARAM_VALUE.ascii_mem_width}
}

proc update_MODELPARAM_VALUE.ascii_mem_depth { MODELPARAM_VALUE.ascii_mem_depth PARAM_VALUE.ascii_mem_depth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ascii_mem_depth}] ${MODELPARAM_VALUE.ascii_mem_depth}
}

