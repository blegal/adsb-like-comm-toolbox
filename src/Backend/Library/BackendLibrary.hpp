#ifndef _BackendLibrary_
#define _BackendLibrary_

#include "../Backend.hpp"
#include "../../Tools/Parameters/Parameters.hpp"

using namespace std;

class BackendLibrary{
protected:

public :
    BackendLibrary();
	~BackendLibrary();

    static Backend* allocate(Parameters& param);
};

#endif