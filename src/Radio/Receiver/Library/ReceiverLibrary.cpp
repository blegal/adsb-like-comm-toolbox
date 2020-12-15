#include "ReceiverLibrary.hpp"

#include "../File/ReceiverFileRAW.hpp"
#include "../File/ReceiverFileUHD.hpp"

#include "../Radio/HackRF/ReceiverHackRF.hpp"
#include "../Radio/SoapyHackRF/ReceiverSoapy.hpp"
#include "../Radio/USRP/ReceiverUSRP.hpp"

ReceiverLibrary::ReceiverLibrary()
{

}


ReceiverLibrary::~ReceiverLibrary()
{

}

Receiver* ReceiverLibrary::allocate(Parameters& param)
{
    const std::string type   = param.toString("mode_radio");
    const std::string module = param.toString("filename");

    Receiver* radio;
    if( type == "radio" && module == "hackrf" ) {
        ReceiverHackRF* r = new ReceiverHackRF(param.toDouble("fc"), param.toDouble("fe"));
        //if( param.toInt("hackrf_amplifier") != -1 ) r->set_amp_enable( param.toInt("hackrf_amplifier") );
        //if( param.toInt("hackrf_vga_gain")  != -1 ) r->set_vga_gain  ( param.toInt("hackrf_vga_gain") );
        //if( param.toInt("hackrf_lna_gain")  != -1 ) r->set_lna_gain  ( param.toInt("hackrf_lna_gain") );
        radio = r;

    } else if( type == "radio" && module == "Soapy" ) {
        ReceiverSoapy* r = new ReceiverSoapy(param.toDouble("fc"), param.toDouble("fe"));
        if( param.toInt("hackrf_amplifier") != -1 ) r->set_amp_enable( param.toInt("hackrf_amplifier") );
        if( param.toInt("hackrf_vga_gain")  != -1 ) r->set_vga_gain  ( param.toInt("hackrf_vga_gain") );
        if( param.toInt("hackrf_lna_gain")  != -1 ) r->set_lna_gain  ( param.toInt("hackrf_lna_gain") );
        radio = r;

    } else if( type == "radio" && module == "usrp" ) {
        ReceiverUSRP* r = new ReceiverUSRP(param.toDouble("fc"), param.toDouble("fe"));
        radio = r;

    } else if( type == "file" && (module.find(".raw") != -1) ) {
        ReceiverFileRAW* r = new ReceiverFileRAW(param.toString("filename"));
        radio = r;

    } else if( type == "file" && (module.find(".txt") != -1) ) {
        ReceiverFileUHD* r = new ReceiverFileUHD(param.toString("filename"));
        radio = r;
    }
    else
    {
        cout << "Error in file (" << __FILE__ << ")" << " at line (" << __LINE__ << ")" << endl;
        cout << "mode_radio = " << type << endl;
        cout << "filename   = " << param.toString("filename")      << endl;
        exit( -1 );
    }
    return radio;
}
