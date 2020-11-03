#ifndef _IQ_Removing_
#define _IQ_Removing_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class IQ_Removing{
protected :
	uint32_t scale;

public :
	IQ_Removing();

	~IQ_Removing();

    void execute(std::vector<float>& ibuffer, std::vector<float>& obuffer);
};

#endif
