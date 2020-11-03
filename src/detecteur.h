#if 0
#ifndef DETECTEUR
#define DETECTEUR

#include <iostream>
#include <cstdio>
#include <cstdlib>

#ifdef __AVX2__
  #include <immintrin.h>
#endif

using namespace std;

class Detecteur{

private :

public :
	Detecteur();
	~Detecteur();
    float detection(float* buffer);
	float detection_basique(float* buffer); 

};

Detecteur::Detecteur(){}

Detecteur::~Detecteur(){}

float Detecteur::detection(float *buffer)
{

}

float Detecteur::detection_basique(float *buffer){
	float ps = (*buffer) + *(buffer + 1) + *(buffer + 3) + *(buffer + 4) + *(buffer + 14) + *(buffer + 15) + *(buffer + 18) + *(buffer + 19);
	float sum = 0.0;
	for (int j=0; j<32; j++){
		float temp = *(buffer + j);
		sum += temp * temp;	
	}

	sum = sum * 8;
	return (ps/sqrt(sum));
}

#endif
#endif
