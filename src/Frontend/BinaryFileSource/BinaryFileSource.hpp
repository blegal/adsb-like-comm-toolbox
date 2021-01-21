#ifndef _BinaryFileSource_
#define _BinaryFileSource_

#include "../Frontend.hpp"
//#include "../../Frame/Frame.hpp"

using namespace std;

class BinaryFileSource : public Frontend{
private :
    std::string filename;

    FILE* file;

public :
    BinaryFileSource(std::string file);

	~BinaryFileSource();

    void execute(Frame*    f);
    void execute(FECFrame* f);

    bool is_alive();
};

#endif
