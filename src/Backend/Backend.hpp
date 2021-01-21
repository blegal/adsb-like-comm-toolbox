#ifndef _Backend_
#define _Backend_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../Frame/Frame.hpp"
#include "../Frame/FECFrame.hpp"

using namespace std;

class Backend{
private :

public :
    Backend();

	virtual ~Backend();

    virtual void execute(Frame*    f) = 0;
    virtual void execute(FECFrame* f) = 0;
};

#endif
