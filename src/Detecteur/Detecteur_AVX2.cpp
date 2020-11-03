#include "Detecteur_AVX2.hpp"

#ifdef __AVX2__
    #include <immintrin.h>
#endif

Detecteur_AVX2::Detecteur_AVX2() : Detecteur(1)
{

}


void Detecteur_AVX2::execute(float *buffer){
#ifdef __AVX2__
	/* AVX
	gather 1 1 1 1 1 1 1 1
	hadd   2 2 0 0 2 2 0 0
	hadd   4 0 0 0 4 0 0 0
	sommer 4*2
	*/
	__attribute__ ((aligned (16))) float ps2[8];
	__m256i vindex = _mm256_set_epi32(0, 1, 3, 4, 14, 15, 18, 19 );
	__m256 v_ps2   = _mm256_i32gather_ps (buffer, vindex , 4);
	/* AVX
	carre des elmts
	somme de 32 elmts
	add  2 2 2 2 2 2 2 2
	add  2 2 2 2 2 2 2 2
	add  4 4 4 4 4 4 4 4
	hadd 0 0 8 8 0 0 8 8
	hadd 0 0 0 16 0 0 0 16 
	sommer 16*2 = 32
	*/
	__m256 v_buf1 = _mm256_loadu_ps(buffer);
	v_buf1 =  _mm256_mul_ps(v_buf1, v_buf1);
	__m256 v_buf2 = _mm256_loadu_ps((buffer + 8));
	v_buf2 =  _mm256_mul_ps(v_buf2, v_buf2);
	__m256 v_buf3 = _mm256_loadu_ps((buffer + 16));
	v_buf3 =  _mm256_mul_ps(v_buf3, v_buf3);
	__m256 v_buf4 = _mm256_loadu_ps((buffer + 24));
	v_buf4 =  _mm256_mul_ps(v_buf4, v_buf4);
	v_buf1 = _mm256_add_ps(v_buf1, v_buf2);
	v_buf3 = _mm256_add_ps(v_buf3, v_buf4);
	v_buf1 = _mm256_add_ps(v_buf1, v_buf3);
	v_buf1 = _mm256_hadd_ps(v_ps2, v_buf1);   // hadd 2 2 8 8 2 2 8 8
	v_buf1 = _mm256_hadd_ps(v_buf1, v_ps2);  // hadd 4 16 0 0 4 16 0 0
	_mm256_store_ps(ps2, v_buf1);

	float somme = ps2[1] + ps2[5];
	float ps = ps2[0] + ps2[4];
	somme = somme*8;
//	return (ps/sqrt(somme));
	array[0] = (ps/sqrt(somme));

#else
	cout << "AVX2 decoding is not available on this platform..." << endl;
	exit( -1 );
#endif
}
