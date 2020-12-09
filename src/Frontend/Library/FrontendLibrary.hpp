#ifndef _FrontendLibrary_
#define _FrontendLibrary_

#include "../Frontend.hpp"
#include "../../Tools/Parameters/Parameters.hpp"

using namespace std;

class FrontendLibrary{
protected:

public :
    FrontendLibrary( );
	~FrontendLibrary();

    static Frontend* allocate(Parameters& param);
};

#endif