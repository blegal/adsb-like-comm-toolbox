#include "RAWReader.hpp"
#include "my_module.hpp"
#include "BMPWriter.hpp"

#include <iostream>
#include <math.h>

using namespace std;

int main (int argc, char * argv []){
	cout << "Initialisation des composants..." << endl;

    RAWReader raw ("RAWReader");
    my_module mod ("my_module");
    BMPWriter bmp ("BMPWriter");

    sc_clock clk("clk",10,SC_NS);
    sc_signal<bool> reset;

    sc_fifo< sc_int <8>  > raw2mod  (16);
    sc_fifo< sc_uint<32> > mod2bmp_1 (16);
    sc_fifo< sc_uint<24> > mod2bmp_2 (16);

    raw.s(raw2mod);

 	mod.clock  ( clk );
	mod.reset(reset);
    mod.e(raw2mod);
    mod.addr(mod2bmp_1);
    mod.rgbv(mod2bmp_2);

    bmp.addr(mod2bmp_1);
    bmp.rgbv(mod2bmp_2);

//	ldpc.clk  ( clk );
//	ldpc.reset(reset);

    sc_start();

	return 0;
}
