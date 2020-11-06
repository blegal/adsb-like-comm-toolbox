#include "RadioEmitterHackRF.hpp"
#include <unistd.h>

typedef enum {
    HW_SYNC_MODE_OFF = 0,
    HW_SYNC_MODE_ON = 1,
} hw_sync_mode_t;


#define FREQ_ONE_MHZ (1000000ll)

RadioEmitterHackRF::RadioEmitterHackRF(float s_fc, float s_fe) : Radio(s_fc, s_fe)
{
    freq_hz   = s_fc;
    fech_hz   = s_fe;
    amplifier = false;
    antenna   = false;
    txvga_gain  = 32;

    //
    // On veut une seconde de signal pour ne rien rater...
    //
    nEchantillons          = (2 * s_fe);
    const uint32_t symbols = (nEchantillons + 262144 - 1) / 262144;
    N                      = 262144 * symbols;
    txFinished    = false;
    byte_emitted  = 0;
    byte_to_send  = 0;
    buffer        = new int8_t[N];
}

RadioEmitterHackRF::~RadioEmitterHackRF()
{
    hackrf_close( device );
    delete[] buffer;
}


int RadioEmitterHackRF::tx_callback(hackrf_transfer* transfer)
{
    RadioEmitterHackRF *obj = (RadioEmitterHackRF*) transfer->tx_ctx;
    return obj->tx_callback(transfer->buffer, transfer->valid_length);
}


int RadioEmitterHackRF::tx_callback(unsigned char *buf, uint32_t len)
{
    const std::lock_guard<std::mutex> lock(g_i_mutex);
    //
    // On efface le buffer car on a rien a emmettre
    //
    if( txFinished == true )
    {
        memset(buf, 0, len);
        return 0;
    }

    const uint32_t waiting  = byte_to_send - byte_emitted;       // nombre de données en attente de transfert
    const uint32_t to_send  = (waiting <= len) ? waiting : len;  // nombre de données que l'on peut envoyer sur ce time slot
    const uint32_t to_clear = len - to_send;                     // nombre de données que l'on ne possede pas... 

    printf(" - waiting  = %d\n", waiting);
    printf(" - to_send  = %d\n", to_send);
    printf(" - to_clear = %d\n", to_clear);

    memcpy(buf,           buffer + byte_emitted, to_send); // 
    memset(buf + to_send, 0,                   to_clear); //

    if( to_clear != 0 )
    {
        printf(" transfer is finished = %d\n", to_send);
        txFinished = true;
    }
    else{
        printf(" transfer is pending = %d\n", to_send);
        txFinished    = false;
        byte_emitted += to_send;                                   // on met à jour le nombre de données émises
    }


    return 0;
}


void RadioEmitterHackRF::initialize()
{
    std::vector<std::string> modules;
    modules.push_back("000000000000000075b068dc317bae07");
    modules.push_back("000000000000000026b468dc33776d8f");

    int result;
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
    set_txvga_gain    (      32 );
}


