#ifndef _Detecteur_NEON_
#define _Detecteur_NEON_

#include "../Detecteur.hpp"


class Detecteur_NEON : public Detecteur{
private :

public :
	Detecteur_NEON();

    virtual void execute(float* buffer);

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer);
};

#endif
