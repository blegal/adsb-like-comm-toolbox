#ifndef _Detector_NEON_
#define _Detector_NEON_

#include "../Detector.hpp"
#if defined(__ARM_NEON)
    #include <arm_neon.h>
#endif


class Detector_NEON : public Detector{
private :
    virtual void execute(float* buffer);
#if defined(__ARM_NEON)
    float32x4_t execute2(float *buffer, const float32x4_t accu);
#endif

public :
	Detector_NEON();

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
    virtual void execute2(std::vector<float>* iBuffer, std::vector<float>* oBuffer);

};

#endif
