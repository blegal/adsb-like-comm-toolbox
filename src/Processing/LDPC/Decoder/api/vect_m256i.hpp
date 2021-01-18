#ifndef CLASS_vect_mi256
#define CLASS_vect_mi256

#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <cmath>
#include <cassert>
#include <string.h>

using namespace std;

#include <xmmintrin.h>
#include <tmmintrin.h>
#include <smmintrin.h>
#include <immintrin.h>

#define TYPE  __m256i
#include "COPY.hxx"
#include "HARD.hxx"

#include "vect_fixed.hpp"

namespace vect_fixed{

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LOAD
    //

    template < > // AVX2 integer
    __inline__ __m256i __attribute__((__always_inline__)) load(__m256i *ptr)
    {
        return _mm256_load_si256(ptr);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // STORE
    //

    template < > // AVX2
    __inline void __attribute__((__always_inline__)) store(__m256i *ptr, __m256i v)
    {
        _mm256_store_si256(ptr, v);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) add(__m256i a, __m256i b)
    {
        return _mm256_add_epi8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD (8b unsigned, saturated)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) adds_u8(__m256i a, __m256i b)
    {
        return _mm256_adds_epu8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD (8b signed, saturated)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) adds_s8(__m256i a, __m256i b)
    {
        return _mm256_adds_epi8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SUB (sans saturation)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) sub(__m256i a, __m256i b)
    {
        return _mm256_sub_epi8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SUB (saturation, unsigned)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) subs_u8(__m256i a, __m256i b)
    {
        return _mm256_subs_epu8(a, b);
    }

    template < >
    __inline __m256i __attribute__((__always_inline__)) subs_s8(__m256i a, __m256i b)
    {
        return _mm256_subs_epi8(a, b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MUL
    //

	template < >
	__inline __m256 __attribute__((__always_inline__)) mul(__m256 a, __m256 b)
	{
		return _mm256_mul_ps(a, b);
	}


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MAX(a, b)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) max_s8(__m256i a, __m256i b)
    {
        return _mm256_max_epi8(a, b);
    }

    template < >
    __inline __m256i __attribute__((__always_inline__)) max_u8(__m256i a, __m256i b)
    {
        return _mm256_max_epu8(a, b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MIN(a, b)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) min_s8(__m256i a, __m256i b)
    {
        return _mm256_min_epi8(a, b);
    }

    template < >
    __inline __m256i __attribute__((__always_inline__)) min_u8(__m256i a, __m256i b)
    {
        return _mm256_min_epu8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SET1 (a, b)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) set1s(char a)
    {
        return _mm256_set1_epi8(a);
    }
    template < >
    __inline __m256i __attribute__((__always_inline__)) set1u(unsigned char a)
    {
        return _mm256_set1_epi8((char)a);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ABS(a, b)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) abs(__m256i a)
    {
        return _mm256_abs_epi8(a);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // XOR(a, b)
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) orx(__m256i a, __m256i b)
    {
        return _mm256_or_si256(a, b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ZERO value( )
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) zero( )
    {
        return _mm256_setzero_si256();
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // AND binary function
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) andb(__m256i a, __m256i b)
    {
        return _mm256_and_si256 ( a, b );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // OR binary function
    //

    template < >
    __inline __m256i __attribute__((__always_inline__)) orb(__m256i a, __m256i b)
    {
        return _mm256_or_si256 ( a, b );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // XOR binary function
    //

    template < >
    __inline __m256i  __attribute__((__always_inline__)) xorb(__m256i a, __m256i b)
    {
        return _mm256_xor_si256 ( a, b );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // AND NOT binary function
    //

    template < >
    __inline __m256i  __attribute__((__always_inline__)) and_notb(__m256i a, __m256i b)
    {
        return _mm256_andnot_si256 ( a, b );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // EQUAL function
    //

    template < >
    __inline __m256i  __attribute__((__always_inline__)) equal(__m256i a, __m256i b)
    {
        return _mm256_cmpeq_epi8 ( a, b );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // NOT EQUAL function
    //

    template < >
    __inline __m256i  __attribute__((__always_inline__)) nequal(__m256i a, __m256i b)
    {
        __m256i z = vect_fixed::zero    <__m256i>( );
        __m256i x = vect_fixed::equal   <__m256i>(a, b);
        __m256i y = vect_fixed::and_notb<__m256i>(z, x);
        return y;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // NOT EQUAL function
    //

    __inline __m256i  __attribute__((__always_inline__)) unpackhi_epi8(__m256i a)
    {
        const auto zero = _mm256_setzero_si256();
        const auto b    = _mm256_unpackhi_epi8( a, zero );
        return b;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////

    __inline __m256i  __attribute__((__always_inline__)) unpacklo_epi8(__m256i a)
    {
        const auto zero = _mm256_setzero_si256();
        const auto b    = _mm256_unpacklo_epi8( a, zero );
        return b;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////

    __inline __m256i  __attribute__((__always_inline__)) mullo_epi16(__m256i a, __m256i b)
    {
        return _mm256_mullo_epi16( a, b );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////

    __inline __m256i  __attribute__((__always_inline__)) div32_epi16(__m256i a)
    {
        return _mm256_srli_epi16( a, 5 );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////

    __inline __m256i  __attribute__((__always_inline__)) pack_epi16(__m256i high, __m256i low)
    {
        return _mm256_packs_epi16( high, low );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // CONDITIONNAL MOVE function
    //

    template < >
    __inline __m256i  __attribute__((__always_inline__)) cmov(__m256i a, __m256i b, __m256i v1, __m256i v2)
    {
        __m256i z = vect_fixed::equal   <__m256i>(  a,  b );
        return _mm256_blendv_epi8( v2, v1, z );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // CONDITIONNAL MOVE (3) function
    //

    template < >
    __inline __m256 __attribute__((__always_inline__)) cmov3(__m256 abs, __m256 min1, __m256 min2, __m256 v1, __m256 v2, __m256 v3)
    {
/*
    	vect_fixed::show("[abs ]", abs);
    	vect_fixed::show("[min1]", min1);
    	vect_fixed::show("[min2]", min2);
    	vect_fixed::show("[val1]", v1);
    	vect_fixed::show("[val2]", v2);
    	vect_fixed::show("[val3]", v3);
*/
        const __m256 inv_mask_256 = _mm256_castsi256_ps(_mm256_set1_epi32(0xFFFFFFFF));
        __m256  m1 = vect_fixed::equal<__m256 >( abs, min1 );
        __m256  m2 = vect_fixed::equal<__m256 >( abs, min2 );
        __m256i ma = vect_fixed::orb  <__m256i>( _mm256_castps_si256(m1), _mm256_castps_si256(m2) );
        __m256i m3 = vect_fixed::xorb <__m256i>( ma, _mm256_castps_si256(inv_mask_256));
        __m256  m4 = vect_fixed::andb <__m256 >( m1, v1 );
        __m256  m5 = vect_fixed::andb <__m256 >( m2, v2 );
        __m256  m6 = vect_fixed::andb <__m256 >( _mm256_castsi256_ps(m3), v3 );
        __m256  Re = vect_fixed::orb<__m256>( vect_fixed::orb<__m256>(m4, m5), m6);
//    	vect_fixed::show("[Resu]", Re);
        return Re;
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SIGN function
    //

    template < >
    __inline __m256i  __attribute__((__always_inline__)) sign( __m256i a )
    {
        const __m256i  m = _mm256_set1_epi32  ( 0x80808080 );
        return vect_fixed::andb<__m256i>(a, m);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // INVERSE SIGN function
    //

    template < >
    __inline __m256i  __attribute__((__always_inline__)) copysign( __m256i a, __m256i b )
    {
        return _mm256_sign_epi8(a,b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // INVERSE SIGN function
    //

    template < >
    __inline bool  __attribute__((__always_inline__)) xor_reduce( __m256i a )
    {
        return _mm256_movemask_epi8( a );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LES FONCTIONS D'ENTRELACEMENT POUR LES CODES LDPCs
    //

    template < >
    __inline void  __attribute__((__always_inline__)) reorder(__m256* dest, float* src, int length) // a = sign, b = value
    {
        float* ptr = (float*)dest;
        for (int i=0; i<length; i++){
            ptr[8*i+0] = src[    i];
            ptr[8*i+1] = src[1*length+i];
            ptr[8*i+2] = src[2*length+i];
            ptr[8*i+3] = src[3*length+i];
            ptr[8*i+4] = src[4*length+i];
            ptr[8*i+5] = src[5*length+i];
            ptr[8*i+6] = src[6*length+i];
            ptr[8*i+7] = src[7*length+i];
        }
    }

    template < >
    __inline void  __attribute__((__always_inline__)) reorder(__m256i* dest, char* src, int N) // a = sign, b = value
    {
        if( N%32 == 0  ){
            uchar_transpose_avx((__m256i*)src, (__m256i*)dest, N);
        }else{
            char *ptr = (char*)dest;
            for (int i=0; i<N; i++){
                for (int z=0; z<32; z++){
                    ptr[32 * i + z] = src[z * N + i];
                }
            }
        }
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LES FONCTIONS D'ENTRELACEMENT POUR LES CODES LDPCs
    //

    template < >
    __inline void  __attribute__((__always_inline__)) ireorder(char* dest, __m256* src, int N) // a = sign, b = value
    {
        float *ptr = (float*)src;
        for (int i=0; i<N; i+=1){
            dest[        i] = (ptr[8*i  ] > 0.0);
            dest[1*N+i] = (ptr[8*i+1] > 0.0);
            dest[2*N+i] = (ptr[8*i+2] > 0.0);
            dest[3*N+i] = (ptr[8*i+3] > 0.0);
            dest[4*N+i] = (ptr[8*i+4] > 0.0);
            dest[5*N+i] = (ptr[8*i+5] > 0.0);
            dest[6*N+i] = (ptr[8*i+6] > 0.0);
            dest[7*N+i] = (ptr[8*i+7] > 0.0);
        }
    }

    template < >
    __inline void  __attribute__((__always_inline__)) ireorder(char* dest, __m256i* src, int N) // a = sign, b = value
    {
        uchar_itranspose_2_avx((__m256i*) src, (__m256i*) dest, N);
/*
        if( N%32 == 0  ){
            uchar_itranspose_avx((__m256i*)src, (__m256i*)dest, N);
        }else{
            char* ptr = (char*)src;
            for (int i=0; i<N; i+=1){
                for (int j=0; j<32; j+=1){
                    dest[j * N + i] = ptr[32 * i + j] > 0;
                }
            }
        }
 */
    }

#if 0
    __inline void  __attribute__((__always_inline__)) bit_packing(char* DST, char* SRC, int N) // a = sign, b = value
    {
      __m256i*    src = (__m256i*)SRC;
      signed int* dst = (signed int*)DST;

      const __m256i deci  = _mm256_set1_epi8(0);

      for(int i = 0; i< N/32; i += 1){
        const __m256i v1 = _mm256_cmpgt_epi8( src[i], deci );
        dst[i] = _mm256_movemask_epi8( v1 );
      }
      //
      // WE SHOULD MANAGE THE CODES WHERE K IS NOT A POWER OF 32...
      //

    }
#endif

}

#endif // CLASS_vect_mi256
