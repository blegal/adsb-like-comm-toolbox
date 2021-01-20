
/*
 *  main.cpp
 *	Mandelbrot Fractal Explorer Project - Copyright (c) 2012 Lucas Soltic
 *
 *  This software is provided 'as-is', without any express or
 *  implied warranty. In no event will the authors be held
 *  liable for any damages arising from the use of this software.
 *
 *  Permission is granted to anyone to use this software for any purpose,
 *  including commercial applications, and to alter it and redistribute
 *  it freely, subject to the following restrictions:
 *
 *  1. The origin of this software must not be misrepresented;
 *  you must not claim that you wrote the original software.
 *  If you use this software in a product, an acknowledgment
 *  in the product documentation would be appreciated but
 *  is not required.
 *
 *  2. Altered source versions must be plainly marked as such,
 *  and must not be misrepresented as being the original software.
 *
 *  3. This notice may not be removed or altered from any
 *  source distribution.
 *
 */

#include "802_16e_1152x576_1f_m256i.hpp"

#include "qc/QC_z_48_m256i.hpp"

using namespace QC_z_48_SIMD32_va;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "cns/deg6_m256i.hpp"
#include "cns/deg7_m256i.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#define QC_N                  24
#define QC_K                  12
#define QC_NmK                12

#define BIN_N                1152
#define BIN_K                576
#define BIN_NmK              576

#define _M_                   76

#define QC                    48

//#define NOEUD   _N
//#define MESSAGE _M

#define QC_SIMD_FACTOR        2

////////////////////////////////////////////////////////////////////////////////////////////////////////////////


LDPC_decoder_802_16e_1152x576::LDPC_decoder_802_16e_1152x576()
        : GenDecoderIntraAPI<__m256i>( (BIN_N + sizeof(__m256i) - 1) / sizeof(__m256i) , QC_SIMD_FACTOR * _M_ )
{
//	org_nodes = (int8_t*)new TYPE[BIN_N / 32 + 64];
//	var_nodes = org_nodes + 32; // ON SHIFT D'UN BLOC POUR EVITER LES OUT OF BOUND !
//	var_mesgs = new TYPE[ _M_ * QC_SIMD_FACTOR ];
}


LDPC_decoder_802_16e_1152x576::~LDPC_decoder_802_16e_1152x576()
{
//	delete[] org_nodes;
//	delete[] var_mesgs;
}


