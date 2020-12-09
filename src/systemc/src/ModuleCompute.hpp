/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _ModuleCompute_
#define _ModuleCompute_

#include "systemc.h"
#include <cstdint>

SC_MODULE(ModuleCompute)
{
public:
    sc_in < bool > clock;
    sc_in < bool > reset;
    sc_fifo_in < sc_int <8> > e;
    sc_fifo_out< sc_uint<8> > s;

	SC_CTOR(ModuleCompute)
	{
		SC_CTHREAD(do_gen, clock.pos());
        reset_signal_is(reset,true);
	}

private:

    unsigned short int_sqrt32(unsigned short x)
    {
        unsigned char res = 0;
        unsigned char add = 0x80;   // 32b = 0x8000
        int i;
        for(i = 0; i < 8; i++) // 32b = 16
        {
            unsigned char temp=res | add;
            unsigned short g2 = temp * temp;
            if (x >= g2)
            {
                res = temp;
            }
            add >>=1;
        }
        return res;
    }

    void do_gen( )
	{
//	    uint64_t counter = 0;
	    while ( true )
        {
#pragma HLS PIPELINE enable_flush
#if 0
            float breal = e.read();
            float bimag = e.read();
            float resul = sqrt( breal * breal + bimag * bimag);
            s.write( (sc_uint<8>)resul );
#else
            sc_int < 8> breal = e.read();
            sc_int < 8> bimag = e.read();
            sc_uint<16> rr = breal * breal;
            sc_uint<16> ii = bimag * bimag;
            sc_uint< 8> rc = int_sqrt32( rr + ii);
            s.write( rc );
#endif
        }
	}

};

#endif
