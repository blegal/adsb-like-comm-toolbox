#ifndef _Detecteur_AVX2_
#define _Detecteur_AVX2_

#include "../Detecteur.hpp"


class Detecteur_AVX2 : public Detecteur{
private :

public :
	Detecteur_AVX2();

    virtual void execute(float* buffer);

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
};

#endif
