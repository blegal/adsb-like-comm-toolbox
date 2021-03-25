#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("clock", 1, hls_in, -1, "", "", 1),
	Port_Property("reset", 1, hls_in, -1, "", "", 1),
	Port_Property("e_dout", 8, hls_in, 2, "ap_fifo", "fifo_data", 0),
	Port_Property("e_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 0),
	Port_Property("e_read", 1, hls_out, 2, "ap_fifo", "fifo_update", 0),
	Port_Property("addr_din", 32, hls_out, 3, "ap_fifo", "fifo_data", 0),
	Port_Property("addr_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 0),
	Port_Property("addr_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 0),
	Port_Property("rgbv_din", 24, hls_out, 4, "ap_fifo", "fifo_data", 0),
	Port_Property("rgbv_full_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 0),
	Port_Property("rgbv_write", 1, hls_out, 4, "ap_fifo", "fifo_update", 0),
};
const char* HLS_Design_Meta::dut_name = "my_module1::my_module1";
