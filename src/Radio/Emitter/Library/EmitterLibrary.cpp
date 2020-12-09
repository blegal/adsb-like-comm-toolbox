#include "EmitterLibrary.hpp"

#include "../File/EmitterFileRAW.hpp"
#include "../Radio/EmitterHackRF.hpp"

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
    else if( param.toString("mode_radio") == "file" )
    {
        radio = new EmitterFileRAW( param.toString("filename") );
    }
    else
    {
        cout << "oups !" << endl;
        cout << "mode_radio = " << param.toString("mode_radio") << endl;
        cout << "filename   = " << param.toString("filename")   << endl;
        exit( -1 );
    }
    return radio;
}
