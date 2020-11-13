#include "ConversionAVX2.hpp"


ConversionAVX2::ConversionAVX2()
{

}

ConversionAVX2::~ConversionAVX2()
{

}


void ConversionAVX2::execute(std::vector< std::complex<float> >* buffer_in, std::vector<float>* buffer_out)
{
    for(int kk = 0; kk < buffer_in->size(); kk += 1)
    {
        std::complex<float> c = buffer_in->at(kk);
        const float breal = real( c );
        const float bimag = imag( c );
        const float resul = sqrt( breal * breal + bimag * bimag);
        buffer_out->push_back(resul);
    }

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