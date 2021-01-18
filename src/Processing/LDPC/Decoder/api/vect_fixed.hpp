#ifndef CLASS_vect_fixed
#define CLASS_vect_fixed

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

#include "transpose_avx.h"

namespace vect_fixed{

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LOAD
    //
    template <class T>
    __inline__ T __attribute__((__always_inline__)) load(T* ptr)
    {
        return (*ptr); // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // STORE
    //
    template <class T>
    __inline void __attribute__((__always_inline__)) store(T* ptr, T v)
    {
        (*ptr) = v; // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) add(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a + b); // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD (8b unsigned, saturated)
    //
    template <class T>
    __inline T __attribute__((__always_inline__)) adds_u8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a + b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ADD (8b signed, saturated)
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) adds_s8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a + b);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SUB (sans saturation)
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) sub(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a - b); // OK
    }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SUB (saturation, unsigned)
    //

    template <class T> // un sens quand on est en float ?
    __inline T __attribute__((__always_inline__)) subs_u8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
    	return (a - b); // DO NOT WORK !
    }

    template <class T>
    __inline T __attribute__((__always_inline__)) subs_s8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a - b); // DO NOT WORK !
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MUL
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) mul(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a * b); // NOT TESTED
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MAX(a, b)
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) max_s8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a > b) ? a : b; // OK
    }

    template <class T>
    __inline T __attribute__((__always_inline__)) max_u8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a > b) ? a : b; // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MIN(a, b)
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) min_s8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a < b) ? a : b; // OK
    }

    template <class T>
    __inline T __attribute__((__always_inline__)) min_u8(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a < b) ? a : b; // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // MIN_2(a, b)
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) min_u8(T a, T min1, T min2 )
    {
    	T x  = vect_fixed::max_u8<T>(a, min1);
        return vect_fixed::min_u8<T>(min2, x);
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SET1 (a, b)
    //

    template <class T, class Q>
    __inline Q __attribute__((__always_inline__)) set1s(T a)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        assert( false );
        return (Q)a;
    }

    template <class T, class Q>
    __inline Q __attribute__((__always_inline__)) set1u(T a)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return a;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ABS(a, b)
    //


    template <class T>
    __inline T __attribute__((__always_inline__)) abs(T a)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a < 0) ? -a : a; // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // XOR(a, b)
    //

    template <class T>
	__inline T __attribute__((__always_inline__)) orx(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a ^ b); // NOT TESTED !
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // ZERO value( )
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) zero()
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (T)0;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // AND binary function
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) andb(T a, T b)
    {
    	assert( false );
        return a == b;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // OR binary function
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) orb(T a, T b)
    {
        assert( false );
#ifdef __clang__
    	return a + b; // IT IS WRONG ! HOWEVER, IT REMOVES CLANG COMPILER WARNING !!!
#else
    	return a; // IT IS WRONG ! HOWEVER, IT REMOVES CLANG COMPILER WARNING !!!
#endif
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // XOR binary function
    //

    template <class T>
    __inline T __attribute__((__always_inline__)) xorb(T a, T b)
    {
        assert( false );
        return a ^ b;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // AND NOT binary function
    //

    template <class T>
    __inline T  __attribute__((__always_inline__)) and_notb(T a, T b)
    {
    	assert( false );
        return a && b;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // EQUAL function
    //

    template <class T>
    __inline T  __attribute__((__always_inline__)) equal(T a, T b)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a == b); // NOT TESTED
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // NOT EQUAL function
    //

    template <class T>
    __inline T  __attribute__((__always_inline__)) nequal(T a, T b)
    {
//        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return (a != b); // NOT TESTED
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // NOT EQUAL function
    //

    ///////////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // CONDITIONNAL MOVE function
    //

    template <class T>
    __inline T  __attribute__((__always_inline__)) cmov(T a, T b, T v1, T v2)
    {
        return (a == b) ? v1 : v2; // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // CONDITIONNAL MOVE (3) function
    //

    template <class T>
    __inline T  __attribute__((__always_inline__)) cmov3(T abs, T min1, T min2, T v1, T v2, T v3)
    {
    	if     ( abs == min1 ) return v1;
    	else if( abs == min2 ) return v2;
    	else                   return v3;
    }

    template < >
    __inline float  __attribute__((__always_inline__)) cmov3(float abs, float min1, float min2, float v1, float v2, float v3)
    {
    	if     ( abs == min1 ) return v1;
    	else if( abs == min2 ) return v2;
    	else                   return v3;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // SIGN function
    //

    template <class T>
    __inline T  __attribute__((__always_inline__)) sign(T a)
    {
        printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
        return ( a < (T)0 ) ? (T)0 : (T)1; // OK
    }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // INVERSE SIGN function
    //

    template <class T>
    __inline T  __attribute__((__always_inline__)) copysign(T a, T b) // a = value, b = sign
     {
    		printf("(EE) ERROR IN FILE %s LINE:%d\n", __FILE__, __LINE__); exit( 0 );
            return (b == 0) ? -a : a;
     }

    template <class T>
    __inline float  __attribute__((__always_inline__)) copysign(float a, float b) // a = value, b = sign
     {
            return (b == 0.0f) ? -a : a;
     }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // INVERSE SIGN function
    //

    template <class T>
    __inline bool  __attribute__((__always_inline__)) xor_reduce(T a) // a = sign, b = value
     {
            return (a != 0); // OK
     }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LES FONCTIONS D'ENTRELACEMENT POUR LES CODES LDPCs
    //
    template <class T, class Q>
    __inline void  __attribute__((__always_inline__)) reorder(T* dest, Q* src, int length) // a = sign, b = value
     {
        for (int i=0; i<length; i++){
        	dest[i] = src[i]; // OK
        }
     }

    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LES FONCTIONS D'ENTRELACEMENT POUR LES CODES LDPCs
    //
    template <class T>
    __inline void  __attribute__((__always_inline__)) clear(T* src, int N) // a = sign, b = value
     {
    	memset( (void*)src, 0, N * sizeof(T) );
     }


    ///////////////////////////////////////////////////////////////////////////////////////////
    //
    // LES FONCTIONS D'ENTRELACEMENT POUR LES CODES LDPCs
    //
    template <class T>
    __inline void  __attribute__((__always_inline__)) ireorder(char* dest, T* src, int N) // a = sign, b = value
     {
        for (int i = 0; i < N; i++) {
        	dest[i] = (src[i] >= (T)0); // OK
        }
     }
}

//#ifdef __SSE4__
  #include "vect_m128i.hpp"
//#else
//  #warning "__SSE4__ not activated"
//#endif

#ifdef __NEON__
#include "vect_neon.hpp"
#warning "__NEON__ activated"
#endif

//#ifdef __AVX2__
#include "vect_m256i.hpp"
//#else
//#warning "__AVX2__ not activated"
//#endif

#ifdef __AVX512__
#include "vect_m512i.hpp"
#endif

#endif // CLASS_VectLib
