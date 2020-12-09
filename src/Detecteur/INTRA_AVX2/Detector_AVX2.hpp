#ifndef _Detector_AVX2_
#define _Detector_AVX2_

#include "../Detector.hpp"


class Detector_AVX2 : public Detector{
private :

public :
	Detector_AVX2();

    virtual void execute(float* buffer);

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
};

#endif
