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
	__m256 v_ps1 = _mm256_loadu_ps(buffer + 0); //[0]
    __m256 v_ps2  = _mm256_loadu_ps(buffer + 1); //[1]
    v_ps2 = _mm256_add_ps(v_ps1, v_ps2);

    __m256 v_ps3 = _mm256_loadu_ps(buffer + 4); //[3]
    __m256 v_ps4 = _mm256_loadu_ps(buffer + 5); //[4]
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

    __m256 sum_1 = _mm256_setzero_ps();
    __m256 sum_2 = _mm256_setzero_ps();
    __m256 sum_3 = _mm256_setzero_ps();
    __m256 sum_4 = _mm256_setzero_ps();

    for (int k = 0; k < 32; k = k + 4) {
        const __m256 v_buf1 = _mm256_loadu_ps((buffer + k + 0)); //[k]
        const __m256 v_buf2 = _mm256_loadu_ps((buffer + k + 1)); //[k]
        const __m256 v_buf3 = _mm256_loadu_ps((buffer + k + 2)); //[k]
        const __m256 v_buf4 = _mm256_loadu_ps((buffer + k + 3)); //[k]

        sum_1 = _mm256_fmadd_ps(v_buf1, v_buf1, sum_1);
        sum_2 = _mm256_fmadd_ps(v_buf2, v_buf2, sum_2);
        sum_3 = _mm256_fmadd_ps(v_buf3, v_buf3, sum_3);
        sum_4 = _mm256_fmadd_ps(v_buf4, v_buf4, sum_4);
    }

    const __m256 v_sum      = _mm256_add_ps(_mm256_add_ps(sum_1, sum_2), _mm256_add_ps(sum_3, sum_4));
    const __m256 v_huit     = _mm256_set1_ps(8.0f );
    const __m256 v_8sum     = _mm256_mul_ps(v_sum, v_huit);     //x8
    const __m256 v_sqrt8sum = _mm256_sqrt_ps(v_8sum);           //sqrt
    const __m256 v_resu     = _mm256_div_ps(v_ps2, v_sqrt8sum); //div
	_mm256_storeu_ps(ps, v_resu);
#else
	cout << "AVX2 decoding is not available on this platform..." << endl;
	exit( -1 );
#endif
}

#endif
