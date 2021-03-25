set moduleName Detecteur
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
set C_modelName {Detecteur::Detecteur.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e int 8 unused {fifo 0}  }
	{ s int 8 unused {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Detecteur.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Detecteur.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Detecteur.e.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Detecteur.s.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ clock sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clock } 
	{ e_dout sc_in sc_lv 8 signal 2 clock } 
	{ e_empty_n sc_in sc_logic 1 signal 2 clock } 
	{ e_read sc_out sc_logic 1 signal 2 clock } 
	{ s_din sc_out sc_lv 8 signal 3 clock } 
	{ s_full_n sc_in sc_logic 1 signal 3 clock } 
	{ s_write sc_out sc_logic 1 signal 3 clock } 
}
set NewPortList {[ 
	{ "name": "clock", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s", "role": "din" }} , 
 	{ "name": "s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "full_n" }} , 
 	{ "name": "s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "79", "81", "83", "84", "85"],
		"CDFG" : "Detecteur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2311",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "clock_form2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_fu_100", "Port" : "clock"}]},
			{"Name" : "reset_form3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_fu_100", "Port" : "reset"}]},
			{"Name" : "dbl2scalc_1_form4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_fu_100", "Port" : "e"}]},
			{"Name" : "detect_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_fu_100", "Port" : "detect"}]},
			{"Name" : "clock_form5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_trames_separ_fu_114", "Port" : "clock"}]},
			{"Name" : "reset_form6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_trames_separ_fu_114", "Port" : "reset"}]},
			{"Name" : "dbl2tsep_1_form7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_trames_separ_fu_114", "Port" : "e"}]},
			{"Name" : "detect_1_form8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_trames_separ_fu_114", "Port" : "detect"}]},
			{"Name" : "s_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_trames_separ_fu_114", "Port" : "s"}]},
			{"Name" : "clock_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "clock"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "reset"}]},
			{"Name" : "e_form", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "e"}]},
			{"Name" : "dbl2scalc_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "s1"}]},
			{"Name" : "dbl2tsep_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "s2"}]},
			{"Name" : "dbl2scalc_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "dbl2tsep_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "detect_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "Seuil_calc_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc_fu_100", "Port" : "Seuil_calc_ssdm_thread_M_do_gen"}]},
			{"Name" : "trames_separ_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_trames_separ_fu_114", "Port" : "trames_separ_ssdm_thread_M_do_gen"}]},
			{"Name" : "DOUBLEUR_U_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "DOUBLEUR_U_ssdm_thread_M_do_gen"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc_do_gen_fu_56", "Port" : "detect"}]},
			{"Name" : "Seuil_calc_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U22", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U23", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U24", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U25", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U26", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U27", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U28", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U29", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U30", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U31", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U32", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U33", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U34", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U35", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U36", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U37", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U38", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U39", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U40", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U41", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U42", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U43", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U44", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U45", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U46", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U47", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U48", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U49", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U50", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U51", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U52", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U53", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U54", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U55", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U56", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U57", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U58", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U59", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fadd_3dEe_U60", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U61", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U62", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U63", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U64", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U65", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U66", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U67", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U68", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U69", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U70", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U71", "Parent" : "2"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U72", "Parent" : "2"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U73", "Parent" : "2"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U74", "Parent" : "2"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U75", "Parent" : "2"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U76", "Parent" : "2"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U77", "Parent" : "2"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U78", "Parent" : "2"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U79", "Parent" : "2"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U80", "Parent" : "2"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U81", "Parent" : "2"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U82", "Parent" : "2"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U83", "Parent" : "2"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U84", "Parent" : "2"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U85", "Parent" : "2"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U86", "Parent" : "2"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U87", "Parent" : "2"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U88", "Parent" : "2"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U89", "Parent" : "2"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U90", "Parent" : "2"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U91", "Parent" : "2"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U92", "Parent" : "2"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U93", "Parent" : "2"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fmul_3eOg_U94", "Parent" : "2"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fdiv_3fYi_U95", "Parent" : "2"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_uitofpg8j_U96", "Parent" : "2"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc_fu_100.grp_Seuil_calc_do_gen_fu_56.Seuil_calc_fcmp_3hbi_U97", "Parent" : "2"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_trames_separ_fu_114", "Parent" : "0", "Child" : ["80"],
		"CDFG" : "trames_separ",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "2310",
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
					{"ID" : "80", "SubInstance" : "grp_trames_separ_do_gen_fu_60", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_trames_separ_do_gen_fu_60", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_trames_separ_do_gen_fu_60", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_trames_separ_do_gen_fu_60", "Port" : "detect"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_trames_separ_do_gen_fu_60", "Port" : "s"}]},
			{"Name" : "trames_separ_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trames_separ_fu_114.grp_trames_separ_do_gen_fu_60", "Parent" : "79",
		"CDFG" : "trames_separ_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "2309",
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
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "detect_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DOUBLEUR_U_fu_130", "Parent" : "0", "Child" : ["82"],
		"CDFG" : "DOUBLEUR_U",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "3",
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
					{"ID" : "82", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "e"}]},
			{"Name" : "s1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "s1"}]},
			{"Name" : "s2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "s2"}]},
			{"Name" : "DOUBLEUR_U_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DOUBLEUR_U_fu_130.grp_DOUBLEUR_U_do_gen_fu_60", "Parent" : "81",
		"CDFG" : "DOUBLEUR_U_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
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
			{"Name" : "s1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dbl2scalc_1_fifo_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dbl2tsep_1_fifo_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Detecteur {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead -1 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite -1}
		clock_form2 {Type I LastRead -1 FirstWrite -1}
		reset_form3 {Type I LastRead -1 FirstWrite -1}
		dbl2scalc_1_form4 {Type I LastRead -1 FirstWrite -1}
		detect_1_form {Type O LastRead -1 FirstWrite -1}
		clock_form5 {Type I LastRead -1 FirstWrite -1}
		reset_form6 {Type I LastRead -1 FirstWrite -1}
		dbl2tsep_1_form7 {Type I LastRead -1 FirstWrite -1}
		detect_1_form8 {Type I LastRead -1 FirstWrite -1}
		s_form {Type O LastRead -1 FirstWrite -1}
		clock_form {Type I LastRead -1 FirstWrite -1}
		reset_form {Type I LastRead -1 FirstWrite -1}
		e_form {Type I LastRead -1 FirstWrite -1}
		dbl2scalc_1_form {Type O LastRead -1 FirstWrite -1}
		dbl2tsep_1_form {Type O LastRead -1 FirstWrite -1}
		dbl2scalc_1 {Type IO LastRead -1 FirstWrite -1}
		dbl2tsep_1 {Type IO LastRead -1 FirstWrite -1}
		detect_1 {Type IO LastRead -1 FirstWrite -1}
		Seuil_calc_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		trames_separ_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		DOUBLEUR_U_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
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
		detect {Type O LastRead -1 FirstWrite 187}}
	trames_separ {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 4 FirstWrite -1}
		detect {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 2}
		trames_separ_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	trames_separ_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 4 FirstWrite -1}
		detect {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 2}}
	DOUBLEUR_U {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s1 {Type O LastRead -1 FirstWrite 1}
		s2 {Type O LastRead -1 FirstWrite 1}
		DOUBLEUR_U_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	DOUBLEUR_U_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		s1 {Type O LastRead -1 FirstWrite 1}
		s2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2311"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2312"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 8 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_din fifo_data 1 8 }  { s_full_n fifo_status 0 1 }  { s_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 0 no_conditional }
	s { fifo_write 0 no_conditional }
	dbl2scalc_1_form4 { fifo_read 1 no_conditional }
	detect_1_form { fifo_write 1 no_conditional }
	dbl2tsep_1_form7 { fifo_read 1 no_conditional }
	detect_1_form8 { fifo_read 1 no_conditional }
	s_form { fifo_write 1 no_conditional }
	e_form { fifo_read 1 no_conditional }
	dbl2scalc_1_form { fifo_write 1 no_conditional }
	dbl2tsep_1_form { fifo_write 1 no_conditional }
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