bool LDPC_decoder_802_16e_1152x576::decode(const int8_t llrs[], uint8_t dbits[])
{
    my_copy<BIN_N, 1>((__m256i*)var_nodes, (__m256i*)llrs);

    TYPE value = _mm256_setzero_si256();
    for (int i = 0; i < (QC_SIMD_FACTOR * _M_); i++)
        var_mesgs[i] = value;

    bool early_stop = false;
    int iterations  = 0;
    for( ; iterations < nIters; iterations += 1)
    {
        unsigned short ptr = 0;

        process_cn_deg6 </*  1 [6]  */   1,  2,  8,  9, 12, 13,     /*-*/  47,  36,  27,  41,   3,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </*  1 [6]  */   1,  2,  8,  9, 12, 13,     /*-*/  47,  36,  27,  41,   3,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg7 </*  2 [7]  */   1,  5,  6,  7, 11, 13, 14, /*-*/  13,  11,  39,   4,   6,   0,   0, /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg7 </*  2 [7]  */   1,  5,  6,  7, 11, 13, 14, /*-*/  13,  11,  39,   4,   6,   0,   0, /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg7 </*  3 [7]  */   3,  4,  5,  7, 11, 14, 15, /*-*/  12,  11,  40,  16,   0,   0,   0, /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg7 </*  3 [7]  */   3,  4,  5,  7, 11, 14, 15, /*-*/  12,  11,  40,  16,   0,   0,   0, /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg6 </*  4 [6]  */   0,  2,  8,  9, 15, 16,     /*-*/  30,  23,  32,  12,   0,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </*  4 [6]  */   0,  2,  8,  9, 15, 16,     /*-*/  30,  23,  32,  12,   0,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </*  5 [6]  */   2,  6,  9, 10, 16, 17,     /*-*/  19,  42,  20,  36,   0,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </*  5 [6]  */   2,  6,  9, 10, 16, 17,     /*-*/  19,  42,  20,  36,   0,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg7 </*  6 [7]  */   4,  5,  7, 11, 12, 17, 18, /*-*/  23,  20,  41,  39,   0,   0,   0, /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg7 </*  6 [7]  */   4,  5,  7, 11, 12, 17, 18, /*-*/  23,  20,  41,  39,   0,   0,   0, /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg6 </*  7 [6]  */   2,  3,  9, 10, 18, 19,     /*-*/  47,  26,   7,   9,   0,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </*  7 [6]  */   2,  3,  9, 10, 18, 19,     /*-*/  47,  26,   7,   9,   0,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </*  8 [6]  */   1,  2,  6,  9, 19, 20,     /*-*/   5,  36,   1,  23,   0,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </*  8 [6]  */   1,  2,  6,  9, 19, 20,     /*-*/   5,  36,   1,  23,   0,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg7 </*  9 [7]  */   0,  4,  5,  7, 11, 20, 21, /*-*/   6,  41,  12,  21,  25,   0,   0, /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg7 </*  9 [7]  */   0,  4,  5,  7, 11, 20, 21, /*-*/   6,  41,  12,  21,  25,   0,   0, /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  7;
        process_cn_deg6 </* 10 [6]  */   5,  7, 10, 11, 21, 22,     /*-*/  47,  29,  35,  36,   0,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </* 10 [6]  */   5,  7, 10, 11, 21, 22,     /*-*/  47,  29,  35,  36,   0,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </* 11 [6]  */   2,  3,  8,  9, 22, 23,     /*-*/   3,  32,  19,  24,   0,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </* 11 [6]  */   2,  3,  8,  9, 22, 23,     /*-*/   3,  32,  19,  24,   0,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </* 12 [6]  */   0,  5,  7, 11, 12, 23,     /*-*/  21,  33,  20,  13,   3,   0,      /*-*/  48, 1>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); ptr +=  6;
        process_cn_deg6 </* 12 [6]  */   0,  5,  7, 11, 12, 23,     /*-*/  21,  33,  20,  13,   3,   0,      /*-*/  48, 2>( var_nodes, var_mesgs + ptr, getParam1(), getParam2() ); //ptr +=  6;

        if (s_criterion){
            TYPE s1 = _mm256_setzero_si256();
            TYPE s2 = _mm256_setzero_si256();

            s1 |= process_cn_deg6</*  1 [6] */   1,  2,  8,  9, 12, 13,     /*-*/  47,  36,  27,  41,   3,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</*  1 [6] */   1,  2,  8,  9, 12, 13,     /*-*/  47,  36,  27,  41,   3,   0,      /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg7</*  2 [7] */   1,  5,  6,  7, 11, 13, 14, /*-*/  13,  11,  39,   4,   6,   0,   0, /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg7</*  2 [7] */   1,  5,  6,  7, 11, 13, 14, /*-*/  13,  11,  39,   4,   6,   0,   0, /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg7</*  3 [7] */   3,  4,  5,  7, 11, 14, 15, /*-*/  12,  11,  40,  16,   0,   0,   0, /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg7</*  3 [7] */   3,  4,  5,  7, 11, 14, 15, /*-*/  12,  11,  40,  16,   0,   0,   0, /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg6</*  4 [6] */   0,  2,  8,  9, 15, 16,     /*-*/  30,  23,  32,  12,   0,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</*  4 [6] */   0,  2,  8,  9, 15, 16,     /*-*/  30,  23,  32,  12,   0,   0,      /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg6</*  5 [6] */   2,  6,  9, 10, 16, 17,     /*-*/  19,  42,  20,  36,   0,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</*  5 [6] */   2,  6,  9, 10, 16, 17,     /*-*/  19,  42,  20,  36,   0,   0,      /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg7</*  6 [7] */   4,  5,  7, 11, 12, 17, 18, /*-*/  23,  20,  41,  39,   0,   0,   0, /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg7</*  6 [7] */   4,  5,  7, 11, 12, 17, 18, /*-*/  23,  20,  41,  39,   0,   0,   0, /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg6</*  7 [6] */   2,  3,  9, 10, 18, 19,     /*-*/  47,  26,   7,   9,   0,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</*  7 [6] */   2,  3,  9, 10, 18, 19,     /*-*/  47,  26,   7,   9,   0,   0,      /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg6</*  8 [6] */   1,  2,  6,  9, 19, 20,     /*-*/   5,  36,   1,  23,   0,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</*  8 [6] */   1,  2,  6,  9, 19, 20,     /*-*/   5,  36,   1,  23,   0,   0,      /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg7</*  9 [7] */   0,  4,  5,  7, 11, 20, 21, /*-*/   6,  41,  12,  21,  25,   0,   0, /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg7</*  9 [7] */   0,  4,  5,  7, 11, 20, 21, /*-*/   6,  41,  12,  21,  25,   0,   0, /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg6</* 10 [6] */   5,  7, 10, 11, 21, 22,     /*-*/  47,  29,  35,  36,   0,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</* 10 [6] */   5,  7, 10, 11, 21, 22,     /*-*/  47,  29,  35,  36,   0,   0,      /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg6</* 11 [6] */   2,  3,  8,  9, 22, 23,     /*-*/   3,  32,  19,  24,   0,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</* 11 [6] */   2,  3,  8,  9, 22, 23,     /*-*/   3,  32,  19,  24,   0,   0,      /*-*/  48, 2>( var_nodes );
            s1 |= process_cn_deg6</* 12 [6] */   0,  5,  7, 11, 12, 23,     /*-*/  21,  33,  20,  13,   3,   0,      /*-*/  48, 1>( var_nodes );
            s2 |= process_cn_deg6</* 12 [6] */   0,  5,  7, 11, 12, 23,     /*-*/  21,  33,  20,  13,   3,   0,      /*-*/  48, 2>( var_nodes );

            int stop = _mm256_movemask_epi8( s1 | partial_mask(s2) );
            if (stop == 0){
                iterations += 1;
                early_stop = true;
                break;
            }
        }
    }
    HARD<BIN_N, 1>((__m256i*)dbits, (__m256i*)var_nodes);

    return early_stop;
}

unsigned int LDPC_decoder_802_16e_1152x576::n()
{ return BIN_N / frames(); }


unsigned int LDPC_decoder_802_16e_1152x576::k()
{ return BIN_K / frames(); }


unsigned int LDPC_decoder_802_16e_1152x576::msgs()
{ return _M_; }


unsigned int LDPC_decoder_802_16e_1152x576::frames()
{ return 1; }


unsigned int LDPC_decoder_802_16e_1152x576::simd()
{ return 32; }


std::string LDPC_decoder_802_16e_1152x576::date()
{ return __DATE__; }


std::string LDPC_decoder_802_16e_1152x576::time()
{ return __TIME__; }


void LDPC_decoder_802_16e_1152x576::setOffset(unsigned char offset)
{ param1 = offset; param2 = 0; }


void LDPC_decoder_802_16e_1152x576::setFactor(unsigned char factor)
{ param1 = factor; param2 = 0; }


void LDPC_decoder_802_16e_1152x576::setFactor(unsigned char f1, unsigned char f2)
{ param1 = f1; param2 = f2; }


unsigned char LDPC_decoder_802_16e_1152x576::getParam1()
{ return param1; }


unsigned char LDPC_decoder_802_16e_1152x576::getParam2()
{ return param2; }

