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

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <iostream>
#include <cassert>
#include "immintrin.h"

namespace QC_z_48_SIMD32_va{

	const uint8_t read_mask_1[] = {
		// MASK FOR OFFSET=0
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		// MASK FOR OFFSET=1
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
		// MASK FOR OFFSET=2
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
		// MASK FOR OFFSET=3
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=4
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=5
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=6
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=7
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=8
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=9
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=10
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=11
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=12
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=13
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=15
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=16
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=17
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=18
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=19
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=20
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=12
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=13
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=14
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=15
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=16
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=17
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=18
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=19
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=20
		0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=21
		0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=22
		0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=23
		0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		// MASK FOR OFFSET=23
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	};


	//
	//
	//
	template <int offset> inline __m256i read_vn(const int8_t* mem_addr) {
		return _mm256_loadu_si256( (const __m256i*) (mem_addr + offset) );
	}


	//
	// REMPLI UN REGISTRE SIMD A L'AIDE DE 2 LECTURES DONT LES OFFSETS PAR RAPPORT
	// A L'ADRESSE DE BASE SONT FOURNI EN PARAMETRE
	//
	template <int offset1, int amask1, int offset2>
	inline __m256i read_vn_2_temps(const int8_t* mem_addr)
	{
		const __m256i* adr_mask_1 = (const __m256i*)  (read_mask_1 + 32 *  amask1);
		const __m256i* adr_read_1 = (const __m256i*)  (mem_addr    +      offset1);
		const __m256i mask1       = _mm256_loadu_si256( adr_mask_1   );
		const __m256i read1       = _mm256_loadu_si256( adr_read_1   );
		const __m256i reg1        = _mm256_and_si256  ( read1, mask1 );
#if 0
		const __m256i* adr_mask_2 = (const __m256i*) (read_mask_2 + 32 * offset);
		const __m256i* adr_read_2 = (const __m256i*) (mem_addr    - 24 + offset);
		const __m256i mask2       = _mm256_loadu_si256( adr_mask_2   );
		const __m256i read2       = _mm256_loadu_si256( adr_read_2   );
		const __m256i reg2        = _mm256_and_si256  ( read2, mask2 );
#else
		const __m256i* adr_read_2 = (const __m256i*) (mem_addr + offset2);
		const __m256i read2 = _mm256_loadu_si256 ( adr_read_2   );
		const __m256i reg2  = _mm256_andnot_si256( mask1, read2 );
#endif
		const __m256i reg   = _mm256_or_si256  ( reg1, reg2 );
		return reg;
	}

	//
	// LE TEMPLATE DE LA FONCTION DE LECTURE QUI NE DEVRAIT JAMAIS ETRE UTILISEE TELLE QUELLE
	//
	template <int part, int offset>
	inline __m256i load_avx(const int8_t* mem_addr) {
		printf("(EE) Error in   [%s::%d]\n", __FILE__, __LINE__);
		printf("(EE) Values are [%d::%d]\n", part, offset);
		exit( mem_addr == nullptr );
		return _mm256_setzero_si256();
	}

