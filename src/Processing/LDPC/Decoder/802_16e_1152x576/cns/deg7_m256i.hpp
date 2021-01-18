/*
 * Fast Inter/Intra LDPC decoder for x86 and ARM project
 * Copyright (c) 2017 Bertrand LE GAL
 * (bertrand.legal@ims-bordeaux.fr)
 *
 */

#ifndef _DEG7_HEADER_
#define _DEG7_HEADER_

#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <iostream>
#include <cassert>

#include "../../api/vect_m256i.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

template <
  int posVN1, int posVN2, int posVN3, int posVN4, int posVN5, int posVN6, int posVN7, 
  int cRota1, int cRota2, int cRota3, int cRota4, int cRota5, int cRota6, int cRota7, 
  int QC_Z, /* ON VIENT DE RAJOUTER QC_Z */
  int PART
>
inline void __attribute__((__always_inline__)) process_cn_deg7( int8_t var_nodes[], TYPE var_mesgs[], unsigned char p1, unsigned char p2 )
{
	TYPE MSG_SAT    = vect_fixed::set1s<char, TYPE>( -127 );
	TYPE min1       = vect_fixed::set1s<char, TYPE>(  +31 );
	TYPE min2       = min1;

	TYPE sign_somme = vect_fixed::zero<TYPE>();

	const TYPE t1_vMessg   = var_mesgs[ 0 ];
	const TYPE t1_rNoeud   = load_avx<PART, cRota1>( var_nodes + QC_Z * posVN1);
	const TYPE t1_vContr   = vect_fixed::max_s8(vect_fixed::subs_s8( t1_rNoeud, t1_vMessg), MSG_SAT);
	const TYPE t1_absContr = vect_fixed::abs(t1_vContr);

	min2                   = vect_fixed::min_u8( t1_absContr, min1, min2);
	min1                   = vect_fixed::min_u8( t1_absContr,       min1);
	sign_somme             = vect_fixed::xorb( sign_somme, t1_vContr );

	const TYPE t2_vMessg   = var_mesgs[ 1 ];
	const TYPE t2_rNoeud   = load_avx<PART, cRota2>( var_nodes + QC_Z * posVN2);
	const TYPE t2_vContr   = vect_fixed::max_s8(vect_fixed::subs_s8( t2_rNoeud, t2_vMessg), MSG_SAT);
	const TYPE t2_absContr = vect_fixed::abs(t2_vContr);

	min2                   = vect_fixed::min_u8( t2_absContr, min1, min2);
	min1                   = vect_fixed::min_u8( t2_absContr,       min1);
	sign_somme             = vect_fixed::xorb( sign_somme, t2_vContr );

	const TYPE t3_vMessg   = var_mesgs[ 2 ];
	const TYPE t3_rNoeud   = load_avx<PART, cRota3>( var_nodes + QC_Z * posVN3);
	const TYPE t3_vContr   = vect_fixed::max_s8(vect_fixed::subs_s8( t3_rNoeud, t3_vMessg), MSG_SAT);
	const TYPE t3_absContr = vect_fixed::abs(t3_vContr);

	min2                   = vect_fixed::min_u8( t3_absContr, min1, min2);
	min1                   = vect_fixed::min_u8( t3_absContr,       min1);
	sign_somme             = vect_fixed::xorb( sign_somme, t3_vContr );

	const TYPE t4_vMessg   = var_mesgs[ 3 ];
	const TYPE t4_rNoeud   = load_avx<PART, cRota4>( var_nodes + QC_Z * posVN4);
	const TYPE t4_vContr   = vect_fixed::max_s8(vect_fixed::subs_s8( t4_rNoeud, t4_vMessg), MSG_SAT);
	const TYPE t4_absContr = vect_fixed::abs(t4_vContr);

	min2                   = vect_fixed::min_u8( t4_absContr, min1, min2);
	min1                   = vect_fixed::min_u8( t4_absContr,       min1);
	sign_somme             = vect_fixed::xorb( sign_somme, t4_vContr );

	const TYPE t5_vMessg   = var_mesgs[ 4 ];
	const TYPE t5_rNoeud   = load_avx<PART, cRota5>( var_nodes + QC_Z * posVN5);
	const TYPE t5_vContr   = vect_fixed::max_s8(vect_fixed::subs_s8( t5_rNoeud, t5_vMessg), MSG_SAT);
	const TYPE t5_absContr = vect_fixed::abs(t5_vContr);

	min2                   = vect_fixed::min_u8( t5_absContr, min1, min2);
	min1                   = vect_fixed::min_u8( t5_absContr,       min1);
	sign_somme             = vect_fixed::xorb( sign_somme, t5_vContr );

	const TYPE t6_vMessg   = var_mesgs[ 5 ];
	const TYPE t6_rNoeud   = load_avx<PART, cRota6>( var_nodes + QC_Z * posVN6);
	const TYPE t6_vContr   = vect_fixed::max_s8(vect_fixed::subs_s8( t6_rNoeud, t6_vMessg), MSG_SAT);
	const TYPE t6_absContr = vect_fixed::abs(t6_vContr);

	min2                   = vect_fixed::min_u8( t6_absContr, min1, min2);
	min1                   = vect_fixed::min_u8( t6_absContr,       min1);
	sign_somme             = vect_fixed::xorb( sign_somme, t6_vContr );

	const TYPE t7_vMessg   = var_mesgs[ 6 ];
	const TYPE t7_rNoeud   = load_avx<PART, cRota7>( var_nodes + QC_Z * posVN7);
	const TYPE t7_vContr   = vect_fixed::max_s8(vect_fixed::subs_s8( t7_rNoeud, t7_vMessg), MSG_SAT);
	const TYPE t7_absContr = vect_fixed::abs(t7_vContr);

	min2                   = vect_fixed::min_u8( t7_absContr, min1, min2);
	min1                   = vect_fixed::min_u8( t7_absContr,       min1);
	sign_somme             = vect_fixed::xorb( sign_somme, t7_vContr );

	//
	// ON NE GARDE QUE LE BIT DE SIGNE
	//
	const TYPE bit_mask = vect_fixed::set1s<char, TYPE>( 0x80 );
	sign_somme          = vect_fixed::andb(sign_somme, bit_mask);

	//
	// ON MODIFIE LA VALEUR DU BIT DE SIGNE AFIN DE POUVOIR EMPLOYER LA FONCTION AVX QUI VA BIEN
	//
	sign_somme = vect_fixed::xorb(sign_somme, vect_fixed::set1s<char, TYPE>( 0xC0 ));

    const auto v_one  = vect_fixed::set1u<unsigned char, TYPE>( p1 );
    TYPE cste_1 = vect_fixed::subs_u8( min2, v_one );// - (min2 >> 2); //(i32_min2 - offset); cste_1 = (cste_1 < 0) ? 0 : cste_1;
    TYPE cste_2 = vect_fixed::subs_u8( min1, v_one );// - (min1 >> 2); //(i32_min  - offset); cste_2 = (cste_2 < 0) ? 0 : cste_2;

	//
	//

	TYPE t1_vResultat       = vect_fixed::cmov (vect_fixed::abs(t1_vContr), min1, cste_1, cste_2);
	t1_vResultat            = vect_fixed::copysign(t1_vResultat, vect_fixed::xorb(sign_somme, vect_fixed::andb(t1_vContr, bit_mask)));
	TYPE t1_vUpdate         = vect_fixed::subs_s8(t1_vResultat, var_mesgs[0]);
	var_mesgs[0]            = t1_vResultat;
	store_avx<PART, cRota1>( var_nodes + QC_Z * posVN1, t1_vUpdate );

	TYPE t2_vResultat       = vect_fixed::cmov (vect_fixed::abs(t2_vContr), min1, cste_1, cste_2);
	t2_vResultat            = vect_fixed::copysign(t2_vResultat, vect_fixed::xorb(sign_somme, vect_fixed::andb(t2_vContr, bit_mask)));
	TYPE t2_vUpdate         = vect_fixed::subs_s8(t2_vResultat, var_mesgs[1]);
	var_mesgs[1]            = t2_vResultat;
	store_avx<PART, cRota2>( var_nodes + QC_Z * posVN2, t2_vUpdate );

	TYPE t3_vResultat       = vect_fixed::cmov (vect_fixed::abs(t3_vContr), min1, cste_1, cste_2);
	t3_vResultat            = vect_fixed::copysign(t3_vResultat, vect_fixed::xorb(sign_somme, vect_fixed::andb(t3_vContr, bit_mask)));
	TYPE t3_vUpdate         = vect_fixed::subs_s8(t3_vResultat, var_mesgs[2]);
	var_mesgs[2]            = t3_vResultat;
	store_avx<PART, cRota3>( var_nodes + QC_Z * posVN3, t3_vUpdate );

	TYPE t4_vResultat       = vect_fixed::cmov (vect_fixed::abs(t4_vContr), min1, cste_1, cste_2);
	t4_vResultat            = vect_fixed::copysign(t4_vResultat, vect_fixed::xorb(sign_somme, vect_fixed::andb(t4_vContr, bit_mask)));
	TYPE t4_vUpdate         = vect_fixed::subs_s8(t4_vResultat, var_mesgs[3]);
	var_mesgs[3]            = t4_vResultat;
	store_avx<PART, cRota4>( var_nodes + QC_Z * posVN4, t4_vUpdate );

	TYPE t5_vResultat       = vect_fixed::cmov (vect_fixed::abs(t5_vContr), min1, cste_1, cste_2);
	t5_vResultat            = vect_fixed::copysign(t5_vResultat, vect_fixed::xorb(sign_somme, vect_fixed::andb(t5_vContr, bit_mask)));
	TYPE t5_vUpdate         = vect_fixed::subs_s8(t5_vResultat, var_mesgs[4]);
	var_mesgs[4]            = t5_vResultat;
	store_avx<PART, cRota5>( var_nodes + QC_Z * posVN5, t5_vUpdate );

	TYPE t6_vResultat       = vect_fixed::cmov (vect_fixed::abs(t6_vContr), min1, cste_1, cste_2);
	t6_vResultat            = vect_fixed::copysign(t6_vResultat, vect_fixed::xorb(sign_somme, vect_fixed::andb(t6_vContr, bit_mask)));
	TYPE t6_vUpdate         = vect_fixed::subs_s8(t6_vResultat, var_mesgs[5]);
	var_mesgs[5]            = t6_vResultat;
	store_avx<PART, cRota6>( var_nodes + QC_Z * posVN6, t6_vUpdate );

	TYPE t7_vResultat       = vect_fixed::cmov (vect_fixed::abs(t7_vContr), min1, cste_1, cste_2);
	t7_vResultat            = vect_fixed::copysign(t7_vResultat, vect_fixed::xorb(sign_somme, vect_fixed::andb(t7_vContr, bit_mask)));
	TYPE t7_vUpdate         = vect_fixed::subs_s8(t7_vResultat, var_mesgs[6]);
	var_mesgs[6]            = t7_vResultat;
	store_avx<PART, cRota7>( var_nodes + QC_Z * posVN7, t7_vUpdate );

}


