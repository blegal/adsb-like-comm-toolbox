#ifndef _ReceiverLibrary_
#define _ReceiverLibrary_

#include "../Radio.hpp"
#include "../../Tools/Parameters.hpp"

using namespace std;

class ReceiverLibrary{
protected:

public :
    ReceiverLibrary( );
	~ReceiverLibrary();

    static Radio* allocate(Parameters& param);
};

#endif