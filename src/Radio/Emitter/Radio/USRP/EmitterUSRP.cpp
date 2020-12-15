#include "EmitterUSRP.hpp"
#include <unistd.h>

typedef enum {
    HW_SYNC_MODE_OFF = 0,
    HW_SYNC_MODE_ON = 1,
} hw_sync_mode_t;


#define FREQ_ONE_MHZ (1000000ll)

EmitterUSRP::EmitterUSRP(float s_fc, float s_fe) : Emitter(s_fc, s_fe)
{
    freq_hz    =  s_fc;
    fech_hz    =  s_fe;
}


EmitterUSRP::EmitterUSRP(Parameters& param)
    : Emitter(param.toFloat("fc"), param.toFloat("fe"))
{
    freq_hz    =  param.toFloat("fc");
    fech_hz    =  param.toFloat("fe");
}


EmitterUSRP::~EmitterUSRP()
{
    usrp.reset();
}


void EmitterUSRP::initialize()
{
    cout << "INITIALISATION EMISSION" << endl;
    string usrp_addr("serial=EDR10Z3B1");           // L'adresse de l'USRP est écrite en dur pour l'instant
    usrp = uhd::usrp::multi_usrp::make(usrp_addr); // Initialisation de l'USRP

    usrp->set_tx_rate( this->fech_hz );  // Set de la fréquence d'échantillonnage
    usrp->set_tx_freq( this->freq_hz );  // Set de la fréquence porteuse
    usrp->set_tx_gain(10.0);
    //usrp->set_rx_subdev_spec(uhd::usrp::subdev_spec_t("AB:0"));
    usrp->set_tx_antenna("TX/RX");

    uhd::stream_args_t stream_args("fc32");        // Type des données à échantillonner (ici complexes float 64 - 32 bits par voie)
    stream_args.args["fullscale"] = "127";
    tx_stream = usrp->get_tx_stream(stream_args); // Pointeur sur les data reçues

    cout << " " << string(50, '-') << endl;
    cout << " Sampling Rate set to    : " << usrp->get_tx_rate() << endl;
    cout << " Central Frequency set to: " << usrp->get_tx_freq() << endl;
    cout << " " << string(50, '-') << endl;
}


void EmitterUSRP::set_freq(double value)
{
    freq_hz = value;
}


double EmitterUSRP::get_freq( )
{
    return freq_hz;
}


void EmitterUSRP::set_sample_rate(double value)
{
    fech_hz = value;
}


double EmitterUSRP::get_sample_rate()
{
    return fech_hz;
}


void EmitterUSRP::set_amp_enable(bool value)
{

}


bool EmitterUSRP::get_amp_enable( )
{
    return false;
}


void EmitterUSRP::set_antenna_enable(bool value)
{

}


bool EmitterUSRP::get_antenna_enable( )
{
    return false;
}


void EmitterUSRP::inc_txvga_gain()
{
    const int32_t  value = get_txvga_gain() + 1;
    const int32_t nvalue = (value > 47) ? 47 : value;
    set_txvga_gain( nvalue );
}


void EmitterUSRP::dec_txvga_gain()
{
    const int32_t  value = get_txvga_gain() - 1;
    const int32_t nvalue = (value < 0) ? 0 : value;
    set_txvga_gain( nvalue );
}


void EmitterUSRP::set_txvga_gain(uint32_t value)
{

}


uint32_t EmitterUSRP::get_txvga_gain( )
{
    return 0;
}


void EmitterUSRP::start_engine( )
{
    usrp->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
}


void EmitterUSRP::stop_engine( )
{
    fprintf(stderr, "(II) Emitter::stop_engine() is executed...\n");
    usrp->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);
    rx_stream.reset();

}


void EmitterUSRP::emission(std::vector<int8_t>& cbuffer )
{
#if 0
    uhd::tx_metadata_t md;                  // Des metadata
    int num_tx_samps = cbuffer->size();     // Nombre d'echantillons à emettre
    int i = 0;
    cout << "..." << endl;
    while (i < num_tx_samps){
        tx_stream->send(&buffer->at(i), 1, md);
        i++;
    }
#else
    const uint32_t num_tx_samps = cbuffer.size();     // Nombre d'echantillons à emettre
    std::vector<float> fbuffer( num_tx_samps );
    for(uint32_t i = 0; i < num_tx_samps; i += 1)
    {
        fbuffer[i] = cbuffer[i];
    }

    uint32_t nSend = 0;
    uhd::tx_metadata_t md;                  // Des metadata
    while(nSend < num_tx_samps)
    {
        nSend += tx_stream->send(fbuffer.data() + nSend, num_tx_samps - nSend, md);
    }
#endif
}


void EmitterUSRP::close()
{

}


void EmitterUSRP::reset()
{

}
