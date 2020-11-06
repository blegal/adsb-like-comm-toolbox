#ifndef DETECTEUR8PAR8
#define DETECTEUR8PAR8

#include <iostream>
#include <cstdio>
#include <cstdlib>

#ifdef __AVX2__
  #include <immintrin.h>
#endif

using namespace std;

class Detecteur8par8{

private :

public :
	Detecteur8par8();
	~Detecteur8par8();
    void detection(float* ps, float* buffer); 

};

Detecteur8par8::Detecteur8par8(){}

Detecteur8par8::~Detecteur8par8(){}

void Detecteur8par8::detection(float* ps, float *buffer)
{
#ifdef __AVX2__
	/* AVX
	add
	add
    add
    add
    ... 7 add total
	*/

	__m256 v_ps2 = _mm256_loadu_ps(buffer); //[0]
    __m256 v_ps = _mm256_loadu_ps(buffer + 1); //[1]
    v_ps2 = _mm256_add_ps(v_ps2, v_ps);
    __m256 v_ps3 = _mm256_loadu_ps(buffer + 3); //[3]
    __m256 v_ps4 = _mm256_loadu_ps(buffer + 4); //[4]
    v_ps3 = _mm256_add_ps(v_ps3, v_ps4);
    v_ps2 = _mm256_add_ps(v_ps3, v_ps2);

    __m256 v_ps5 = _mm256_loadu_ps(buffer + 14); //[14]
    __m256 v_ps6 = _mm256_loadu_ps(buffer + 15); //[15]
    v_ps5 = _mm256_add_ps(v_ps5, v_ps6);

    __m256 v_ps7 = _mm256_loadu_ps(buffer + 18); //[18]
    __m256 v_ps8 = _mm256_loadu_ps(buffer + 19); //[19]
    v_ps7 = _mm256_add_ps(v_ps7, v_ps8);
    v_ps5 = _mm256_add_ps(v_ps5, v_ps7);

    v_ps2 = _mm256_add_ps(v_ps2, v_ps5);
	/* AVX
	carre des elmts
	add
    carre des elmts
	add
    ... 32 fois
	mul 8
    sqrt

    div
	*/
    
    __m256 v_buf6;
    __m256 v_buf7;
    __m256 v_buf8;
	__m256 v_buf1;
    for (int k=0; k<32; k = k+4) {
        __m256 v_buf2 = _mm256_loadu_ps((buffer + k)); //[k]
        v_buf2 =  _mm256_mul_ps(v_buf2, v_buf2);
        v_buf1 = _mm256_add_ps(v_buf1, v_buf2);
        __m256 v_buf3 = _mm256_loadu_ps((buffer + k + 1)); //[k + 1]
        v_buf3 =  _mm256_mul_ps(v_buf3, v_buf3);
        v_buf6 = _mm256_add_ps(v_buf6, v_buf3);
        __m256 v_buf4 = _mm256_loadu_ps((buffer + k + 2)); //[k + 2]
        v_buf4 =  _mm256_mul_ps(v_buf4, v_buf4);
        v_buf7 = _mm256_add_ps(v_buf7, v_buf4);
        __m256 v_buf5 = _mm256_loadu_ps((buffer + k + 3)); //[k + 3]
        v_buf5 =  _mm256_mul_ps(v_buf5, v_buf5);
        v_buf8 = _mm256_add_ps(v_buf8, v_buf5);
    }
    v_buf6 = _mm256_add_ps(v_buf6, v_buf7);
    v_buf1 = _mm256_add_ps(v_buf8, v_buf1);
    v_buf1 = _mm256_add_ps(v_buf1, v_buf6);
    __m256 v_huit = _mm256_set1_ps(8);
    v_buf1 = _mm256_mul_ps(v_buf1, v_huit); //x8
    v_buf1 = _mm256_sqrt_ps(v_buf1); //sqrt

    v_buf1 = _mm256_div_ps(v_ps2, v_buf1); //div
	_mm256_storeu_ps(ps, v_buf1);
#else
	cout << "AVX2 decoding is not available on this platform..." << endl;
	exit( -1 );
#endif
}

#endif
