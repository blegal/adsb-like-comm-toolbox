#ifndef _ModuleLibrary_
#define _ModuleLibrary_

#include "../Conversion.hpp"
#include "../../Tools/Parameters.hpp"

using namespace std;

class CplxModuleLibrary{
protected:

public :
    CplxModuleLibrary( );
	~CplxModuleLibrary();

    static Conversion* allocate(Parameters& param);
};

#endif