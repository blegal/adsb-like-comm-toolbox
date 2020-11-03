#ifndef _DetecteurScalar_
#define _DetecteurScalar_

#include "Detecteur.hpp"


class DetecteurScalar : public Detecteur{
private :

public :
	DetecteurScalar();

    virtual void execute(float* buffer);
};

#endif
