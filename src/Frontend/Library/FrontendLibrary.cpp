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


Frontend* FrontendLibrary::allocate(Parameters& param)
{
    const std::string name   = param.toString("frontend");
    const std::string option = param.toString("frontend_opt");

    Frontend* fend;
    if( param.toString("frontend") == "HexSource" ){
        fend = new HexSource();
    } else if( param.toString("frontend") == "BMPFile" ){
        fend = new BMPSource( option );
    } else if( param.toString("frontend") == "BinaryFile" ){
        fend = new BinaryFileSource( option );
    }
    else
    {
        std::cout << "(EE) Le type de module de Correlation demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_corr")                                   << std::endl;
        exit( EXIT_FAILURE );
    }
    return fend;
}
