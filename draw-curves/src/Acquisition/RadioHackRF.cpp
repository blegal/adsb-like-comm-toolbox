#include "RadioHackRF.hpp"
#include <unistd.h>

typedef enum {
    HW_SYNC_MODE_OFF = 0,
    HW_SYNC_MODE_ON = 1,
} hw_sync_mode_t;


#define FREQ_ONE_MHZ (1000000ll)

RadioHackRF::RadioHackRF(float s_fc, float s_fe) : Radio(s_fc, s_fe)
{
    freq_hz   = s_fc;
    fech_hz   = s_fe;
    amplifier = false;
    antenna   = false;
    vga_gain  =  8;
    lna_gain  = 20;

    //
    // On veut une seconde de signal pour ne rien rater...
    //
    nEchantillons          = (2 * s_fe);
//    const uint32_t echanti = (2 * s_fe);
    const uint32_t symbols = (nEchantillons + 262144 - 1) / 262144;
    N                      = 262144 * symbols;
    rxFinished    = false;
    byte_received = 0;

    buffer     = new int8_t[N];
}

RadioHackRF::~RadioHackRF()
{
    hackrf_close( device );
    delete[] buffer;
}


int RadioHackRF::rx_callback(hackrf_transfer* transfer) {
    RadioHackRF *obj = (RadioHackRF *) transfer->rx_ctx;
    return obj->rx_callback(transfer->buffer, transfer->valid_length);
}


int RadioHackRF::rx_callback(unsigned char *buf, uint32_t len)
{
    memcpy(buffer +  byte_received, buf, len);
    byte_received += len;
    if( byte_received >= N )
        rxFinished = true;
    else
        rxFinished = false;
    return 0;
}


void RadioHackRF::initialize(){
    std::vector<std::string> modules;
    modules.push_back("000000000000000026b468dc33776d8f");
    modules.push_back("000000000000000075b068dc317bae07");

    int result;
    const char* serial_number = NULL;
    result = hackrf_init();
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_init() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    for(uint32_t n = 0; n < modules.size(); n += 1)
    {
        result = hackrf_open_by_serial(modules.at(n).c_str(), &device);
        if( result == HACKRF_SUCCESS ) break;
    }

    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_open() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    fprintf(stderr, "call hackrf_set_hw_sync_mode(%d)\n", 0);
    result = hackrf_set_hw_sync_mode(device, 0 ? HW_SYNC_MODE_ON : HW_SYNC_MODE_OFF);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_hw_sync_mode() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    set_freq          ( freq_hz );
    set_sample_rate   ( fech_hz );
    set_amp_enable    (   false );
    set_antenna_enable(   false );
    set_vga_gain      (      20 );
    set_lna_gain      (       8 );
}

