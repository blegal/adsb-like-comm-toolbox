#ifndef _ReceiverLibrary_
#define _ReceiverLibrary_

#include "../Receiver.hpp"
#include "../../Tools/Parameters.hpp"

using namespace std;

class ReceiverLibrary{
protected:

public :
    ReceiverLibrary( );
	~ReceiverLibrary();

    static Receiver* allocate(Parameters& param);
};

#endif