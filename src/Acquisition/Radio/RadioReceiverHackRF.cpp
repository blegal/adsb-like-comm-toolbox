#include "RadioReceiverHackRF.hpp"
#include <unistd.h>

typedef enum {
    HW_SYNC_MODE_OFF = 0,
    HW_SYNC_MODE_ON = 1,
} hw_sync_mode_t;


#define FREQ_ONE_MHZ (1000000ll)

RadioReceiverHackRF::RadioReceiverHackRF(float s_fc, float s_fe) : Radio(s_fc, s_fe)
{
    freq_hz   = s_fc;
    fech_hz   = s_fe;
    amplifier = false;
    antenna   = false;
    vga_gain  = 30;    // 40; : validated values for adsb-like comm.
    lna_gain  = 16;    // 32; : validated values for adsb-like comm.

    //
    // On veut une seconde de signal pour ne rien rater...
    //
    nEchantillons          = (2 * s_fe);
    const uint32_t symbols = (nEchantillons + 262144 - 1) / 262144;
    const uint32_t N       = (262144 * symbols);

    buffer        = new int8_t[N];  // le buffer
    ptr_read      = 0;              // la position du pointeur de lecture
    ptr_write     = 0;              // la position du pointeur d'ecriture
    buff_length   = N;              // la taille du buffer circulaire
}

RadioReceiverHackRF::~RadioReceiverHackRF()
{
    hackrf_close( device );
    delete[] buffer;
}


int RadioReceiverHackRF::rx_callback(hackrf_transfer* transfer)
{
    RadioReceiverHackRF *obj = (RadioReceiverHackRF*) transfer->rx_ctx;
    return obj->rx_callback(transfer->buffer, transfer->valid_length);
}


int RadioReceiverHackRF::rx_callback(unsigned char *buf, uint32_t len)
{
    const uint32_t start = ptr_write;
    const uint32_t stop  = ptr_write + len;

    if( stop >= buff_length )
    {
        const uint32_t to_end     = buff_length - start;
        const uint32_t from_begin = len - to_end;
        memcpy(buffer +  ptr_write, buf, to_end);
        memcpy(buffer, buf + to_end, from_begin);
        ptr_write = from_begin;
    }
    else
    {
        memcpy(buffer +  ptr_write, buf, len);
        ptr_write += len;
    }

    return 0;
}


void RadioReceiverHackRF::initialize(){
    std::vector<std::string> modules;
    modules.push_back("000000000000000026b468dc33776d8f");
    modules.push_back("000000000000000075b068dc317bae07");

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

    result = hackrf_set_hw_sync_mode(device, 0 ? HW_SYNC_MODE_ON : HW_SYNC_MODE_OFF);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_hw_sync_mode() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    set_freq          ( freq_hz   );
    set_sample_rate   ( fech_hz   );
    set_amp_enable    ( amplifier );
    set_antenna_enable( antenna   );
    set_vga_gain      ( vga_gain  );
    set_lna_gain      ( lna_gain  );
}

