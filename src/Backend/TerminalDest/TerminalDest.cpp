#include "TerminalDest.hpp"


TerminalDest::TerminalDest()
{

}


TerminalDest::~TerminalDest()
{

}


void TerminalDest::execute(Frame* f)
{
    assert( f != nullptr );
    f->dump_frame();
}
