#include "HexSource.hpp"


HexSource::HexSource()
{
    nFrames = 0;
}


HexSource::~HexSource()
{

}


void HexSource::execute(Frame* f)
{
    const uint32_t length = f->payload_size();
    for( uint32_t i = 0; i < length; i +=1 )
    {
        f->data(i, i + nFrames);
    }
    nFrames += 1;
}


bool HexSource::is_alive()
{
    return true;
}