	//
	// LES VERSIONS SURCHARGEES DE LA FONCTION DE LECTURE
	//
	template < > inline __m256i load_avx<1,  0>(const int8_t* mem_addr) { return read_vn< 0>( mem_addr ); }
	template < > inline __m256i load_avx<1,  1>(const int8_t* mem_addr) { return read_vn< 1>( mem_addr ); }
	template < > inline __m256i load_avx<1,  2>(const int8_t* mem_addr) { return read_vn< 2>( mem_addr ); }
	template < > inline __m256i load_avx<1,  3>(const int8_t* mem_addr) { return read_vn< 3>( mem_addr ); }
	template < > inline __m256i load_avx<1,  4>(const int8_t* mem_addr) { return read_vn< 4>( mem_addr ); }
	template < > inline __m256i load_avx<1,  5>(const int8_t* mem_addr) { return read_vn< 5>( mem_addr ); }
	template < > inline __m256i load_avx<1,  6>(const int8_t* mem_addr) { return read_vn< 6>( mem_addr ); }
	template < > inline __m256i load_avx<1,  7>(const int8_t* mem_addr) { return read_vn< 7>( mem_addr ); }
	template < > inline __m256i load_avx<1,  8>(const int8_t* mem_addr) { return read_vn< 8>( mem_addr ); }
	template < > inline __m256i load_avx<1,  9>(const int8_t* mem_addr) { return read_vn< 9>( mem_addr ); }
	template < > inline __m256i load_avx<1, 10>(const int8_t* mem_addr) { return read_vn<10>( mem_addr ); }
	template < > inline __m256i load_avx<1, 11>(const int8_t* mem_addr) { return read_vn<11>( mem_addr ); }
	template < > inline __m256i load_avx<1, 12>(const int8_t* mem_addr) { return read_vn<12>( mem_addr ); }
	template < > inline __m256i load_avx<1, 13>(const int8_t* mem_addr) { return read_vn<13>( mem_addr ); }
	template < > inline __m256i load_avx<1, 14>(const int8_t* mem_addr) { return read_vn<14>( mem_addr ); }
	template < > inline __m256i load_avx<1, 15>(const int8_t* mem_addr) { return read_vn<15>( mem_addr ); }
	template < > inline __m256i load_avx<1, 16>(const int8_t* mem_addr) { return read_vn<16>( mem_addr ); }
	template < > inline __m256i load_avx<1, 17>(const int8_t* mem_addr) { return read_vn_2_temps<17,  1, -31>( mem_addr ); }
	template < > inline __m256i load_avx<1, 18>(const int8_t* mem_addr) { return read_vn_2_temps<18,  2, -30>( mem_addr ); }
	template < > inline __m256i load_avx<1, 19>(const int8_t* mem_addr) { return read_vn_2_temps<19,  3, -29>( mem_addr ); }
	template < > inline __m256i load_avx<1, 20>(const int8_t* mem_addr) { return read_vn_2_temps<20,  4, -28>( mem_addr ); }
	template < > inline __m256i load_avx<1, 21>(const int8_t* mem_addr) { return read_vn_2_temps<21,  5, -27>( mem_addr ); }
	template < > inline __m256i load_avx<1, 22>(const int8_t* mem_addr) { return read_vn_2_temps<22,  6, -26>( mem_addr ); }
	template < > inline __m256i load_avx<1, 23>(const int8_t* mem_addr) { return read_vn_2_temps<23,  7, -25>( mem_addr ); }
	template < > inline __m256i load_avx<1, 24>(const int8_t* mem_addr) { return read_vn_2_temps<24,  8, -24>( mem_addr ); }
	template < > inline __m256i load_avx<1, 25>(const int8_t* mem_addr) { return read_vn_2_temps<25,  9, -23>( mem_addr ); }
	template < > inline __m256i load_avx<1, 26>(const int8_t* mem_addr) { return read_vn_2_temps<26, 10, -22>( mem_addr ); }
	template < > inline __m256i load_avx<1, 27>(const int8_t* mem_addr) { return read_vn_2_temps<27, 11, -21>( mem_addr ); }
	template < > inline __m256i load_avx<1, 28>(const int8_t* mem_addr) { return read_vn_2_temps<28, 12, -20>( mem_addr ); }
	template < > inline __m256i load_avx<1, 29>(const int8_t* mem_addr) { return read_vn_2_temps<29, 13, -19>( mem_addr ); }
	template < > inline __m256i load_avx<1, 30>(const int8_t* mem_addr) { return read_vn_2_temps<30, 14, -18>( mem_addr ); }
	template < > inline __m256i load_avx<1, 31>(const int8_t* mem_addr) { return read_vn_2_temps<31, 15, -17>( mem_addr ); }
	template < > inline __m256i load_avx<1, 32>(const int8_t* mem_addr) { return read_vn_2_temps<32, 16, -16>( mem_addr ); }
	template < > inline __m256i load_avx<1, 33>(const int8_t* mem_addr) { return read_vn_2_temps<33, 17, -15>( mem_addr ); }
	template < > inline __m256i load_avx<1, 34>(const int8_t* mem_addr) { return read_vn_2_temps<34, 18, -14>( mem_addr ); }
	template < > inline __m256i load_avx<1, 35>(const int8_t* mem_addr) { return read_vn_2_temps<35, 19, -13>( mem_addr ); }
	template < > inline __m256i load_avx<1, 36>(const int8_t* mem_addr) { return read_vn_2_temps<36, 20, -12>( mem_addr ); }
	template < > inline __m256i load_avx<1, 37>(const int8_t* mem_addr) { return read_vn_2_temps<37, 21, -11>( mem_addr ); }
	template < > inline __m256i load_avx<1, 38>(const int8_t* mem_addr) { return read_vn_2_temps<38, 22, -10>( mem_addr ); }
	template < > inline __m256i load_avx<1, 39>(const int8_t* mem_addr) { return read_vn_2_temps<39, 23,  -9>( mem_addr ); }
	template < > inline __m256i load_avx<1, 40>(const int8_t* mem_addr) { return read_vn_2_temps<40, 24,  -8>( mem_addr ); }
	template < > inline __m256i load_avx<1, 41>(const int8_t* mem_addr) { return read_vn_2_temps<41, 25,  -7>( mem_addr ); }
	template < > inline __m256i load_avx<1, 42>(const int8_t* mem_addr) { return read_vn_2_temps<42, 26,  -6>( mem_addr ); }
	template < > inline __m256i load_avx<1, 43>(const int8_t* mem_addr) { return read_vn_2_temps<43, 27,  -5>( mem_addr ); }
	template < > inline __m256i load_avx<1, 44>(const int8_t* mem_addr) { return read_vn_2_temps<44, 28,  -4>( mem_addr ); }
	template < > inline __m256i load_avx<1, 45>(const int8_t* mem_addr) { return read_vn_2_temps<45, 29,  -3>( mem_addr ); }
	template < > inline __m256i load_avx<1, 46>(const int8_t* mem_addr) { return read_vn_2_temps<46, 30,  -2>( mem_addr ); }
	template < > inline __m256i load_avx<1, 47>(const int8_t* mem_addr) { return read_vn_2_temps<47, 31,  -1>( mem_addr ); }

