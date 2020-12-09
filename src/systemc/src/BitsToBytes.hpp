/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _BitsToBytes_
#define _BitsToBytes_

#include "systemc.h"
#include <cstdint>

SC_MODULE(BitsToBytes)
{
public:
    sc_in < bool > clock;
    sc_in < bool > reset;
    sc_fifo_in < sc_uint<1> > e;
    sc_fifo_out< sc_uint<8> > s;

    SC_CTOR(BitsToBytes)
    {
		SC_CTHREAD(do_gen, clock.pos());
        reset_signal_is(reset,true);
    }

private:

    void do_gen( )
    {
#if 1
        while ( true )
        {
            uint8_t v = 0;
            for( uint32_t q = 0; q < 8 ; q += 1 )
            {
                uint8_t E = e.read();
                v = (v << 1) | E;
            }
            s.write( v );
        }
#else
        while ( true )
        {
            uint8_t bits[8];
            for( uint32_t q = 0; q < 8 ; q += 1 )
                bits[q] = e.read();

            uint8_t v = 0;
            for( uint32_t q = 0; q < 8 ; q += 1 )
            {
                v = (v << 1) | bits[q];
            }
            for( uint32_t q = 0; q < 8 ; q += 1 )
                printf("%d", bits[q]);
            printf(" = 0x%2.2X\n", v);
            s.write( v );
        }
#endif
    }

};

#endif
