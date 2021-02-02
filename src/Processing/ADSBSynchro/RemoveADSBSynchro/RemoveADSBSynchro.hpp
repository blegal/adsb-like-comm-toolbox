#ifndef _RemoveADSBSynchro_
#define _RemoveADSBSynchro_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <cstring>

using namespace std;

class RemoveADSBSynchro{
public :
    RemoveADSBSynchro();

	~RemoveADSBSynchro();

    void execute(std::vector<uint8_t>& ibuffer, std::vector<uint8_t>& obuffer);
};

#endif
