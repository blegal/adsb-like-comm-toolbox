/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#ifndef _Detecteur_
#define _Detecteur_

#include "systemc.h"
#include <cstdint>
#include "constantes.hpp"

SC_MODULE(Detecteur)
{
public:
    sc_in < bool > clock;
    sc_in < bool > reset;
    sc_fifo_in < sc_uint<8> > e;
    sc_fifo_out< sc_uint<8> > s;

	SC_CTOR(Detecteur)
	{
		SC_CTHREAD(do_gen, clock.pos());
        reset_signal_is(reset,true);
	}

private:

	void do_gen( )
	{
//	    uint64_t counter = 0;
        float buffer[32];
        while( true )
        {
            for (int j = 0; j < 32-1; j += 1)
            {
#pragma HLS PIPELINE
                buffer[j] = buffer[j+1];
            }
            buffer[32-1] = e.read();

            const float ps = buffer[ 0] + buffer[ 1] + buffer[ 4] + buffer[ 5] + // 2 bits à 1 en PPM
                             buffer[14] + buffer[15] + buffer[18] + buffer[19];  // 2 bits à 0 en PPM

            float sum = 0.0;
            for (int j = 0; j < 32; j += 1)
            {
#pragma HLS PIPELINE
                const float temp = buffer[j];
                const float sqrv = (temp * temp);
                sum += sqrv;
            }
            sum = 8.0f * sum;
            float res = (ps / sqrt( sum ));

#ifdef _DEBUG_SYNCHRO_
            printf("%llu : ", counter);
            for(int i = 0; i< 32; i++)
                printf("%3d ", (int)buffer[i]);
            printf(" - %f\n", res);
#endif
            if( res >= 0.8f )
            {
#ifdef _DEBUG_SYNCHRO_
                printf("Detecteur::do_gen fired for sample (%llu - %f)\n", counter, res);
#endif
                const int factor = 2 * 2; // PPM modulation + UpSampling(2)
                for(uint8_t i = 0; i < factor * _BITS_HEADER_; i += 1)
                    s.write( e.read() );
                // for(uint8_t i = 0; i < factor * _BITS_LENGTH_; i += 1)
                //     s.write( e.read() );
                for(uint16_t i = 0; i < factor * _BITS_PAYLOAD_; i += 1)
                    s.write( e.read() );
                for(uint8_t i = 0; i < factor * _BITS_CRC_; i += 1)
                    s.write( e.read() );
//                counter += factor *(_BITS_TYPE_ + _BITS_LENGTH_ + _BITS_PAYLOAD_ + _BITS_CRC_);
            }else{
//                counter += 1;
            }

        }
	}
};

#endif