void RadioEmitterHackRF::set_freq(double value)
{
    freq_hz = value;
    fprintf(stderr, "call hackrf_set_freq(%f Hz/%.03f MHz)\n", freq_hz, ((double)freq_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_freq(device, freq_hz);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_freq() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


double RadioEmitterHackRF::get_freq( )
{
    return freq_hz;
}


void RadioEmitterHackRF::set_sample_rate(double value)
{
    fech_hz = value;
    fprintf(stderr, "call hackrf_set_sample_rate(%f Hz/%.03f MHz)\n", fech_hz, ((double)fech_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_sample_rate(device, fe);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_sample_rate() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }    
}


double RadioEmitterHackRF::get_sample_rate( )
{
    return fech_hz;
}


void RadioEmitterHackRF::set_amp_enable(bool value)
{
    fprintf(stderr, "call hackrf_set_amp_enable(%u => %u)\n", amplifier, value);
    amplifier = value;
    int32_t result = hackrf_set_amp_enable(device, (uint8_t)amplifier);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_amp_enable() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


bool RadioEmitterHackRF::get_amp_enable( )
{
    return amplifier;
}


void RadioEmitterHackRF::set_antenna_enable(bool value)
{
    fprintf(stderr, "call hackrf_set_antenna_enable(%u => %u)\n", antenna, value);
    antenna = value;
    int32_t result = hackrf_set_antenna_enable(device, (uint8_t)antenna);
    if (result != HACKRF_SUCCESS) {
        fprintf(stderr, "hackrf_set_antenna_enable() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


bool RadioEmitterHackRF::get_antenna_enable( )
{
    return antenna;
}


void RadioEmitterHackRF::inc_txvga_gain()
{
    const int32_t  value = get_txvga_gain() + 1;
    const int32_t nvalue = (value > 47) ? 47 : value;
    set_txvga_gain( nvalue );
}

void RadioEmitterHackRF::dec_txvga_gain()
{
    const int32_t  value = get_txvga_gain() - 1;
    const int32_t nvalue = (value < 0) ? 0 : value;
    set_txvga_gain( nvalue );
}

void RadioEmitterHackRF::set_txvga_gain(uint32_t value)
{
    fprintf(stderr, "call hackrf_set_txvga_gain(%u => %u)\n", txvga_gain, value);
    assert( value   >=  0 );
    assert( value   <= 47 );

    txvga_gain = value;
    int32_t result  = hackrf_set_txvga_gain(device, txvga_gain);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_txvga_gain() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


uint32_t RadioEmitterHackRF::get_txvga_gain( )
{
    return txvga_gain;
}

void RadioEmitterHackRF::start_engine( )
{
    fprintf(stderr, "(II) RadioEmitterHackRF::start_engine() is executed...\n");
    const std::lock_guard<std::mutex> lock(g_i_mutex);

    txFinished    = true;
    byte_emitted  = 0;
    byte_to_send  = 0;

    const int result = hackrf_start_tx(device, tx_callback, (void *)this);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_start_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}

void RadioEmitterHackRF::stop_engine( )
{
    fprintf(stderr, "(II) RadioEmitterHackRF::stop_engine() is executed...\n");
    while(txFinished == false)
    {
        usleep(1000); // queue empty
    }

    const int result = hackrf_stop_tx(device);
    if( result != HACKRF_SUCCESS )
    {
        fprintf(stderr, "hackrf_stop_tx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}

void RadioEmitterHackRF::emission( std::vector<int8_t>& cbuffer )
{
    if( hackrf_is_streaming(device) != HACKRF_TRUE )
    {
        printf("(EE) The hackrf device is currently stopped, it is impossible to transfer data...\n");
        exit( -1 );
    }

    byte_emitted = 0;
    byte_to_send = cbuffer.size();
    memcpy(buffer, cbuffer.data(), byte_to_send);

    txFinished   = false;   // On debloque le processus de transmission

//    int result = hackrf_start_tx(device, tx_callback, (void *)this);
//    if( result != HACKRF_SUCCESS ) {
//        fprintf(stderr, "hackrf_start_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
//        exit( -1 );
//    }

    while(txFinished == false)
    {
        usleep(1000); // queue empty
    }

//    result = hackrf_stop_tx(device);
//    if( result != HACKRF_SUCCESS )
//    {
//        fprintf(stderr, "hackrf_stop_tx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
//        exit( -1 );
//    }
}

void RadioEmitterHackRF::set_nb_samples(uint32_t value)
{
    fprintf(stderr, "call RadioEmitterHackRF::set_nb_samples(%u)\n", value);
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

uint32_t RadioEmitterHackRF::get_nb_samples( )
{
    return nEchantillons/2;
}


void RadioEmitterHackRF::reception( std::vector< std::complex<float> >& cbuffer)
{

}


void RadioEmitterHackRF::close()
{

}


void RadioEmitterHackRF::reset()
{
    fprintf(stderr, "RadioEmitterHackRF::reset() not implemented yet !\n");
    exit( -1 );
}
