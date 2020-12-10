#ifndef _Detector_x86_
#define _Detector_x86_

#include "../Detector.hpp"


class Detector_x86 : public Detector{
private :

public :
    Detector_x86();

    virtual void execute(float* buffer);

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
};

#endif
