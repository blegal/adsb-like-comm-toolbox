#include "DetecteurScalar.hpp"


DetecteurScalar::DetecteurScalar() : Detecteur(1)
{

}


void DetecteurScalar::execute(float *buffer)
{
	const float ps = buffer[ 0] + buffer[ 1] + buffer[ 4] + buffer[ 5] + // 2 bits à 1 en PPM
	                 buffer[14] + buffer[15] + buffer[18] + buffer[19];  // 2 bits à 0 en PPM

	float sum = 0.0;
	for (int j=0; j<32; j++){
		const float temp = buffer[j];
		sum += (temp * temp);
	}
	sum = sum * 8;
	array[0] = (ps / sqrt(sum));
}
