#ifndef _DetectorScalar_
#define _DetectorScalar_

#include "../Detector.hpp"


class DetectorScalar : public Detector{
private :

public :
	DetectorScalar();

    virtual void execute(float* buffer);

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
};

#endif
