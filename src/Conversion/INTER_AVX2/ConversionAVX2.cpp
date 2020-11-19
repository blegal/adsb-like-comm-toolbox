#include "ConversionAVX2.hpp"
#include <immintrin.h>


ConversionAVX2::ConversionAVX2()
{

}

ConversionAVX2::~ConversionAVX2()
{

}


void computeAbsolute2 (const std::complex<float>* __restrict cplxIn, float* __restrict absOut, const int length)
{
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
}


void MyAbsolute (const std::complex<float>* __restrict cplxIn,
                       float* __restrict absOut, const int length)
{
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

    //
    //
    //
    if( length & 0x07 )
    {
        printf("Oups il reste des données !\n");
        exit( -1 );
    }
}


void ConversionAVX2::execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out)
{
    if( buffer_in->size() != buffer_out->size() )
        buffer_out->resize( buffer_in->size() );

    MyAbsolute( buffer_in->data(), buffer_out->data(), buffer_in->size() );
/*
    const uint32_t ll = buffer_in->size();
    for(int kk = 0; kk < ll; kk += 1)
    {
        std::complex<float> c = buffer_in->at(kk);
        const float breal = real( c );
        const float bimag = imag( c );
        const float resul = sqrt( breal * breal + bimag * bimag);
        buffer_out->data()[ll] = resul;
    }
*/
    /*
			int kk = 0;
			while (kk < (buffer->size() - 8)){
				__attribute__ ((aligned (16))) float breal[8] = {real((*buffer)[kk + 0] ), real((*buffer)[kk + 1] ), real((*buffer)[kk + 2] ), real((*buffer)[kk + 3] ), real((*buffer)[kk + 4] ), real((*buffer)[kk + 5] ), real((*buffer)[kk + 6] ), real((*buffer)[kk + 7] )};
				__attribute__ ((aligned (16))) float bimag[8] = {imag((*buffer)[kk + 0] ), imag((*buffer)[kk + 1] ), imag((*buffer)[kk + 2] ), imag((*buffer)[kk + 3] ), imag((*buffer)[kk + 4] ), imag((*buffer)[kk + 5] ), imag((*buffer)[kk + 6] ), imag((*buffer)[kk + 7] )};
				__m256 v_breal = _mm256_load_ps(breal);
				__m256 v_bimag = _mm256_load_ps(bimag);
				v_breal =  _mm256_mul_ps(v_breal, v_breal);
				v_bimag =  _mm256_mul_ps(v_bimag, v_bimag);
				v_breal =  _mm256_add_ps(v_breal, v_bimag);
				v_breal = _mm256_sqrt_ps(v_breal);
				_mm256_store_ps(breal, v_breal);
				for(int i=0; i <8; i++) buffer_abs->push_back(breal[i]);
				kk += 8;	
			}
*/

}