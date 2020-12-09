#ifndef _IQ_Insertion_
#define _IQ_Insertion_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

using namespace std;

class IQ_Insertion{
protected :
	uint32_t scale;

public :
	IQ_Insertion();

	~IQ_Insertion();

    void execute(std::vector<int8_t>& ibuffer, std::vector<int8_t>& obuffer);
};

#endif