void RadioHackRF::set_freq(double value)
{
    freq_hz = value;
    fprintf(stderr, "call hackrf_set_freq(%f Hz/%.03f MHz)\n", freq_hz, ((double)freq_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_freq(device, freq_hz);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_freq() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


double RadioHackRF::get_freq( )
{
    return freq_hz;
}


void RadioHackRF::set_sample_rate(double value)
{
    fech_hz = value;
    fprintf(stderr, "call hackrf_set_sample_rate(%f Hz/%.03f MHz)\n", fech_hz, ((double)fech_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_sample_rate(device, fe);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_sample_rate() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }    
}


double RadioHackRF::get_sample_rate( )
{
    return fech_hz;
}


void RadioHackRF::set_amp_enable(bool value)
{
    fprintf(stderr, "call hackrf_set_amp_enable(%u => %u)\n", amplifier, value);
    amplifier = value;
    int32_t result = hackrf_set_amp_enable(device, (uint8_t)amplifier);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_amp_enable() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


bool RadioHackRF::get_amp_enable( )
{
    return amplifier;
}


void RadioHackRF::set_antenna_enable(bool value)
{
    fprintf(stderr, "call hackrf_set_antenna_enable(%u => %u)\n", antenna, value);
    antenna = value;
    int32_t result = hackrf_set_antenna_enable(device, (uint8_t)antenna);
    if (result != HACKRF_SUCCESS) {
        fprintf(stderr, "hackrf_set_antenna_enable() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


bool RadioHackRF::get_antenna_enable( )
{
    return antenna;
}

// vgain=<x>       VGA gain in dB. Valid values are: 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, list. list lists valid values and exits. (default 22)

void RadioHackRF::set_vga_gain(uint32_t value)
{
    fprintf(stderr, "call hackrf_set_vga_gain(%u => %u)\n", vga_gain, value);
    assert( value   >=  0 );
    assert( value   <= 62 );
    assert( value%2 == 0 );

    vga_gain = value;
    int32_t result  = hackrf_set_vga_gain(device, vga_gain);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_vga_gain() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


uint32_t RadioHackRF::get_vga_gain( )
{
    return vga_gain;
}

//  lgain=<x>      (Rx only) LNA gain in dB. Valid values are: 0, 8, 16, 24, 32, 40, list. list lists valid values and exits. (default 16)

void RadioHackRF::set_lna_gain(uint32_t value)
{
    fprintf(stderr, "call hackrf_set_lna_gain(%u => %u)\n", lna_gain, value);
    assert( value   >=  0 );
    assert( value   <= 40 );
    assert( value%8 ==  0 );

    lna_gain = value;
    int32_t result = hackrf_set_lna_gain(device, lna_gain);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_lna_gain() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}

uint32_t RadioHackRF::get_lna_gain( )
{
    return lna_gain;
}



void RadioHackRF::reception( std::vector< std::complex<float> >& cbuffer)
{
    byte_received = 0;
    rxFinished    = false;

    int result = hackrf_start_rx(device, rx_callback, (void *)this);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_start_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    while( (hackrf_is_streaming(device) != HACKRF_TRUE) )
    {
        usleep(1000); // queue empty
    }

    while(rxFinished == false)
    {
        usleep(1000); // queue empty
    }

    result = hackrf_stop_rx(device);
    if( result != HACKRF_SUCCESS )
    {
        fprintf(stderr, "hackrf_stop_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    if( cbuffer.size() != (N/2) ) // Nombre de symbols et non d'echantillons
    {
        cbuffer.resize(N/2);
    }

    for(uint32_t i = 0; i < N; i += 2)
    {
        std::complex<float> value( (float)buffer[i], (float)buffer[i+1] );
        cbuffer[i/2] = value;
    }
}

void RadioHackRF::set_nb_samples(uint32_t value)
{
    fprintf(stderr, "call RadioHackRF::set_nb_samples(%u)\n", value);
    nEchantillons = 2 * value;                                          // 2x car voie I et Q
    const uint32_t symbols = (nEchantillons + 262144 - 1) / 262144;     // nombre de paquets de 256k
    N                      = 262144 * symbols;                          // taille du buffer
    delete[] buffer;
    buffer     = new int8_t[N];
    fprintf(stderr, "----    nEchantillons (%u)\n", value);
    fprintf(stderr, "---- 2x nEchantillons (%u)\n", nEchantillons);
    fprintf(stderr, "---- symbols (%u)\n", symbols);
    fprintf(stderr, "---- N (%u)\n", N);
}

uint32_t RadioHackRF::get_nb_samples( )
{
    return nEchantillons/2;
}

void RadioHackRF::reception(std::vector<int16_t>& I, std::vector<int16_t>& Q)
{
    byte_received = 0;
    rxFinished    = false;

    int result = hackrf_start_rx(device, rx_callback, (void *)this);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_start_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    while( (hackrf_is_streaming(device) != HACKRF_TRUE) )
    {
        usleep(1000); // queue empty
    }

    while(rxFinished == false)
    {
        usleep(1000); // queue empty
    }

    result = hackrf_stop_rx(device);
    if( result != HACKRF_SUCCESS )
    {
        fprintf(stderr, "hackrf_stop_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    if( I.size() != nEchantillons ) I.resize(nEchantillons);
    if( Q.size() != nEchantillons ) Q.resize(nEchantillons);

    const uint32_t taille = 2 * nEchantillons;
    for(uint32_t i = 0; i < taille; i += 2)
    {
        I[i/2] = buffer[i  ];
        Q[i/2] = buffer[i+1];
    }
}

void RadioHackRF::reset()
{
    fprintf(stderr, "RadioHackRF::reset() not implemented yet !\n");
    exit( -1 );
}
