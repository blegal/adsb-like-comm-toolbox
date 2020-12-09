#ifndef _TerminalDest_
#define _TerminalDest_

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <vector>

#include "../../Tools/BMP.hpp"
#include "../../Frame/Frame.hpp"

using namespace std;

class TerminalDest{
private :

public :
    TerminalDest();

	~TerminalDest();

    void execute(Frame* f);
};

#endif
