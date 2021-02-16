#ifndef _NullDest_
#define _NullDest_

#include "../Backend.hpp"

using namespace std;

class NullDest : public Backend{
private :

public :
    NullDest();

	~NullDest();

    void execute(FECFrame* f);
};

#endif
