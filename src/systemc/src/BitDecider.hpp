/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _BitDecider_
#define _BitDecider_

#include "systemc.h"
#include <cstdint>

SC_MODULE(BitDecider)
{
public:
    sc_in < bool > clock;
    sc_in < bool > reset;
    sc_fifo_in < sc_uint<8> > e;
    sc_fifo_out< sc_uint<1> > s;

    SC_CTOR(BitDecider)
    {
		SC_CTHREAD(do_gen, clock.pos());
        reset_signal_is(reset,true);
    }

private:

    void do_gen( )
    {
        while ( true )
        {
            const uint8_t left  = e.read();
            const uint8_t right = e.read();
            const uint8_t bitv  = left > right;
#if 0
            printf("%3d ? %3d => %d\n", left, right, bitv);
#endif
            s.write( bitv );
        }
    }

};

#endif