void RadioReceiverHackRF::set_freq(double value)
{
    freq_hz = value;
    fprintf(stderr, "call hackrf_set_freq(%f Hz/%.03f MHz)\n", freq_hz, ((double)freq_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_freq(device, freq_hz);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_freq() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


double RadioReceiverHackRF::get_freq( )
{
    return freq_hz;
}


void RadioReceiverHackRF::set_sample_rate(double value)
{
    fech_hz = value;
    fprintf(stderr, "call hackrf_set_sample_rate(%f Hz/%.03f MHz)\n", fech_hz, ((double)fech_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_sample_rate(device, fe);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_sample_rate() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }    
}


double RadioReceiverHackRF::get_sample_rate( )
{
    return fech_hz;
}


void RadioReceiverHackRF::set_amp_enable(bool value)
{
    fprintf(stderr, "call hackrf_set_amp_enable(%u => %u)\n", amplifier, value);
    amplifier = value;
    const uint8_t control = amplifier ? 14 : 0;                         // Pour activer l'amplificateur la valeur a fournir
    int32_t result = hackrf_set_amp_enable(device, (uint8_t)control);   // doit etre 14, 0 sinon...
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_amp_enable() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


bool RadioReceiverHackRF::get_amp_enable( )
{
    return amplifier;
}


void RadioReceiverHackRF::set_antenna_enable(bool value)
{
    fprintf(stderr, "call hackrf_set_antenna_enable(%u => %u)\n", antenna, value);
    antenna = value;
    int32_t result = hackrf_set_antenna_enable(device, (uint8_t)antenna);
    if (result != HACKRF_SUCCESS) {
        fprintf(stderr, "hackrf_set_antenna_enable() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


bool RadioReceiverHackRF::get_antenna_enable( )
{
    return antenna;
}


void RadioReceiverHackRF::set_vga_gain(uint32_t value)
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


uint32_t RadioReceiverHackRF::get_vga_gain( )
{
    return vga_gain;
}


void RadioReceiverHackRF::set_lna_gain(uint32_t value)
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

uint32_t RadioReceiverHackRF::get_lna_gain( )
{
    return lna_gain;
}


void RadioReceiverHackRF::start_engine()
{
    int result = hackrf_start_rx(device, rx_callback, (void *)this);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_start_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


void RadioReceiverHackRF::stop_engine()
{
    int result = hackrf_stop_rx(device);
    if( result != HACKRF_SUCCESS )
    {
        fprintf(stderr, "hackrf_stop_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


uint32_t RadioReceiverHackRF::count_samples()
{
    //
    // Cas de figure normal
    //
    if( ptr_read < ptr_write )
    {
        return (ptr_write - ptr_read);
    }
    //
    // Cas de figure ou le ptr_write a bouclé alors que le ptr_read non...
    //
    else if( ptr_read > ptr_write )
    {
        return (N + (ptr_write - ptr_read));
    }
    //
    // Si les ptrs sont identiques alors on a pas de données disponibles
    //
    else
    {
        return 0;
    }
}


void RadioReceiverHackRF::reception(std::vector< std::complex<float> >& cbuffer)
{
    const uint32_t toRead = 2 * cbuffer.size(); // le buffer parle en bytes (et non en nombre de couples I/Q)

    //
    // On verifie que l'on peut bien delivrer les données
    //
    if( toRead < N )    // N : est exrimé en nombre de bytes (et non en nombre de couples I/Q)
    {
        fprintf(stderr, "RadioReceiverHackRF::reception() failed: the number of data to read is higher than buffer size (%d)\n", toRead);
        exit( -1 );
    }

    //
    // On se met en attente du bon nombre de données
    //
    while(count_samples() > toRead)     // les 2 sont exprimés en nombre de samples
    {
        usleep(10000); // queue empty
    }

    const uint32_t start = ptr_read;            // point de depart de la lecture
    const uint32_t stop  = ptr_read + toRead;   // point d'arrivé de la lecture

    if( stop >= buff_length )
    {
        //
        // On transmet lar partie 1 du stream de donnée
        //
#if 0
        const uint32_t to_end     = buff_length - start;
        const uint32_t from_begin = len - to_end;
        memcpy(buffer +  ptr_write, buf, to_end);
        memcpy(buffer, buf + to_end, from_begin);
        ptr_write = from_begin;
        //
        // On transmet lar partie 1 du stream de donnée
        //
        const uint32_t to_end     = buff_length - start;
        const uint32_t from_begin = len - to_end;
        memcpy(buffer +  ptr_write, buf, to_end);
        memcpy(buffer, buf + to_end, from_begin);
        ptr_write = from_begin;
#endif
    }
    else
    {
        //
        // On transmet un stream de donnée en une seule fois ;-)
        //
        const int8_t* ptr = (buffer + start);
        for(uint32_t i = 0; i < toRead; i += 2)
        {
            std::complex<float> value( (float)ptr[i], (float)ptr[i+1] );
            cbuffer[i/2] = value;
        }
        ptr_read += toRead;       // On deplace le pointeur de lecture
        ptr_read %= buff_length;  // On fait une coup de modulo pour reboucler au cas ou...
    }
}


void RadioReceiverHackRF::set_nb_samples(uint32_t value)
{
    fprintf(stderr, "call RadioReceiverHackRF::set_nb_samples(%u)\n", value);
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

uint32_t RadioReceiverHackRF::get_nb_samples( )
{
    return nEchantillons/2;
}

#if 0
void RadioReceiverHackRF::reception(std::vector<int16_t>& I, std::vector<int16_t>& Q)
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
#endif

void RadioReceiverHackRF::reset()
{
    fprintf(stderr, "RadioReceiverHackRF::reset() not implemented yet !\n");
    exit( -1 );
}