	template < > inline __m256i load_avx<2,  0>(const int8_t* mem_addr) { return read_vn<32>( mem_addr ); }
	template < > inline __m256i load_avx<2,  1>(const int8_t* mem_addr) { return read_vn_2_temps<33, 17, -15>( mem_addr ); }
	template < > inline __m256i load_avx<2,  2>(const int8_t* mem_addr) { return read_vn_2_temps<34, 18, -14>( mem_addr ); }
	template < > inline __m256i load_avx<2,  3>(const int8_t* mem_addr) { return read_vn_2_temps<35, 19, -13>( mem_addr ); }
	template < > inline __m256i load_avx<2,  4>(const int8_t* mem_addr) { return read_vn_2_temps<36, 20, -12>( mem_addr ); }
	template < > inline __m256i load_avx<2,  5>(const int8_t* mem_addr) { return read_vn_2_temps<37, 21, -11>( mem_addr ); }
	template < > inline __m256i load_avx<2,  6>(const int8_t* mem_addr) { return read_vn_2_temps<38, 22, -10>( mem_addr ); }
	template < > inline __m256i load_avx<2,  7>(const int8_t* mem_addr) { return read_vn_2_temps<39, 23,  -9>( mem_addr ); }
	template < > inline __m256i load_avx<2,  8>(const int8_t* mem_addr) { return read_vn_2_temps<40, 24,  -8>( mem_addr ); }
	template < > inline __m256i load_avx<2,  9>(const int8_t* mem_addr) { return read_vn_2_temps<41, 25,  -7>( mem_addr ); }
	template < > inline __m256i load_avx<2, 10>(const int8_t* mem_addr) { return read_vn_2_temps<42, 26,  -6>( mem_addr ); }
	template < > inline __m256i load_avx<2, 11>(const int8_t* mem_addr) { return read_vn_2_temps<43, 27,  -5>( mem_addr ); }
	template < > inline __m256i load_avx<2, 12>(const int8_t* mem_addr) { return read_vn_2_temps<44, 28,  -4>( mem_addr ); }
	template < > inline __m256i load_avx<2, 13>(const int8_t* mem_addr) { return read_vn_2_temps<45, 29,  -3>( mem_addr ); }
	template < > inline __m256i load_avx<2, 14>(const int8_t* mem_addr) { return read_vn_2_temps<46, 30,  -2>( mem_addr ); }
	template < > inline __m256i load_avx<2, 15>(const int8_t* mem_addr) { return read_vn_2_temps<47, 31,  -1>( mem_addr ); }
	template < > inline __m256i load_avx<2, 16>(const int8_t* mem_addr) { return read_vn< 0>( mem_addr ); }
	template < > inline __m256i load_avx<2, 17>(const int8_t* mem_addr) { return read_vn< 1>( mem_addr ); }
	template < > inline __m256i load_avx<2, 18>(const int8_t* mem_addr) { return read_vn< 2>( mem_addr ); }
	template < > inline __m256i load_avx<2, 19>(const int8_t* mem_addr) { return read_vn< 3>( mem_addr ); }
	template < > inline __m256i load_avx<2, 20>(const int8_t* mem_addr) { return read_vn< 4>( mem_addr ); }
	template < > inline __m256i load_avx<2, 21>(const int8_t* mem_addr) { return read_vn< 5>( mem_addr ); }
	template < > inline __m256i load_avx<2, 22>(const int8_t* mem_addr) { return read_vn< 6>( mem_addr ); }
	template < > inline __m256i load_avx<2, 23>(const int8_t* mem_addr) { return read_vn< 7>( mem_addr ); }
	template < > inline __m256i load_avx<2, 24>(const int8_t* mem_addr) { return read_vn< 8>( mem_addr ); }
	template < > inline __m256i load_avx<2, 25>(const int8_t* mem_addr) { return read_vn< 9>( mem_addr ); }
	template < > inline __m256i load_avx<2, 26>(const int8_t* mem_addr) { return read_vn<10>( mem_addr ); }
	template < > inline __m256i load_avx<2, 27>(const int8_t* mem_addr) { return read_vn<11>( mem_addr ); }
	template < > inline __m256i load_avx<2, 28>(const int8_t* mem_addr) { return read_vn<12>( mem_addr ); }
	template < > inline __m256i load_avx<2, 29>(const int8_t* mem_addr) { return read_vn<13>( mem_addr ); }
	template < > inline __m256i load_avx<2, 30>(const int8_t* mem_addr) { return read_vn<14>( mem_addr ); }
	template < > inline __m256i load_avx<2, 31>(const int8_t* mem_addr) { return read_vn<15>( mem_addr ); }
	template < > inline __m256i load_avx<2, 32>(const int8_t* mem_addr) { return read_vn<16>( mem_addr ); }
	template < > inline __m256i load_avx<2, 33>(const int8_t* mem_addr) { return read_vn<17>( mem_addr ); }
	template < > inline __m256i load_avx<2, 34>(const int8_t* mem_addr) { return read_vn<18>( mem_addr ); }
	template < > inline __m256i load_avx<2, 35>(const int8_t* mem_addr) { return read_vn<19>( mem_addr ); }
	template < > inline __m256i load_avx<2, 36>(const int8_t* mem_addr) { return read_vn<20>( mem_addr ); }
	template < > inline __m256i load_avx<2, 37>(const int8_t* mem_addr) { return read_vn<21>( mem_addr ); }
	template < > inline __m256i load_avx<2, 38>(const int8_t* mem_addr) { return read_vn<22>( mem_addr ); }
	template < > inline __m256i load_avx<2, 39>(const int8_t* mem_addr) { return read_vn<23>( mem_addr ); }
	template < > inline __m256i load_avx<2, 40>(const int8_t* mem_addr) { return read_vn<24>( mem_addr ); }
	template < > inline __m256i load_avx<2, 41>(const int8_t* mem_addr) { return read_vn<25>( mem_addr ); }
	template < > inline __m256i load_avx<2, 42>(const int8_t* mem_addr) { return read_vn<26>( mem_addr ); }
	template < > inline __m256i load_avx<2, 43>(const int8_t* mem_addr) { return read_vn<27>( mem_addr ); }
	template < > inline __m256i load_avx<2, 44>(const int8_t* mem_addr) { return read_vn<28>( mem_addr ); }
	template < > inline __m256i load_avx<2, 45>(const int8_t* mem_addr) { return read_vn<29>( mem_addr ); }
	template < > inline __m256i load_avx<2, 46>(const int8_t* mem_addr) { return read_vn<30>( mem_addr ); }
	template < > inline __m256i load_avx<2, 47>(const int8_t* mem_addr) { return read_vn<31>( mem_addr ); }

