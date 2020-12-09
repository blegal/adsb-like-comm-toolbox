#ifndef _NullDest_
#define _NullDest_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../Tools/BMP.hpp"
#include "../../Frame/Frame.hpp"

using namespace std;

class NullDest{
private :

public :
    NullDest();

	~NullDest();

    void execute(Frame* f);
};

#endif
