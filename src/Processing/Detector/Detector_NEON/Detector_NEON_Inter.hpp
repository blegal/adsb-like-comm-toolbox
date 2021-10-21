#ifndef _Detector_NEON_Inter_
#define _Detector_NEON_Inter_

#include "../Detector.hpp"
#if defined(__ARM_NEON)
    #include <arm_neon.h>
#endif


class Detector_NEON_Inter : public Detector{
private :

public :
    Detector_NEON_Inter();

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);

};

#endif
