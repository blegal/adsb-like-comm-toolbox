#include "NullDest.hpp"


NullDest::NullDest()
{

}


NullDest::~NullDest()
{

}


void NullDest::execute(Frame* f)
{
    assert( f != nullptr);
}


void NullDest::execute(FECFrame* f)
{
    assert( f != nullptr);
}
