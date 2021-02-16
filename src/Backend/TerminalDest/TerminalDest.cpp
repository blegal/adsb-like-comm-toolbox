#include "TerminalDest.hpp"


TerminalDest::TerminalDest()
{

}


TerminalDest::~TerminalDest()
{

}


void TerminalDest::execute(FECFrame* f)
{
    assert( f != nullptr );
    f->size_frame();
}
