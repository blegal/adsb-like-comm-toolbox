/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#include "systemc.h"
#include "constantes.hpp"
#include "../../Tools/BMP.hpp"

SC_MODULE(BMPWriter)
{
public:

    sc_fifo_in< sc_uint<32> > addr;
	sc_fifo_in< sc_uint<24> > rgbv;

    SC_CTOR(BMPWriter)
    {
        SC_THREAD(do_gen);
    }

    ~BMPWriter( )
    {
        bmp->write( "received_image.bmp" );
        delete bmp;
    }

private:
    BMP* bmp;

    void do_gen( )
	{
		bmp = new BMP(640, 480);
		uint8_t* ptr = bmp->data.data();
		while( true )
        {
            uint32_t adr = addr.read();
            sc_uint<24> rgb = rgbv.read();
            uint32_t r = rgb.range(23, 16);
            uint32_t g = rgb.range(15,  8);
            uint32_t b = rgb.range( 7,  0);
            ptr[3 * adr + 0 ] = r;
            ptr[3 * adr + 1 ] = g;
            ptr[3 * adr + 2 ] = b;
        }
	}

};