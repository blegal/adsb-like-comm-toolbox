#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <complex>
#include <chrono>

#ifdef __AVX2__
  #include <immintrin.h>
#endif

using namespace std;


void cplx2abs (int verbose, vector<complex<float> >* buffer, vector<float>* buffer_abs){
#if 0
		/* AVX
		load 8 par 8
		mul real 1 1 1 1 1 1 1 1 
		mul imag 1 1 1 1 1 1 1 1
		add      1 1 1 1 1 1 1 1
		sqrt     1 1 1 1 1 1 1 1
		push_back a la suite
		*/
		if (verbose){
			auto parseur1 = chrono::steady_clock::now();
			int kk = 0;
			while (kk < (buffer->size() - 8)){
                //cout << "kk :" << kk << endl;
                //cout << "taille bufer :" << buffer_abs->size()<< endl;
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
			auto parseur2 = chrono::steady_clock::now();

			cout << "\nTemps cplx => abs : " << chrono::duration_cast<chrono::microseconds>(parseur2 - parseur1).count() << " us\n" << endl;
		}else{

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

		}
#endif
	for(int kk = 0; kk < buffer->size(); kk += 1)
	{
		complex<float> c = buffer->at(kk);
		float breal = real( c );
		float bimag = imag( c );
		float resul = sqrt( breal * breal + bimag * bimag);
		buffer_abs->push_back(resul);
	}
}
