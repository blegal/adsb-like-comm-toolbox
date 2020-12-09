#ifndef _my_module_
#define _my_module_

#include "systemc.h"

#include "ModuleCompute.hpp"
#include "Detecteur.hpp"
#include "DownSampling.hpp"
#include "BitDecider.hpp"
#include "BitsToBytes.hpp"
#include "CRCCheck.hpp"
#include "FrameProcessing.hpp"

SC_MODULE(my_module)
{
public:
    sc_in < bool > clock;
    sc_in < bool > reset;
    sc_fifo_in < sc_int <8>  > e;
    sc_fifo_out< sc_uint<32> > addr;
    sc_fifo_out< sc_uint<24> > rgbv;

	SC_CTOR(my_module) :
	    mod("mod"),
	    det("det"),
        dow("dow"),
        bit("bit"),
        byt("byt"),
        crc("crc"),
        fra("fra"),
        mod2det("mod2det"),
        det2dow("det2dow"),
        dow2bit("dow2bit"),
        bit2byt("bit2byt"),
        byt2crc("byt2crc"),
        crc2fra("crc2fra")
	{
        mod.clock( clock );
        mod.reset( reset );
        mod.e( e );
        mod.s(mod2det );

        det.clock( clock );
        det.reset( reset );
        det.e(mod2det);
        det.s(det2dow);

        dow.clock( clock );
        dow.reset( reset );
        dow.e(det2dow);
        dow.s(dow2bit);

        bit.clock( clock );
        bit.reset( reset );
        bit.e(dow2bit);
        bit.s(bit2byt);

        byt.clock( clock );
        byt.reset( reset );
        byt.e(bit2byt);
        byt.s(byt2crc);

        crc.clock( clock );
        crc.reset( reset );
        crc.e(byt2crc);
        crc.s(crc2fra);

        fra.clock( clock );
        fra.reset( reset );
        fra.e(crc2fra);
        fra.addr(addr);
        fra.rgbv(rgbv);
    }

private:
    ModuleCompute   mod;
    Detecteur       det;
    DownSampling    dow;
    BitDecider      bit;
    BitsToBytes     byt;
    CRCCheck        crc;
    FrameProcessing fra;

    sc_fifo< sc_uint<8> > mod2det;
    sc_fifo< sc_uint<8> > det2dow;
    sc_fifo< sc_uint<8> > dow2bit;
    sc_fifo< sc_uint<1> > bit2byt;
    sc_fifo< sc_uint<8> > byt2crc;
    sc_fifo< sc_uint<8> > crc2fra;
};

#endif
