#include "Detector_AVX2.hpp"

#ifdef __AVX2__
    #include <immintrin.h>
#endif

Detector_AVX2::Detector_AVX2() : Detector(1)
{

}

void Detector_AVX2::execute(float *buffer){
#ifdef __AVX2__
	/* AVX
	gather 1 1 1 1 1 1 1 1
	hadd   2 2 0 0 2 2 0 0
	hadd   4 0 0 0 4 0 0 0
	sommer 4*2
	*/
	__attribute__ ((aligned (16))) float ps2[8];
	__m256i vindex = _mm256_set_epi32(0, 1, 4, 5, 14, 15, 18, 19 );
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
	__m256 v_buf1 = _mm256_loadu_ps(buffer +  0);
	__m256 v_buf2 = _mm256_loadu_ps(buffer +  8);
	__m256 v_buf3 = _mm256_loadu_ps(buffer + 16);
	__m256 v_buf4 = _mm256_loadu_ps(buffer + 24);

    v_buf1 =  _mm256_mul_ps(v_buf1, v_buf1);
    v_buf2 =  _mm256_mul_ps(v_buf2, v_buf2);
    v_buf3 =  _mm256_mul_ps(v_buf3, v_buf3);
	v_buf4 =  _mm256_mul_ps(v_buf4, v_buf4);

	v_buf1 = _mm256_add_ps(v_buf1, v_buf2);
	v_buf3 = _mm256_add_ps(v_buf3, v_buf4);

	v_buf1 = _mm256_add_ps(v_buf1, v_buf3);

	v_buf1 = _mm256_hadd_ps(v_ps2, v_buf1);   // hadd 2  2 8 8 2 2 8 8
	v_buf1 = _mm256_hadd_ps(v_buf1, v_ps2);   // hadd 4 16 0 0 4 16 0 0
	_mm256_store_ps(ps2, v_buf1);

	float somme = 8.0f * (ps2[1] + ps2[5]);
	float ps = ps2[0] + ps2[4];
//	somme = somme*8;
//	return (ps/sqrt(somme));
	array[0] = (ps / sqrt(somme));

#else
	cout << "AVX2 decoding is not available on this platform..." << endl;
    exit( EXIT_FAILURE );
#endif
}


void Detector_AVX2::execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer)
{
#ifdef __AVX2__
    const uint32_t ll = iBuffer->size();

    if( oBuffer->size() != ll )
        oBuffer->resize( ll );

    float* ptr_i = iBuffer->data();
    float* ptr_o = oBuffer->data();

    for(uint32_t i = 0; i < ll - 32; i += 8)
    {
        __m256 numSum;
        const __m256 v_ps1 = _mm256_loadu_ps(ptr_i +  0); //[0]
        const __m256 v_ps2 = _mm256_loadu_ps(ptr_i +  1); //[1]
        const __m256 v_ps3 = _mm256_loadu_ps(ptr_i +  4); //[3]
        const __m256 v_ps4 = _mm256_loadu_ps(ptr_i +  5); //[4]
        const __m256 v_ps5 = _mm256_loadu_ps(ptr_i + 14); //[14]
        const __m256 v_ps6 = _mm256_loadu_ps(ptr_i + 15); //[15]
        const __m256 v_ps7 = _mm256_loadu_ps(ptr_i + 18); //[18]
        const __m256 v_ps8 = _mm256_loadu_ps(ptr_i + 19); //[19]

        const __m256 s1 = _mm256_add_ps(v_ps1, v_ps2);
        const __m256 s2  = _mm256_add_ps(v_ps3, v_ps4);
        const __m256 s3  = _mm256_add_ps(v_ps5, v_ps6);
        const __m256 s4  = _mm256_add_ps(v_ps7, v_ps8);

        numSum = _mm256_add_ps( _mm256_add_ps(s1, s2), _mm256_add_ps(s3, s4));

        __m256 sum_1 = _mm256_setzero_ps();
        __m256 sum_2 = _mm256_setzero_ps();
        __m256 sum_3 = _mm256_setzero_ps();
        __m256 sum_4 = _mm256_setzero_ps();

        for (int k = 0; k < 32; k = k + 4) {
            const __m256 v_buf1 = _mm256_loadu_ps((ptr_i + k + 0)); //[k]
            const __m256 v_buf2 = _mm256_loadu_ps((ptr_i + k + 1)); //[k]
            const __m256 v_buf3 = _mm256_loadu_ps((ptr_i + k + 2)); //[k]
            const __m256 v_buf4 = _mm256_loadu_ps((ptr_i + k + 3)); //[k]

            sum_1 = _mm256_fmadd_ps(v_buf1, v_buf1, sum_1);
            sum_2 = _mm256_fmadd_ps(v_buf2, v_buf2, sum_2);
            sum_3 = _mm256_fmadd_ps(v_buf3, v_buf3, sum_3);
            sum_4 = _mm256_fmadd_ps(v_buf4, v_buf4, sum_4);
        }

        const __m256 v_sum      = _mm256_add_ps(_mm256_add_ps(sum_1, sum_2), _mm256_add_ps(sum_3, sum_4));
        const __m256 v_huit     = _mm256_set1_ps(8.0f );
        const __m256 v_8sum     = _mm256_mul_ps (v_sum, v_huit);     //x8
        const __m256 v_sqrt8sum = _mm256_sqrt_ps(v_8sum);           //sqrt
        const __m256 v_resu     = _mm256_div_ps(numSum, v_sqrt8sum); //div
        _mm256_storeu_ps(ptr_o, v_resu);

        // On avance les pointeurs memoire de x cases
        ptr_i += (sizeof(__m256) / sizeof(float));
        ptr_o += (sizeof(__m256) / sizeof(float));
    }
#else
    cout << "AVX2 decoding is not available on this platform..." << endl;
    exit( EXIT_FAILURE );
#endif
}
