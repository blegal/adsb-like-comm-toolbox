set moduleName Seuil_calc
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Seuil_calc::Seuil_calc.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e int 8 regular {fifo 0 volatile }  }
	{ detect int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Seuil_calc.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Seuil_calc.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Seuil_calc.e.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "detect", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Seuil_calc.detect.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ clock sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clock } 
	{ e_dout sc_in sc_lv 8 signal 2 clock } 
	{ e_empty_n sc_in sc_logic 1 signal 2 clock } 
	{ e_read sc_out sc_logic 1 signal 2 clock } 
	{ detect_din sc_out sc_logic 1 signal 3 clock } 
	{ detect_full_n sc_in sc_logic 1 signal 3 clock } 
	{ detect_write sc_out sc_logic 1 signal 3 clock } 
}
set NewPortList {[ 
	{ "name": "clock", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "detect_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "detect", "role": "din" }} , 
 	{ "name": "detect_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "detect", "role": "full_n" }} , 
 	{ "name": "detect_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "detect", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Seuil_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "189",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "detect"}]},
			{"Name" : "Seuil_calc_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "Seuil_calc_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "188", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "detect_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U22", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U23", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U24", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U25", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U26", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U27", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U28", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U29", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U30", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U31", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U32", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U33", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U34", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U35", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U36", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U37", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U38", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U39", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U40", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U41", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U42", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U43", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U44", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U45", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U46", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U47", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U48", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U49", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U50", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U51", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U52", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U53", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U54", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U55", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U56", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U57", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U58", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U59", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U60", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U61", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U62", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U63", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U64", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U65", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U66", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U67", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U68", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U69", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U70", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U71", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U72", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U73", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U74", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U75", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U76", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U77", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U78", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U79", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U80", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U81", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U82", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U83", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U84", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U85", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U86", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U87", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U88", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U89", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U90", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U91", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U92", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U93", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U94", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fdiv_3fYi_U95", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_uitofpg8j_U96", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fcmp_3hbi_U97", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	Seuil_calc {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 26 FirstWrite -1}
		detect {Type O LastRead -1 FirstWrite 187}
		Seuil_calc_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	Seuil_calc_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 26 FirstWrite -1}
		detect {Type O LastRead -1 FirstWrite 187}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "189"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "190"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 8 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	detect { ap_fifo {  { detect_din fifo_data 1 1 }  { detect_full_n fifo_status 0 1 }  { detect_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 1 has_conditional }
	detect { fifo_write 1 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
