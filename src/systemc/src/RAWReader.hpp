/*
 *  Adder.h
 *  SystemC_SimpleAdder
 *
 *  Created by Le Gal on 07/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
#include "systemc.h"

SC_MODULE(RAWReader)
{
public:

	sc_fifo_out< sc_int<8> > s;

	SC_CTOR(RAWReader)
	{
		SC_THREAD(do_gen);
	}

private:

	void do_gen( )
	{
		cout << "(II) RAWReader :: START" << endl;

		FILE* f = fopen("/tmp/pluie.payload.60.raw", "rb");
		if( f == NULL )
        {
            cout << "(EE) Error opening the input file " << endl;
		    exit( -1 );
        }

		while( feof(f) == 0 )
        {
		    int8_t buffer[1024];
		    uint32_t n = fread(buffer, sizeof(int8_t), 1024, f);
		    for(uint32_t i = 0; i < n; i += 1)
            {
                s.write( buffer[i] );
                wait(10, SC_NS);
            }
        }

        cout << "(II) RAWReader :: STOP" << endl;
        sc_stop();

    }

};