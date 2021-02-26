#include "CplxModule_AVX2.hpp"

#ifdef __AVX2__
    #include <immintrin.h>
#endif


CplxModule_AVX2::CplxModule_AVX2()
{

}

CplxModule_AVX2::~CplxModule_AVX2()
{

}


void computeAbsolute2 (const std::complex<float>* __restrict cplxIn, float* __restrict absOut, const int length)
{
#ifdef __AVX2__
    for (int i = 0; i < length; i += 8)
    {
        const __m256 inLo = _mm256_loadu_ps (reinterpret_cast<const float*> (cplxIn + i    ));
        const __m256 inHi = _mm256_loadu_ps (reinterpret_cast<const float*> (cplxIn + i + 4));

        const __m256 re = _mm256_shuffle_ps (inLo, inHi, _MM_SHUFFLE (2, 0, 2, 0));
        const __m256 im = _mm256_shuffle_ps (inLo, inHi, _MM_SHUFFLE (3, 1, 3, 1));

        const __m256 abs = _mm256_sqrt_ps (_mm256_add_ps (_mm256_mul_ps (re, re), _mm256_mul_ps (im, im)));

        const __m256d ordered = _mm256_permute4x64_pd (_mm256_castps_pd(abs), _MM_SHUFFLE(3,1,2,0));
        _mm256_storeu_ps (absOut + i, _mm256_castpd_ps(ordered));
    }
#endif
}


void MyAbsolute (const std::complex<float>* __restrict cplxIn,
                       float* __restrict absOut, const int length)
{
#ifdef __AVX2__
    const float* pIn1 = reinterpret_cast<const float*> (cplxIn + 0);
    const float* pIn2 = reinterpret_cast<const float*> (cplxIn + 4);
          float* pOut = absOut;

    for (int i = 0; i < length; i += 8)
    {
        const __m256 inLo = _mm256_loadu_ps ( pIn1 ); pIn1 += 16;
        const __m256 inHi = _mm256_loadu_ps ( pIn2 ); pIn2 += 16;

        const __m256 re  = _mm256_shuffle_ps (inLo, inHi, _MM_SHUFFLE (2, 0, 2, 0));
        const __m256 im  = _mm256_shuffle_ps (inLo, inHi, _MM_SHUFFLE (3, 1, 3, 1));
        const __m256 abs = _mm256_sqrt_ps (_mm256_add_ps (_mm256_mul_ps (re, re), _mm256_mul_ps (im, im)));

        const __m256d ordered = _mm256_permute4x64_pd (_mm256_castps_pd(abs), _MM_SHUFFLE(3,1,2,0));
        _mm256_storeu_ps (pOut, _mm256_castpd_ps(ordered));
        pOut += 8;
    }

    int start = (length >> 3) << 3;
    for (int i = start; i < length; i += 8)
    {
        float rr = cplxIn[i].real() * cplxIn[i].real() ;
        float ii = cplxIn[i].imag() * cplxIn[i].imag() ;
        float mod2 = rr + ii;
        float mod = sqrtf(mod2);
        absOut[i] = mod;
    }

    //
    //
    //
//    if( length & 0x07 )
//    {
//        printf("Oups il reste des données !\n");
//        exit( EXIT_FAILURE );
//    }
#endif
}


void CplxModule_AVX2::execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out)
{
    if( buffer_in->size() != buffer_out->size() )
        buffer_out->resize( buffer_in->size() );

    MyAbsolute( buffer_in->data(), buffer_out->data(), buffer_in->size() );
}
