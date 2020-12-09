#include "BackendLibrary.hpp"

#include "../BinaryFileDest/BinaryFileDest.hpp"
#include "../BMPFileDest/BMPFileDest.hpp"
#include "../FPGADest//FPGADest.hpp"
#include "../NullDest/NullDest.hpp"
#include "../TerminalDest/TerminalDest.hpp"


BackendLibrary::BackendLibrary()
{

}


BackendLibrary::~BackendLibrary()
{

}

#include "../BinaryFileDest/BinaryFileDest.hpp"
#include "../BMPFileDest/BMPFileDest.hpp"
#include "../FPGADest//FPGADest.hpp"
#include "../NullDest/NullDest.hpp"
#include "../TerminalDest/TerminalDest.hpp"

Backend* BackendLibrary::allocate(Parameters& param)
{
    const std::string name   = param.toString("frontend");
    const std::string option = param.toString("frontend_opt");

    Backend* fend;
    if( name == "BinaryFile" ){
        fend = new BinaryFileDest( option );

    } else if( name == "BMPFile" ){
        fend = new BMPFileDest( option );

    } else if( name == "FPGA" ){
        fend = new FPGADest( );

    } else if( name == "Null" ){
        fend = new NullDest( );

    } else if( name == "Terminal" ){
        fend = new TerminalDest( );
    }
    else
    {
        std::cout << "(EE) Le type de module de Correlation demandé n'est actuellement pas dispnible :" << std::endl;
        std::cout << "(EE) type = " << param.toString("mode_corr")                                   << std::endl;
        exit( -1 );
    }
    return fend;
}
