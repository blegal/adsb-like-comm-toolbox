#ifndef _Detector_NEON_
#define _Detector_NEON_

#include "../Detector.hpp"


class Detector_NEON : public Detector{
private :

public :
	Detector_NEON();

    virtual void execute(float* buffer);

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
};

#endif