	//
	//
	////////////////////////////////////////////////////////////////////////////////////////////
	//
	//
	//
	// LE MASQUE PERMETTANT DE FILTRER 16 OCTETS PARMIS 32
	//
	const uint8_t mask_16_on_32[32] = {
		0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	};

	inline __m256i partial_mask(const __m256i val)
	{
		const __m256i reg = _mm256_loadu_si256( (const __m256i*)mask_16_on_32 );
		return _mm256_and_si256(val, reg);
	}

	// STORE VERSION DEDIEE
	template <int offset>
	inline void store_avx_1_temps(int8_t* mem_addr, const __m256i mesg)
	{
	     __m256i* adr_read = (__m256i*)(mem_addr + offset);
		const __m256i read = _mm256_loadu_si256( adr_read );
		const __m256i resu = _mm256_adds_epi8( read, mesg );
		const __m256i sesu = _mm256_max_epi8 ( resu, _mm256_set1_epi8( -127 ) );    // SATURATION [-127, +127]
		_mm256_storeu_si256( adr_read, sesu );
	}

	//
	//
	////////////////////////////////////////////////////////////////////////////////////////////
	//
	//
	template <int offset1, int amask1, int offset2>
	inline void store_avx_2_temps(int8_t* mem_addr, const __m256i mesg)
	{
		const __m256i* adr_mask_1 = (__m256i*)  (read_mask_1 + 32 *  amask1);
		      __m256i* adr_read_1 = (__m256i*)  (mem_addr    +      offset1);
		const __m256i mask1       = _mm256_loadu_si256( adr_mask_1   );
		const __m256i read_1      = _mm256_loadu_si256( adr_read_1   );
#if 0
		const __m256i* adr_mask_2 = (const __m256i*) (read_mask_2 + 32 * offset);
		const __m256i* adr_read_2 = (const __m256i*) (mem_addr    - 24 + offset);
		const __m256i mask2       = _mm256_loadu_si256( adr_mask_2   );
		const __m256i read2       = _mm256_loadu_si256( adr_read_2   );
		const __m256i reg2        = _mm256_and_si256  ( read2, mask2 );
#else
		      __m256i* adr_read_2 = (__m256i*) (mem_addr + offset2);
		const __m256i read_2      = _mm256_loadu_si256 ( adr_read_2   );
#endif
		const __m256i resu1       = _mm256_adds_epi8( read_1, _mm256_and_si256   (mask1, mesg) );
		const __m256i resu2       = _mm256_adds_epi8( read_2, _mm256_andnot_si256(mask1, mesg) );
		const __m256i sesu1 = _mm256_max_epi8( resu1, _mm256_set1_epi8( -127 ) ); // [-127, +127]
		const __m256i sesu2 = _mm256_max_epi8( resu2, _mm256_set1_epi8( -127 ) ); // [-127, +127]
		_mm256_storeu_si256( adr_read_1, sesu1 );
		_mm256_storeu_si256( adr_read_2, sesu2 );
	}

