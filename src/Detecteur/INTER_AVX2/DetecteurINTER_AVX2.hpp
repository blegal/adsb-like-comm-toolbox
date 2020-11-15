#ifndef _DetecteurINTER_AVX2_
#define _DetecteurINTER_AVX2_

#include "../Detecteur.hpp"


class DetecteurINTER_AVX2 : public Detecteur{
private :

public :
    DetecteurINTER_AVX2();

    virtual void execute(float* buffer);

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
};

#endif
