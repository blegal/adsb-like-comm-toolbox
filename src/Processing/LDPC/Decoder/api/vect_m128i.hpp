#ifndef CLASS_vect_mi128
#define CLASS_vect_mi128

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

#include "CTools.h"

namespace vect_fixed{

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LOAD
    //

    template < > // SSE integer
	__inline__ __m128i __attribute__((__always_inline__)) load(__m128i *ptr)
    {
        return _mm_load_si128(ptr);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // STORE
    //

    template < > // SSE
    __inline void __attribute__((__always_inline__)) store(__m128i *ptr, __m128i v)
    {
    	_mm_store_si128(ptr, v);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) add(__m128i a, __m128i b)
    {
        return _mm_add_epi8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD (8b unsigned, saturated)
    //

    __inline __m128i __attribute__((__always_inline__)) adds_u8(__m128i a, __m128i b)
    {
        return _mm_adds_epu8(a, b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD (8b signed, saturated)
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) adds_s8(__m128i a, __m128i b)
    {
        return _mm_adds_epi8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SUB (sans saturation)
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) sub(__m128i a, __m128i b)
    {
        return _mm_sub_epi8(a, b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SUB (saturation, unsigned)
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) subs_u8(__m128i a, __m128i b)
    {
        return _mm_subs_epu8(a, b);
    }

    template < >
    __inline __m128i __attribute__((__always_inline__)) subs_s8(__m128i a, __m128i b)
    {
        return _mm_subs_epi8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MUL
    //
    
    template < >
    __inline __m128 __attribute__((__always_inline__)) mul(__m128 a, __m128 b)
    {
        return _mm_mul_ps(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MAX(a, b)
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) max_s8(__m128i a, __m128i b)
    {
        return _mm_max_epi8(a, b);
    }

    template < >
    __inline __m128i __attribute__((__always_inline__)) max_u8(__m128i a, __m128i b)
    {
        return _mm_max_epu8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MIN(a, b)
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) min_s8(__m128i a, __m128i b)
    {
        return _mm_min_epi8(a, b);
    }

    template < >
    __inline __m128i __attribute__((__always_inline__)) min_u8(__m128i a, __m128i b)
    {
        return _mm_min_epu8(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SET1 (a, b)
    //return (Q)a;
    //}

    template < >
    __inline __m128i __attribute__((__always_inline__)) set1s(char a)
    {
        return _mm_set1_epi8(a);
    }

    template < >
    __inline __m128i __attribute__((__always_inline__)) set1u(unsigned char a)
    {
        return _mm_set1_epi8((char)a);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ABS(a, b)
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) abs(__m128i a)
    {
        return _mm_abs_epi8(a);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // XOR(a, b)
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) orx(__m128i a, __m128i b)
    {
        return _mm_or_si128(a, b);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ZERO value( )
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) zero( )
    {
        return _mm_setzero_si128();
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // AND binary function
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) andb(__m128i a, __m128i b)
    {
        return _mm_and_si128 ( a, b );
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // OR binary function
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) orb(__m128i a, __m128i b)
    {
        return _mm_or_si128 ( a, b );
    }
    
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // XOR binary function
    //

    template < >
    __inline __m128i __attribute__((__always_inline__)) xorb(__m128i a, __m128i b)
    {
        return _mm_xor_si128 ( a, b );
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // AND NOT binary function
    //

    template < >
    __inline __m128i  __attribute__((__always_inline__)) and_notb(__m128i a, __m128i b)
    {
        return _mm_andnot_si128 ( a, b );
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // EQUAL function
    //

    template < >
    __inline __m128i  __attribute__((__always_inline__)) equal(__m128i a, __m128i b)
    {
        return _mm_cmpeq_epi8 ( a, b );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // NOT EQUAL function
    //

    template < >
    __inline __m128i  __attribute__((__always_inline__)) nequal(__m128i a, __m128i b)
    {
    	__m128i z = vect_fixed::zero <__m128i>( );
    	__m128i x = vect_fixed::equal<__m128i>(a, b); // ON FAIT UN TEST D'EGALITE
    	__m128i y = vect_fixed::equal<__m128i>(z, x); // ON INVERSE LA DECISION (CE QUI VALUT 0x00, VAUT 0xFF)
        return y;
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // NOT EQUAL function
    //
    
    __inline __m128i  __attribute__((__always_inline__)) unpackhi_epi8(__m128i a)
    {
        const auto zero = _mm_setzero_si128();
        const auto b    = _mm_unpackhi_epi8( a, zero );
        return b;
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    __inline __m128i  __attribute__((__always_inline__)) unpacklo_epi8(__m128i a)
    {
        const auto zero = _mm_setzero_si128();
        const auto b    = _mm_unpacklo_epi8( a, zero );
        return b;
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    __inline __m128i  __attribute__((__always_inline__)) mullo_epi16(__m128i a, __m128i b)
    {
        return _mm_mullo_epi16( a, b );
    }
        
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    __inline __m128i  __attribute__((__always_inline__)) div32_epi16(__m128i a)
    {
//	    return _mm_srli_epi16( a, 5 );
	    return _mm_srli_epi16( a, 4 );
    }
    
    ///////////////////////////////////////////////////////////////////////////////////////////
    
    __inline __m128i  __attribute__((__always_inline__)) pack_epi16(__m128i high, __m128i low)
    {
        return _mm_packs_epi16( high, low );
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // CONDITIONNAL MOVE function
    //

    template < >
    __inline __m128i  __attribute__((__always_inline__)) cmov(__m128i a, __m128i b, __m128i v1, __m128i v2)
    {
    	__m128i z = vect_fixed::equal<__m128i>(  a,  b );
        return _mm_blendv_epi8( v2, v1, z );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // CONDITIONNAL MOVE (3) function
    //

    template < >
    __inline __m128  __attribute__((__always_inline__)) cmov3(__m128 abs, __m128 min1, __m128 min2, __m128 v1, __m128 v2, __m128 v3)
    {
    	const auto inv_mask_128 = _mm_castsi128_ps(_mm_set1_epi32(0xFFFFFFFF));
    	const auto m1 = equal( abs, min1 );
    	const auto m2 = equal( abs, min2 );
    	const auto ma = orb  ( _mm_castps_si128(m1), _mm_castps_si128(m2) );
    	const auto m3 = xorb ( ma, _mm_castps_si128(inv_mask_128));
    	const auto m4 = andb ( m1, v1 );
    	const auto m5 = andb ( m2, v2 );
    	const auto m6 = andb ( _mm_castsi128_ps(m3), v3 );
    	return vect_fixed::orb<__m128>( vect_fixed::orb<__m128>(m4, m5), m6);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SIGN function
    //

    template < >
    __inline __m128i  __attribute__((__always_inline__)) sign( __m128i a )
    {
    	const __m128i  m = _mm_set1_epi32  ( 0x80808080 );
        return vect_fixed::andb<__m128i>(a, m);
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // INVERSE SIGN function
    //

    template < >
     __inline __m128i  __attribute__((__always_inline__)) copysign( __m128i a, __m128i b )
     {
    	return _mm_sign_epi8(a,b);
     }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // INVERSE SIGN function
    //

    template < >
     __inline bool  __attribute__((__always_inline__)) xor_reduce( __m128i a )
     {
    	return _mm_movemask_epi8( a );
     }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LES FONCTIONS D'ENTRELACEMENT POUR LES CODES LDPCs
    //

    template < >
    __inline void  __attribute__((__always_inline__)) reorder(__m128* dest, float* src, int length) // a = sign, b = value
     {
		float* ptr = (float*)dest;
        for (int i=0; i<length; i++){
        	ptr[4*i+0] = src[         i];
        	ptr[4*i+1] = src[1*length+i];
        	ptr[4*i+2] = src[2*length+i];
        	ptr[4*i+3] = src[3*length+i];
        }
     }

    template < >
    __inline void  __attribute__((__always_inline__)) reorder(__m128i* dest, char* src, int N) // a = sign, b = value
     {
        if( N%16 == 0  ){
            uchar_transpose_sse((__m128i*)src, (__m128i*)dest, N);
        }else{
            char *ptr = (char*) dest;
            for (int i=0; i<N; i++){
                for (int z=0; z<16; z++){
                	ptr[16 * i + z] = src[z * N + i];
                }
            }
        }
     }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LES FONCTIONS D'ENTRELACEMENT POUR LES CODES LDPCs
    //

    template < >
    __inline void  __attribute__((__always_inline__)) ireorder(char* dest, __m128* src, int N) // a = sign, b = value
     {
        float *ptr = (float*)src;
        for (int i=0; i<N; i+=1){
        	dest[    i] = (ptr[4*i  ] > 0.0);
        	dest[1*N+i] = (ptr[4*i+1] > 0.0);
        	dest[2*N+i] = (ptr[4*i+2] > 0.0);
        	dest[3*N+i] = (ptr[4*i+3] > 0.0);
        }
     }

    template < >
    __inline void  __attribute__((__always_inline__)) ireorder(char* dest, __m128i* src, int N) // a = sign, b = value
	{
        if( N%16 == 0  ){
            uchar_itranspose_sse((__m128i*)src, (__m128i*)dest, N);
        }else{
            char* ptr = (char*) src;
            for (int i=0; i<N; i+=1){
                for (int j=0; j<16; j+=1){
                    dest[j * N + i] = ptr[16 * i + j] > 0;
                }
            }
        }
    }
}

#endif // CLASS_vect_mi128
