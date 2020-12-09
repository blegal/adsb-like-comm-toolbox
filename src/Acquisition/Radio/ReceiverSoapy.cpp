#include "ReceiverSoapy.hpp"
#include <unistd.h>

ReceiverSoapy::ReceiverSoapy(float s_fc, float s_fe) : Receiver(s_fc, s_fe)
{
    SoapySDR::KwargsList results = SoapySDR::Device::enumerate();
    SoapySDR::Kwargs::iterator it;

    if( results.size() == 0 ) exit( 0 );

    for( int i = 0; i < 1 /*results.size()*/; ++i)  // On prend toujours le permier de la liste
    {
        printf("Found device #%d:\n", i);
        for( it = results[i].begin(); it != results[i].end(); ++it)
        {
            printf("%s = %s\n", it->first.c_str(), it->second.c_str());
        }
        printf("\n");
    }

    //
    // On instancie un objet de type driver
    //
    sdr = SoapySDR::Device::make("");
    if( sdr == NULL )
    {
        fprintf(stderr, "SoapySDR::Device::make failed\n");
        exit( EXIT_FAILURE );
    }

    //	2.1 antennas
    std::vector< std::string > str_list;	//string list
    str_list = sdr->listAntennas( SOAPY_SDR_RX, 0);
    printf("Rx antennas: ");
    for(int i = 0; i < str_list.size(); ++i)
        printf("%s,", str_list[i].c_str());
    printf("\n");

    //	2.2 gains
    str_list = sdr->listGains( SOAPY_SDR_RX, 0);
    printf("Rx Gains: ");
    for(int i = 0; i < str_list.size(); ++i)
        printf("%s, ", str_list[i].c_str());
    printf("\n");

    //	2.3. ranges(frequency ranges)
    SoapySDR::RangeList ranges = sdr->getFrequencyRange( SOAPY_SDR_RX, 0);
    printf("Rx freq ranges: ");
    for(int i = 0; i < ranges.size(); ++i)
        printf("[%g Hz -> %g Hz], ", ranges[i].minimum(), ranges[i].maximum());
    printf("\n");

    set_sample_rate( s_fe );
    set_freq       ( s_fc );
    set_vga_gain  (    30 );
    set_lna_gain  (    16 );
    set_amp_enable( false );

    // 4. setup a stream (complex floats)
    rx_stream = sdr->setupStream( SOAPY_SDR_RX, SOAPY_SDR_CF32);
    if( rx_stream == NULL)
    {
        fprintf( stderr, "Failed\n");
        SoapySDR::Device::unmake( sdr );
        exit( EXIT_FAILURE );
    }
}

ReceiverSoapy::~ReceiverSoapy()
{
    sdr->closeStream( rx_stream );
    SoapySDR::Device::unmake( sdr );
}


void ReceiverSoapy::start_engine()
{
    printf("[ START SoapySDR ]\n");
    sdr->activateStream( rx_stream, 0, 0, 0);
}


void ReceiverSoapy::stop_engine()
{
    printf("[ STOP SoapySDR ]\n");
    sdr->deactivateStream( rx_stream, 0, 0);	//stop streaming
}


void ReceiverSoapy::initialize()
{

}


void ReceiverSoapy::set_freq(const double value)
{
    sdr->setFrequency( SOAPY_SDR_RX, 0, value );
    printf("[ FREQUENCY : %f ]\n", get_freq());
}


double ReceiverSoapy::get_freq( )
{
    return sdr->getFrequency( SOAPY_SDR_RX, 0 );
}


void ReceiverSoapy::set_sample_rate(const double value)
{
    sdr->setSampleRate( SOAPY_SDR_RX, 0, value );
    printf("[ SAMPLE RT : %f ]\n", get_sample_rate());
}


double ReceiverSoapy::get_sample_rate( )
{
    return sdr->getSampleRate( SOAPY_SDR_RX, 0 );
}


void ReceiverSoapy::set_amp_enable(const bool value)
{
    if( value == false )
        sdr->setGain(SOAPY_SDR_RX, 0, "AMP",  0);
    else
        sdr->setGain(SOAPY_SDR_RX, 0, "AMP",  14);
    printf("[ AMPLIFIER : %d ]\n", get_amp_enable());
}


bool ReceiverSoapy::get_amp_enable( )
{
    return sdr->getGain(SOAPY_SDR_RX, 0, "AMP");
}


void ReceiverSoapy::set_vga_gain(uint32_t value)
{
    sdr->setGain(SOAPY_SDR_RX, 0, "VGA",  value);
//    sdr->setGain(SOAPY_SDR_RX, 0, value);
    printf("[ VGA_GAIN  : %d ]\n", get_vga_gain());
}


uint32_t ReceiverSoapy::get_vga_gain( )
{
    return sdr->getGain(SOAPY_SDR_RX, 0, "VGA");
}


void ReceiverSoapy::set_lna_gain(uint32_t value)
{
    sdr->setGain(SOAPY_SDR_RX, 0, "LNA",  value);
//    sdr->setGain(SOAPY_SDR_RX, 0, value);
    printf("[ LNA_GAIN  : %d ]\n", get_lna_gain());
}


uint32_t ReceiverSoapy::get_lna_gain( )
{
    return sdr->getGain(SOAPY_SDR_RX, 0, "LNA");
}


void ReceiverSoapy::reception( std::vector< std::complex<float> >& cbuffer)
{
    uint32_t to_read = cbuffer.size();
    uint32_t nb_read = 0;
    std::complex<float>* buff = cbuffer.data();

    int flags;
    long long time_ns;
    do{
        void *buffs[]  = {buff + nb_read};
        uint32_t nRead = sdr->readStream( rx_stream, buffs, to_read - nb_read, flags, time_ns, 1000000);
        if( nRead < 0 ) exit( -1 );
        nb_read       += nRead;
        if( nb_read != to_read ){
            usleep( 500 );
        }
    }while( (to_read - nb_read) != 0 );

#if 1
    for(int i = 0; i < to_read; i += 1)
        buff[i] *= 127.0f;
#else
    float* pbuff = (float *)cbuffer.data();
    for(int i = 0; i < 2 * to_read; i += 1)
    {
        pbuff[i] = pbuff[i] * 127.0f;
    }
#endif
}


void ReceiverSoapy::reset()
{
    fprintf(stderr, "ReceiverSoapy::reset() not implemented yet !\n");
    exit( -1 );
}