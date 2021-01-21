#ifndef _Frontend_
#define _Frontend_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../Frame/Frame.hpp"
#include "../Frame/FECFrame.hpp"

using namespace std;

class Frontend{
private :

public :
    Frontend();

	virtual ~Frontend();

    virtual void execute(Frame*    f) = 0;
    virtual void execute(FECFrame* f) = 0;

    virtual bool is_alive() = 0;
};

#endif
