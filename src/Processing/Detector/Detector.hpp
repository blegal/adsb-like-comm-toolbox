#ifndef _Detector_
#define _Detector_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class Detector{
protected :
	std::vector<float> array;

public :
	Detector(const uint32_t size);

	virtual ~Detector();

    virtual void execute(std::vector<float>* iBuffer, std::vector<float>* oBuffer) = 0;

    virtual uint32_t nElements();

    virtual float getValue(uint32_t p);
};

#endif
