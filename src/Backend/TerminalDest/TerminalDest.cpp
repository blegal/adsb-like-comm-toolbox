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


void TerminalDest::execute(FECFrame* f)
{
    assert( f != nullptr );
    f->size_frame();
}
