#ifndef _EmitterLibrary_
#define _EmitterLibrary_

#include "../Emitter.hpp"
#include "../../../Tools/Parameters/Parameters.hpp"

using namespace std;

class EmitterLibrary{
protected:

public :
    EmitterLibrary( );
	~EmitterLibrary();

    static Emitter* allocate(Parameters& param);
};

#endif