	template <int part, int offset>
	inline void store_avx(int8_t* mem_addr, const __m256i mesg)
	{
		assert( false );
		store_avx_1_temps< 0>( mem_addr, mesg );
	}

	//
	// LES VERSIONS SURCHARGEES DE LA FONCTION D'ECRITURE
	//
	template < > inline void store_avx<1,  0>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 0>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  1>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 1>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  2>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 2>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  3>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 3>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  4>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 4>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  5>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 5>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  6>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 6>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  7>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 7>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  8>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 8>( mem_addr, mesg ); }
	template < > inline void store_avx<1,  9>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 9>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 10>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<10>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 11>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<11>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 12>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<12>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 13>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<13>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 14>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<14>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 15>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<15>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 16>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<16>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 17>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<17,  1, -31>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 18>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<18,  2, -30>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 19>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<19,  3, -29>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 20>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<20,  4, -28>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 21>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<21,  5, -27>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 22>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<22,  6, -26>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 23>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<23,  7, -25>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 24>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<24,  8, -24>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 25>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<25,  9, -23>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 26>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<26, 10, -22>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 27>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<27, 11, -21>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 28>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<28, 12, -20>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 29>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<29, 13, -19>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 30>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<30, 14, -18>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 31>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<31, 15, -17>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 32>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<32, 16, -16>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 33>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<33, 17, -15>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 34>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<34, 18, -14>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 35>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<35, 19, -13>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 36>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<36, 20, -12>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 37>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<37, 21, -11>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 38>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<38, 22, -10>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 39>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<39, 23,  -9>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 40>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<40, 24,  -8>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 41>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<41, 25,  -7>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 42>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<42, 26,  -6>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 43>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<43, 27,  -5>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 44>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<44, 28,  -4>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 45>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<45, 29,  -3>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 46>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<46, 30,  -2>( mem_addr, mesg ); }
	template < > inline void store_avx<1, 47>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<47, 31,  -1>( mem_addr, mesg ); }

	template < > inline void store_avx<2,  0>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<32>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  1>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<33, 17, -15>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  2>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<34, 18, -14>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  3>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<35, 19, -13>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  4>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<36, 20, -12>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  5>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<37, 21, -11>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  6>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<38, 22, -10>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  7>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<39, 23,  -9>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  8>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<40, 24,  -8>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2,  9>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<41, 25,  -7>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 10>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<42, 26,  -6>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 11>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<43, 27,  -5>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 12>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<44, 28,  -4>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 13>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<45, 29,  -3>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 14>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<46, 30,  -2>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 15>(int8_t* mem_addr, const __m256i mesg) { store_avx_2_temps<47, 31,  -1>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 16>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 0>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 17>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 1>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 18>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 2>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 19>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 3>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 20>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 4>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 21>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 5>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 22>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 6>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 23>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 7>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 24>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 8>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 25>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps< 9>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 26>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<10>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 27>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<11>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 28>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<12>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 29>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<13>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 30>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<14>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 31>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<15>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 32>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<16>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 33>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<17>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 34>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<18>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 35>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<19>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 36>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<20>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 37>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<21>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 38>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<22>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 39>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<23>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 40>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<24>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 41>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<25>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 42>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<26>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 43>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<27>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 44>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<28>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 45>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<29>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 46>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<30>( mem_addr, partial_mask( mesg ) ); }
	template < > inline void store_avx<2, 47>(int8_t* mem_addr, const __m256i mesg) { store_avx_1_temps<31>( mem_addr, partial_mask( mesg ) ); }

};
