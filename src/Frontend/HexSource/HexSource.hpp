#ifndef _HexSource_
#define _HexSource_

#include "../Frontend.hpp"
//#include "../../Frame/Frame.hpp"

using namespace std;

class HexSource : public Frontend{
private :
    uint32_t nFrames;

public :
    HexSource();

	~HexSource();

    void execute(Frame* f);

    bool is_alive();
};

#endif
