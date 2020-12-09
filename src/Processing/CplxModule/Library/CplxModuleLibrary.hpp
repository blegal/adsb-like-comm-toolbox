#ifndef _ModuleLibrary_
#define _ModuleLibrary_

#include "../CplxModule.hpp"
#include "../../../Tools/Parameters/Parameters.hpp"

using namespace std;

class CplxModuleLibrary{
protected:

public :
    CplxModuleLibrary( );
	~CplxModuleLibrary();

    static CplxModule* allocate(Parameters& param);
};

#endif