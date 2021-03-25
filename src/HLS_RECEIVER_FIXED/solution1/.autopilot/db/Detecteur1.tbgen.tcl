set moduleName Detecteur1
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
set C_modelName {Detecteur1::Detecteur1.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e int 8 unused {fifo 0}  }
	{ s int 8 unused {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Detecteur1.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "Detecteur1.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Detecteur1.e.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Detecteur1.s.m_if.Val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "21", "23", "25", "26", "27"],
		"CDFG" : "Detecteur1",
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
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "clock"}]},
			{"Name" : "reset_form3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "reset"}]},
			{"Name" : "dbl2scalc_1_form4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "e"}]},
			{"Name" : "detect_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "detect"}]},
			{"Name" : "clock_form5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "clock"}]},
			{"Name" : "reset_form6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "reset"}]},
			{"Name" : "dbl2tsep_1_form7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "e"}]},
			{"Name" : "detect_1_form8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "detect"}]},
			{"Name" : "s_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "s"}]},
			{"Name" : "clock_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "clock"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "reset"}]},
			{"Name" : "e_form", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "e"}]},
			{"Name" : "dbl2scalc_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "s1"}]},
			{"Name" : "dbl2tsep_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "s2"}]},
			{"Name" : "dbl2scalc_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "dbl2tsep_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "detect_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "Seuil_calc1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "Seuil_calc1_ssdm_thread_M_do_gen"}]},
			{"Name" : "trames_separ1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "trames_separ1_ssdm_thread_M_do_gen"}]},
			{"Name" : "DOUBLEUR_U_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "DOUBLEUR_U_ssdm_thread_M_do_gen"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "Seuil_calc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "8",
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
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "detect"}]},
			{"Name" : "Seuil_calc1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "Seuil_calc1_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U22", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U23", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U24", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U25", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U26", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U27", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U28", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U29", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U30", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U31", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U32", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U33", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U34", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U35", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U36", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U37", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mul_meOg_U38", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mul_mfYi_U39", "Parent" : "2"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_trames_separ1_fu_114", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "trames_separ1",
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
					{"ID" : "22", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "detect"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "s"}]},
			{"Name" : "trames_separ1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_trames_separ1_fu_114.grp_trames_separ1_do_gen_fu_60", "Parent" : "21",
		"CDFG" : "trames_separ1_do_gen",
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
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DOUBLEUR_U_fu_130", "Parent" : "0", "Child" : ["24"],
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
					{"ID" : "24", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "e"}]},
			{"Name" : "s1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "s1"}]},
			{"Name" : "s2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "s2"}]},
			{"Name" : "DOUBLEUR_U_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DOUBLEUR_U_fu_130.grp_DOUBLEUR_U_do_gen_fu_60", "Parent" : "23",
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
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dbl2scalc_1_fifo_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dbl2tsep_1_fifo_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Detecteur1 {
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
		Seuil_calc1_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		trames_separ1_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		DOUBLEUR_U_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	Seuil_calc1 {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		detect {Type O LastRead -1 FirstWrite 6}
		Seuil_calc1_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	Seuil_calc1_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 1 FirstWrite -1}
		detect {Type O LastRead -1 FirstWrite 6}}
	trames_separ1 {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 4 FirstWrite -1}
		detect {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 2}
		trames_separ1_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	trames_separ1_do_gen {
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
