/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _DownSampling_
#define _DownSampling_

#include "systemc.h"
#include <cstdint>
#include "constantes.hpp"

SC_MODULE(DownSampling)
{
public:
    sc_in < bool > clock;
    sc_in < bool > reset;
    sc_fifo_in < sc_uint<8> > e;
    sc_fifo_out< sc_uint<8> > s;

    SC_CTOR(DownSampling)
    {
		SC_CTHREAD(do_gen, clock.pos());
        reset_signal_is(reset,true);
    }

private:

    void do_gen( )
    {
        const uint8_t scale = 2;
#if 1
        while( true )
        {
            uint32_t sum = e.read();
            for(uint32_t j = 1 ; j < scale; j += 1)
                sum += (uint32_t)e.read();
            s.write( sum / scale );
        }
#else
        while( true )
        {
            uint32_t tab[scale];

            for(uint32_t j = 0; j < scale; j += 1)
                tab[j] = e.read();

            uint32_t sum = 0;
            for(uint32_t j = 0 ; j < scale; j += 1)
                sum += tab[j];

            for(uint32_t j = 0 ; j < scale; j += 1)
                printf("%3d ", tab[j]);
            printf(" => %3d : %3d\n", sum, sum/scale);

            s.write( sum / scale );
        }
#endif
    }
};

#endif
