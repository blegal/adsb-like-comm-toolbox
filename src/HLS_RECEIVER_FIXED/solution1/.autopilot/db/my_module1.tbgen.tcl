set moduleName my_module1
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
set C_modelName {my_module1::my_module1}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ e int 8 unused {fifo 0}  }
	{ addr int 32 unused {fifo 1}  }
	{ rgbv int 24 unused {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "my_module1.clock.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "my_module1.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "e", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "my_module1.e.m_if.Val.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "addr", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "my_module1.addr.m_if.Val.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rgbv", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "my_module1.rgbv.m_if.Val.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ clock sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clock } 
	{ e_dout sc_in sc_lv 8 signal 2 clock } 
	{ e_empty_n sc_in sc_logic 1 signal 2 clock } 
	{ e_read sc_out sc_logic 1 signal 2 clock } 
	{ addr_din sc_out sc_lv 32 signal 3 clock } 
	{ addr_full_n sc_in sc_logic 1 signal 3 clock } 
	{ addr_write sc_out sc_logic 1 signal 3 clock } 
	{ rgbv_din sc_out sc_lv 24 signal 4 clock } 
	{ rgbv_full_n sc_in sc_logic 1 signal 4 clock } 
	{ rgbv_write sc_out sc_logic 1 signal 4 clock } 
}
set NewPortList {[ 
	{ "name": "clock", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "e_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "e", "role": "dout" }} , 
 	{ "name": "e_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "empty_n" }} , 
 	{ "name": "e_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "read" }} , 
 	{ "name": "addr_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addr", "role": "din" }} , 
 	{ "name": "addr_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "full_n" }} , 
 	{ "name": "addr_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr", "role": "write" }} , 
 	{ "name": "rgbv_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgbv", "role": "din" }} , 
 	{ "name": "rgbv_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgbv", "role": "full_n" }} , 
 	{ "name": "rgbv_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgbv", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "32", "34", "36", "38", "42", "44", "45", "46", "47", "48", "49"],
		"CDFG" : "my_module1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2312",
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
			{"Name" : "addr", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "rgbv", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "clock_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ModuleCompute_fu_212", "Port" : "clock"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ModuleCompute_fu_212", "Port" : "reset"}]},
			{"Name" : "e_form", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ModuleCompute_fu_212", "Port" : "e"}]},
			{"Name" : "mod2dbl_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ModuleCompute_fu_212", "Port" : "s"}]},
			{"Name" : "clock_form4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "clock"}]},
			{"Name" : "reset_form5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "reset"}]},
			{"Name" : "mod2dbl_1_form6", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "e"}]},
			{"Name" : "det2dow_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "s"}]},
			{"Name" : "my_module1_det_s_calc_clock_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "clock_form2"}]},
			{"Name" : "my_module1_det_s_calc_reset_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "reset_form3"}]},
			{"Name" : "my_module1_det_s_calc_e_m_if_Val_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "dbl2scalc_1_form4"}]},
			{"Name" : "my_module1_det_s_calc_detect_m_if_Val", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "detect_1_form"}]},
			{"Name" : "my_module1_det_t_sep_clock_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "clock_form5"}]},
			{"Name" : "my_module1_det_t_sep_reset_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "reset_form6"}]},
			{"Name" : "my_module1_det_t_sep_e_m_if_Val_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "dbl2tsep_1_form7"}]},
			{"Name" : "my_module1_det_t_sep_detect_m_if_Val", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "detect_1_form8"}]},
			{"Name" : "my_module1_det_t_sep_s_m_if_Val_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "s_form"}]},
			{"Name" : "my_module1_det_dbl_clock_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "clock_form"}]},
			{"Name" : "my_module1_det_dbl_reset_m_if_Val", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "reset_form"}]},
			{"Name" : "my_module1_det_dbl_e_m_if_Val_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "e_form"}]},
			{"Name" : "my_module1_det_dbl_s1_m_if_Val_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "dbl2scalc_1_form"}]},
			{"Name" : "my_module1_det_dbl_s2_m_if_Val_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "dbl2tsep_1_form"}]},
			{"Name" : "my_module1_det_dbl2scalc_Val_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "dbl2scalc_1"}]},
			{"Name" : "my_module1_det_dbl2tsep_Val_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "dbl2tsep_1"}]},
			{"Name" : "my_module1_det_detect_Val", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "detect_1"}]},
			{"Name" : "clock_form7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_DownSampling_fu_278", "Port" : "clock"}]},
			{"Name" : "reset_form8", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_DownSampling_fu_278", "Port" : "reset"}]},
			{"Name" : "det2dow_1_form9", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_DownSampling_fu_278", "Port" : "e"}]},
			{"Name" : "dow2bit_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_DownSampling_fu_278", "Port" : "s"}]},
			{"Name" : "clock_form10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_BitDecider_fu_292", "Port" : "clock"}]},
			{"Name" : "reset_form11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_BitDecider_fu_292", "Port" : "reset"}]},
			{"Name" : "dow2bit_1_form12", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_BitDecider_fu_292", "Port" : "e"}]},
			{"Name" : "bit2byt_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_BitDecider_fu_292", "Port" : "s"}]},
			{"Name" : "clock_form13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_BitsToBytes_fu_306", "Port" : "clock"}]},
			{"Name" : "reset_form14", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_BitsToBytes_fu_306", "Port" : "reset"}]},
			{"Name" : "bit2byt_1_form15", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_BitsToBytes_fu_306", "Port" : "e"}]},
			{"Name" : "byt2crc_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_BitsToBytes_fu_306", "Port" : "s"}]},
			{"Name" : "clock_form16", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_CRCCheck_fu_320", "Port" : "clock"}]},
			{"Name" : "reset_form17", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_CRCCheck_fu_320", "Port" : "reset"}]},
			{"Name" : "byt2crc_1_form18", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_CRCCheck_fu_320", "Port" : "e"}]},
			{"Name" : "crc2fra_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_CRCCheck_fu_320", "Port" : "s"}]},
			{"Name" : "clock_form19", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_FrameProcessing_fu_334", "Port" : "clock"}]},
			{"Name" : "reset_form20", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_FrameProcessing_fu_334", "Port" : "reset"}]},
			{"Name" : "crc2fra_1_form21", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_FrameProcessing_fu_334", "Port" : "e"}]},
			{"Name" : "addr_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_FrameProcessing_fu_334", "Port" : "addr"}]},
			{"Name" : "rgbv_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_FrameProcessing_fu_334", "Port" : "rgbv"}]},
			{"Name" : "mod2dbl_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "sc_fifo_chn_1", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "sc_fifo_chn_13", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "det2dow_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "dow2bit_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "bit2byt_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "byt2crc_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "crc2fra_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "ModuleCompute_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_ModuleCompute_fu_212", "Port" : "ModuleCompute_ssdm_thread_M_do_gen"}]},
			{"Name" : "Seuil_calc1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "Seuil_calc1_ssdm_thread_M_do_gen"}]},
			{"Name" : "trames_separ1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "trames_separ1_ssdm_thread_M_do_gen"}]},
			{"Name" : "DOUBLEUR_U_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Detecteur1_fu_226", "Port" : "DOUBLEUR_U_ssdm_thread_M_do_gen"}]},
			{"Name" : "DownSampling_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_DownSampling_fu_278", "Port" : "DownSampling_ssdm_thread_M_do_gen"}]},
			{"Name" : "BitDecider_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_BitDecider_fu_292", "Port" : "BitDecider_ssdm_thread_M_do_gen"}]},
			{"Name" : "BitsToBytes_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_BitsToBytes_fu_306", "Port" : "BitsToBytes_ssdm_thread_M_do_gen"}]},
			{"Name" : "CRCCheck_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_CRCCheck_fu_320", "Port" : "CRCCheck_ssdm_thread_M_do_gen"}]},
			{"Name" : "FrameProcessing_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_FrameProcessing_fu_334", "Port" : "FrameProcessing_ssdm_thread_M_do_gen"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ModuleCompute_fu_212", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "ModuleCompute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "22",
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
					{"ID" : "2", "SubInstance" : "grp_ModuleCompute_do_gen_fu_58", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_ModuleCompute_do_gen_fu_58", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_ModuleCompute_do_gen_fu_58", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_ModuleCompute_do_gen_fu_58", "Port" : "s"}]},
			{"Name" : "ModuleCompute_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ModuleCompute_fu_212.grp_ModuleCompute_do_gen_fu_58", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "ModuleCompute_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
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
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ModuleCompute_fu_212.grp_ModuleCompute_do_gen_fu_58.ModuleCompute_macg8j_U66", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226", "Parent" : "0", "Child" : ["5", "25", "27", "29", "30", "31"],
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
					{"ID" : "5", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "clock"}]},
			{"Name" : "reset_form3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "reset"}]},
			{"Name" : "dbl2scalc_1_form4", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "e"}]},
			{"Name" : "detect_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "detect"}]},
			{"Name" : "clock_form5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "clock"}]},
			{"Name" : "reset_form6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "reset"}]},
			{"Name" : "dbl2tsep_1_form7", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "e"}]},
			{"Name" : "detect_1_form8", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "detect"}]},
			{"Name" : "s_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "s"}]},
			{"Name" : "clock_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "clock"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "reset"}]},
			{"Name" : "e_form", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "e"}]},
			{"Name" : "dbl2scalc_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "s1"}]},
			{"Name" : "dbl2tsep_1_form", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "s2"}]},
			{"Name" : "dbl2scalc_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "dbl2tsep_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "detect_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "Seuil_calc1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_Seuil_calc1_fu_100", "Port" : "Seuil_calc1_ssdm_thread_M_do_gen"}]},
			{"Name" : "trames_separ1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_trames_separ1_fu_114", "Port" : "trames_separ1_ssdm_thread_M_do_gen"}]},
			{"Name" : "DOUBLEUR_U_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_DOUBLEUR_U_fu_130", "Port" : "DOUBLEUR_U_ssdm_thread_M_do_gen"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100", "Parent" : "4", "Child" : ["6"],
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
					{"ID" : "6", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Seuil_calc1_do_gen_fu_56", "Port" : "detect"}]},
			{"Name" : "Seuil_calc1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56", "Parent" : "5", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
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
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U22", "Parent" : "6"},
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U23", "Parent" : "6"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U24", "Parent" : "6"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U25", "Parent" : "6"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U26", "Parent" : "6"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U27", "Parent" : "6"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U28", "Parent" : "6"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U29", "Parent" : "6"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U30", "Parent" : "6"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U31", "Parent" : "6"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U32", "Parent" : "6"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U33", "Parent" : "6"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U34", "Parent" : "6"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U35", "Parent" : "6"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U36", "Parent" : "6"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mac_mdEe_U37", "Parent" : "6"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mul_meOg_U38", "Parent" : "6"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_Seuil_calc1_fu_100.grp_Seuil_calc1_do_gen_fu_56.Seuil_calc1_mul_mfYi_U39", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_trames_separ1_fu_114", "Parent" : "4", "Child" : ["26"],
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
					{"ID" : "26", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "e"}]},
			{"Name" : "detect", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "detect"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_trames_separ1_do_gen_fu_60", "Port" : "s"}]},
			{"Name" : "trames_separ1_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_trames_separ1_fu_114.grp_trames_separ1_do_gen_fu_60", "Parent" : "25",
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_DOUBLEUR_U_fu_130", "Parent" : "4", "Child" : ["28"],
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
					{"ID" : "28", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "e"}]},
			{"Name" : "s1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "s1"}]},
			{"Name" : "s2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_DOUBLEUR_U_do_gen_fu_60", "Port" : "s2"}]},
			{"Name" : "DOUBLEUR_U_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.grp_DOUBLEUR_U_fu_130.grp_DOUBLEUR_U_do_gen_fu_60", "Parent" : "27",
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
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.dbl2scalc_1_fifo_U", "Parent" : "4"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.dbl2tsep_1_fifo_U", "Parent" : "4"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Detecteur1_fu_226.detect_1_fifo_U", "Parent" : "4"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DownSampling_fu_278", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "DownSampling",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "5",
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
					{"ID" : "33", "SubInstance" : "grp_DownSampling_do_gen_fu_56", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_DownSampling_do_gen_fu_56", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_DownSampling_do_gen_fu_56", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_DownSampling_do_gen_fu_56", "Port" : "s"}]},
			{"Name" : "DownSampling_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DownSampling_fu_278.grp_DownSampling_do_gen_fu_56", "Parent" : "32",
		"CDFG" : "DownSampling_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BitDecider_fu_292", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "BitDecider",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "5",
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
					{"ID" : "35", "SubInstance" : "grp_BitDecider_do_gen_fu_58", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_BitDecider_do_gen_fu_58", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_BitDecider_do_gen_fu_58", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_BitDecider_do_gen_fu_58", "Port" : "s"}]},
			{"Name" : "BitDecider_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BitDecider_fu_292.grp_BitDecider_do_gen_fu_58", "Parent" : "34",
		"CDFG" : "BitDecider_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BitsToBytes_fu_306", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "BitsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "12",
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
					{"ID" : "37", "SubInstance" : "grp_BitsToBytes_do_gen_fu_58", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_BitsToBytes_do_gen_fu_58", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_BitsToBytes_do_gen_fu_58", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_BitsToBytes_do_gen_fu_58", "Port" : "s"}]},
			{"Name" : "BitsToBytes_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BitsToBytes_fu_306.grp_BitsToBytes_do_gen_fu_58", "Parent" : "36",
		"CDFG" : "BitsToBytes_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
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
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CRCCheck_fu_320", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "CRCCheck",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "154",
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
					{"ID" : "39", "SubInstance" : "grp_CRCCheck_do_gen_fu_56", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_CRCCheck_do_gen_fu_56", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_CRCCheck_do_gen_fu_56", "Port" : "e"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_CRCCheck_do_gen_fu_56", "Port" : "s"}]},
			{"Name" : "CRCCheck_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CRCCheck_fu_320.grp_CRCCheck_do_gen_fu_56", "Parent" : "38", "Child" : ["40", "41"],
		"CDFG" : "CRCCheck_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "84", "EstimateLatencyMax" : "153",
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
			{"Name" : "s", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CRCCheck_fu_320.grp_CRCCheck_do_gen_fu_56.ibuffer_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_CRCCheck_fu_320.grp_CRCCheck_do_gen_fu_56.CRCCheck_mux_42_8cud_U9", "Parent" : "39"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FrameProcessing_fu_334", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "FrameProcessing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "75",
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
					{"ID" : "43", "SubInstance" : "grp_FrameProcessing_do_gen_fu_64", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_FrameProcessing_do_gen_fu_64", "Port" : "reset"}]},
			{"Name" : "e", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_FrameProcessing_do_gen_fu_64", "Port" : "e"}]},
			{"Name" : "addr", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_FrameProcessing_do_gen_fu_64", "Port" : "addr"}]},
			{"Name" : "rgbv", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_FrameProcessing_do_gen_fu_64", "Port" : "rgbv"}]},
			{"Name" : "FrameProcessing_ssdm_thread_M_do_gen", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FrameProcessing_fu_334.grp_FrameProcessing_do_gen_fu_64", "Parent" : "42",
		"CDFG" : "FrameProcessing_do_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "74",
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
			{"Name" : "addr", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "addr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgbv", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rgbv_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mod2dbl_1_fifo_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.det2dow_1_fifo_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dow2bit_1_fifo_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bit2byt_1_fifo_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.byt2crc_1_fifo_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crc2fra_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	my_module1 {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead -1 FirstWrite -1}
		addr {Type O LastRead -1 FirstWrite -1}
		rgbv {Type O LastRead -1 FirstWrite -1}
		clock_form {Type I LastRead -1 FirstWrite -1}
		reset_form {Type I LastRead -1 FirstWrite -1}
		e_form {Type I LastRead -1 FirstWrite -1}
		mod2dbl_1_form {Type O LastRead -1 FirstWrite -1}
		clock_form4 {Type I LastRead -1 FirstWrite -1}
		reset_form5 {Type I LastRead -1 FirstWrite -1}
		mod2dbl_1_form6 {Type I LastRead -1 FirstWrite -1}
		det2dow_1_form {Type O LastRead -1 FirstWrite -1}
		my_module1_det_s_calc_clock_m_if_Val {Type I LastRead -1 FirstWrite -1}
		my_module1_det_s_calc_reset_m_if_Val {Type I LastRead -1 FirstWrite -1}
		my_module1_det_s_calc_e_m_if_Val_V {Type I LastRead -1 FirstWrite -1}
		my_module1_det_s_calc_detect_m_if_Val {Type O LastRead -1 FirstWrite -1}
		my_module1_det_t_sep_clock_m_if_Val {Type I LastRead -1 FirstWrite -1}
		my_module1_det_t_sep_reset_m_if_Val {Type I LastRead -1 FirstWrite -1}
		my_module1_det_t_sep_e_m_if_Val_V {Type I LastRead -1 FirstWrite -1}
		my_module1_det_t_sep_detect_m_if_Val {Type I LastRead -1 FirstWrite -1}
		my_module1_det_t_sep_s_m_if_Val_V {Type O LastRead -1 FirstWrite -1}
		my_module1_det_dbl_clock_m_if_Val {Type I LastRead -1 FirstWrite -1}
		my_module1_det_dbl_reset_m_if_Val {Type I LastRead -1 FirstWrite -1}
		my_module1_det_dbl_e_m_if_Val_V {Type I LastRead -1 FirstWrite -1}
		my_module1_det_dbl_s1_m_if_Val_V {Type O LastRead -1 FirstWrite -1}
		my_module1_det_dbl_s2_m_if_Val_V {Type O LastRead -1 FirstWrite -1}
		my_module1_det_dbl2scalc_Val_V {Type IO LastRead -1 FirstWrite -1}
		my_module1_det_dbl2tsep_Val_V {Type IO LastRead -1 FirstWrite -1}
		my_module1_det_detect_Val {Type IO LastRead -1 FirstWrite -1}
		clock_form7 {Type I LastRead -1 FirstWrite -1}
		reset_form8 {Type I LastRead -1 FirstWrite -1}
		det2dow_1_form9 {Type I LastRead -1 FirstWrite -1}
		dow2bit_1_form {Type O LastRead -1 FirstWrite -1}
		clock_form10 {Type I LastRead -1 FirstWrite -1}
		reset_form11 {Type I LastRead -1 FirstWrite -1}
		dow2bit_1_form12 {Type I LastRead -1 FirstWrite -1}
		bit2byt_1_form {Type O LastRead -1 FirstWrite -1}
		clock_form13 {Type I LastRead -1 FirstWrite -1}
		reset_form14 {Type I LastRead -1 FirstWrite -1}
		bit2byt_1_form15 {Type I LastRead -1 FirstWrite -1}
		byt2crc_1_form {Type O LastRead -1 FirstWrite -1}
		clock_form16 {Type I LastRead -1 FirstWrite -1}
		reset_form17 {Type I LastRead -1 FirstWrite -1}
		byt2crc_1_form18 {Type I LastRead -1 FirstWrite -1}
		crc2fra_1_form {Type O LastRead -1 FirstWrite -1}
		clock_form19 {Type I LastRead -1 FirstWrite -1}
		reset_form20 {Type I LastRead -1 FirstWrite -1}
		crc2fra_1_form21 {Type I LastRead -1 FirstWrite -1}
		addr_form {Type O LastRead -1 FirstWrite -1}
		rgbv_form {Type O LastRead -1 FirstWrite -1}
		mod2dbl_1 {Type IO LastRead -1 FirstWrite -1}
		sc_fifo_chn_1 {Type I LastRead -1 FirstWrite -1}
		sc_fifo_chn_13 {Type I LastRead -1 FirstWrite -1}
		det2dow_1 {Type IO LastRead -1 FirstWrite -1}
		dow2bit_1 {Type IO LastRead -1 FirstWrite -1}
		bit2byt_1 {Type IO LastRead -1 FirstWrite -1}
		byt2crc_1 {Type IO LastRead -1 FirstWrite -1}
		crc2fra_1 {Type IO LastRead -1 FirstWrite -1}
		ModuleCompute_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		Seuil_calc1_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		trames_separ1_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		DOUBLEUR_U_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		DownSampling_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		BitDecider_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		BitsToBytes_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		CRCCheck_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}
		FrameProcessing_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	ModuleCompute {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 4}
		ModuleCompute_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	ModuleCompute_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 4}}
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
		s2 {Type O LastRead -1 FirstWrite 1}}
	DownSampling {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 3}
		DownSampling_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	DownSampling_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 3}}
	BitDecider {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 3}
		BitDecider_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	BitDecider_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 3}}
	BitsToBytes {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 2}
		BitsToBytes_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	BitsToBytes_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 2 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 2}}
	CRCCheck {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 7}
		CRCCheck_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	CRCCheck_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 4 FirstWrite -1}
		s {Type O LastRead -1 FirstWrite 7}}
	FrameProcessing {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 11 FirstWrite -1}
		addr {Type O LastRead -1 FirstWrite 11}
		rgbv {Type O LastRead -1 FirstWrite 11}
		FrameProcessing_ssdm_thread_M_do_gen {Type I LastRead -1 FirstWrite -1}}
	FrameProcessing_do_gen {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		e {Type I LastRead 11 FirstWrite -1}
		addr {Type O LastRead -1 FirstWrite 11}
		rgbv {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2312"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "2313"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e { ap_fifo {  { e_dout fifo_data 0 8 }  { e_empty_n fifo_status 0 1 }  { e_read fifo_update 1 1 } } }
	addr { ap_fifo {  { addr_din fifo_data 1 32 }  { addr_full_n fifo_status 0 1 }  { addr_write fifo_update 1 1 } } }
	rgbv { ap_fifo {  { rgbv_din fifo_data 1 24 }  { rgbv_full_n fifo_status 0 1 }  { rgbv_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	e { fifo_read 0 no_conditional }
	addr { fifo_write 0 no_conditional }
	rgbv { fifo_write 0 no_conditional }
	e_form { fifo_read 1 no_conditional }
	mod2dbl_1_form { fifo_write 1 no_conditional }
	mod2dbl_1_form6 { fifo_read 1 no_conditional }
	det2dow_1_form { fifo_write 1 no_conditional }
	my_module1_det_s_calc_e_m_if_Val_V { fifo_read 1 no_conditional }
	my_module1_det_s_calc_detect_m_if_Val { fifo_write 1 no_conditional }
	my_module1_det_t_sep_e_m_if_Val_V { fifo_read 1 no_conditional }
	my_module1_det_t_sep_detect_m_if_Val { fifo_read 1 no_conditional }
	my_module1_det_t_sep_s_m_if_Val_V { fifo_write 1 no_conditional }
	my_module1_det_dbl_e_m_if_Val_V { fifo_read 1 no_conditional }
	my_module1_det_dbl_s1_m_if_Val_V { fifo_write 1 no_conditional }
	my_module1_det_dbl_s2_m_if_Val_V { fifo_write 1 no_conditional }
	my_module1_det_dbl2scalc_Val_V { fifo_write 1 no_conditional }
	my_module1_det_dbl2tsep_Val_V { fifo_write 1 no_conditional }
	my_module1_det_detect_Val { fifo_write 1 no_conditional }
	det2dow_1_form9 { fifo_read 1 no_conditional }
	dow2bit_1_form { fifo_write 1 no_conditional }
	dow2bit_1_form12 { fifo_read 1 no_conditional }
	bit2byt_1_form { fifo_write 1 no_conditional }
	bit2byt_1_form15 { fifo_read 1 no_conditional }
	byt2crc_1_form { fifo_write 1 no_conditional }
	byt2crc_1_form18 { fifo_read 1 no_conditional }
	crc2fra_1_form { fifo_write 1 no_conditional }
	crc2fra_1_form21 { fifo_read 1 no_conditional }
	addr_form { fifo_write 1 no_conditional }
	rgbv_form { fifo_write 1 no_conditional }
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
