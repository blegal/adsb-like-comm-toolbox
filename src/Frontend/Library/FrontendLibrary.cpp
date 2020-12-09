#include "FrontendLibrary.hpp"

#include "../BMPSource/BMPSource.hpp"
#include "../BinaryFileSource/BinaryFileSource.hpp"
#include "../HexSource/HexSource.hpp"

FrontendLibrary::FrontendLibrary()
{

}


FrontendLibrary::~FrontendLibrary()
{

}
#include "../BMPSource/BMPSource.hpp"
#include "../BinaryFileSource/BinaryFileSource.hpp"
#include "../HexSource/HexSource.hpp"

Frontend* FrontendLibrary::allocate(Parameters& param)
{
    Frontend* fend;
    if( param.toString("frontend") == "HexSource" ){
        fend = new HexSource();
    } else if( param.toString("frontend") == "BMPFile" ){
        fend = new BMPSource();
    } else if( param.toString("frontend") == "BinaryFile" ){
        fend = new BinaryFileSource();
    }
    else
    {
        std::cout << "(EE) Le type de module de Correlation demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_corr")                                   << std::endl;
        exit( -1 );
    }
    return fend;
}