template <
  int posVN1, int posVN2, int posVN3, int posVN4, int posVN5, int posVN6, int posVN7, 
  int cRota1, int cRota2, int cRota3, int cRota4, int cRota5, int cRota6, int cRota7, 
  int QC_Z, /* ON VIENT DE RAJOUTER QC_Z */
  int PART  /* ON VIENT DE RAJOUTER QC_Z */
>
inline TYPE __attribute__((__always_inline__)) process_cn_deg7( int8_t var_nodes[]  )
{

	const TYPE bit_mask  = vect_fixed::set1s<char, TYPE>( 0x80 );
	TYPE sign_somme      = bit_mask;

	const TYPE t1_rNoeud = load_avx<PART, cRota1>( var_nodes + QC_Z * posVN1);
	sign_somme           = vect_fixed::xorb( sign_somme, t1_rNoeud );

	const TYPE t2_rNoeud = load_avx<PART, cRota2>( var_nodes + QC_Z * posVN2);
	sign_somme           = vect_fixed::xorb( sign_somme, t2_rNoeud );

	const TYPE t3_rNoeud = load_avx<PART, cRota3>( var_nodes + QC_Z * posVN3);
	sign_somme           = vect_fixed::xorb( sign_somme, t3_rNoeud );

	const TYPE t4_rNoeud = load_avx<PART, cRota4>( var_nodes + QC_Z * posVN4);
	sign_somme           = vect_fixed::xorb( sign_somme, t4_rNoeud );

	const TYPE t5_rNoeud = load_avx<PART, cRota5>( var_nodes + QC_Z * posVN5);
	sign_somme           = vect_fixed::xorb( sign_somme, t5_rNoeud );

	const TYPE t6_rNoeud = load_avx<PART, cRota6>( var_nodes + QC_Z * posVN6);
	sign_somme           = vect_fixed::xorb( sign_somme, t6_rNoeud );

	const TYPE t7_rNoeud = load_avx<PART, cRota7>( var_nodes + QC_Z * posVN7);
	sign_somme           = vect_fixed::xorb( sign_somme, t7_rNoeud );

	return vect_fixed::andb(sign_somme, bit_mask);
}

#endif
