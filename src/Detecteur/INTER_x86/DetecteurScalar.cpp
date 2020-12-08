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
	sum = 8.0f * sum;
	array[0] = (ps / sqrt( sum ));
}


void DetecteurScalar::execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer)
{
    const uint32_t ll = iBuffer->size();

    if( oBuffer->size() != ll )
        oBuffer->resize( ll );

    float* ptr_i = iBuffer->data();
    float* ptr_o = oBuffer->data();

    for(uint32_t i = 0; i < ll - 32; i += 1)
    {
        execute( ptr_i + i );
        ptr_o[i] = array[0];
    }
}
