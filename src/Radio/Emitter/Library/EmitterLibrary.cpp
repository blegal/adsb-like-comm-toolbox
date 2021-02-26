#include "EmitterLibrary.hpp"

#include "../File/EmitterFileRAW.hpp"
#include "../Radio/HackRF/EmitterHackRF.hpp"
#include "../Radio/USRP/EmitterUSRP.hpp"

EmitterLibrary::EmitterLibrary()
{

}


EmitterLibrary::~EmitterLibrary()
{

}


Emitter* EmitterLibrary::allocate(Parameters& param)
{
    Emitter* radio = nullptr;
    if( (param.toString("mode_radio") == "radio") && (param.toString("filename") == "hackrf") )
    {
        radio = new EmitterHackRF(param.toDouble("fc"), param.toDouble("fe_real"));
    }
    else if( (param.toString("mode_radio") == "radio") && (param.toString("filename") == "usrp") )
    {
        radio = new EmitterUSRP(param.toDouble("fc"), param.toDouble("fe_real"));
    }
    else if( (param.toString("mode_radio") == "radio") && (param.toString("filename") == "usrp") )
    {
        radio = new EmitterUSRP( param.toDouble("fc"), param.toDouble("fe_real") );
    }
    else if( param.toString("mode_radio") == "file" )
    {
        radio = new EmitterFileRAW( param.toString("filename") );
    }
    else if( param.toString("mode_radio") == "file-stream" )
    {
        radio = new EmitterFileRAW( param.toString("filename"), false );
    }

    else
    {
        cout << "oups !" << endl;
        cout << "mode_radio = " << param.toString("mode_radio") << endl;
        cout << "filename   = " << param.toString("filename")   << endl;
        exit( EXIT_FAILURE );
    }
    return radio;
}
