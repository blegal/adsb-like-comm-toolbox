#ifndef _TerminalDest_
#define _TerminalDest_

#include "../Backend.hpp"

using namespace std;

class TerminalDest : public Backend{
private :

public :
    TerminalDest();

	~TerminalDest();

    void execute(Frame*    f);
    void execute(FECFrame* f);
};

#endif
