#ifndef _Detecteur_
#define _Detecteur_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class Detecteur{
protected :
	std::vector<float> array;

public :
	Detecteur(const uint32_t size);

	virtual ~Detecteur();

    virtual void execute(float* buffer) = 0;

    virtual uint32_t nElements();

    virtual float getValue(uint32_t p);
};

#endif
