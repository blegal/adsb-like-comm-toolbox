#include "ReceiverHackRF.hpp"
#include <unistd.h>

typedef enum {
    HW_SYNC_MODE_OFF = 0,
    HW_SYNC_MODE_ON = 1,
} hw_sync_mode_t;


#define FREQ_ONE_MHZ (1000000ll)

ReceiverHackRF::ReceiverHackRF(float s_fc, float s_fe) : Radio(s_fc, s_fe), buff( 4 * s_fe )
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
//    nEchantillons          = (2 * s_fe);
//    const uint32_t symbols = (nEchantillons + 262144 - 1) / 262144;
//    const uint32_t N       = (262144 * symbols);

//    buffer        = new int8_t[N];  // le buffer
//    ptr_read      = 0;              // la position du pointeur de lecture
//    ptr_write     = 0;              // la position du pointeur d'ecriture
//    buff_length   = N;              // la taille du buffer circulaire
}

ReceiverHackRF::~ReceiverHackRF()
{
    hackrf_close( device );
//    delete[] buffer;
}


int ReceiverHackRF::rx_callback(hackrf_transfer* transfer)
{
    ReceiverHackRF *obj = (ReceiverHackRF*) transfer->rx_ctx;
    return obj->rx_callback(transfer->buffer, transfer->valid_length);
}


int ReceiverHackRF::rx_callback(unsigned char *buf, uint32_t len)
{
//    const uint32_t start = ptr_write;
//    const uint32_t stop  = ptr_write + len;

    const uint32_t to_receive = buff.NumFreeElements();
    if( to_receive < len )
    {
        printf("(EE) Buffer overflow during reception...\n");
        exit( -1 );
    }

    const uint32_t nWrite = buff.Write( (int8_t *)buf, len );
    if( nWrite != len )
    {
        printf("(EE) An error appear during the data writing in the buffer...\n");
        exit( -1 );
    }else{
//        printf("(II) Data were received (len = %d - buffer = %d)...\n", len, buff.NumElements());
    }

    return 0;
}


void ReceiverHackRF::initialize(){
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

void ReceiverHackRF::set_freq(double value)
{
    freq_hz = value;
    fprintf(stderr, "call hackrf_set_freq(%f Hz/%.03f MHz)\n", freq_hz, ((double)freq_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_freq(device, freq_hz);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_freq() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


double ReceiverHackRF::get_freq( )
{
    return freq_hz;
}


void ReceiverHackRF::set_sample_rate(double value)
{
    fech_hz = value;
    fprintf(stderr, "call hackrf_set_sample_rate(%f Hz/%.03f MHz)\n", fech_hz, ((double)fech_hz/(double)FREQ_ONE_MHZ) );
    int32_t result = hackrf_set_sample_rate(device, fe);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_set_sample_rate() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }    
}


double ReceiverHackRF::get_sample_rate( )
{
    return fech_hz;
}


void ReceiverHackRF::set_amp_enable(bool value)
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


bool ReceiverHackRF::get_amp_enable( )
{
    return amplifier;
}


void ReceiverHackRF::set_antenna_enable(bool value)
{
    fprintf(stderr, "call hackrf_set_antenna_enable(%u => %u)\n", antenna, value);
    antenna = value;
    int32_t result = hackrf_set_antenna_enable(device, (uint8_t)antenna);
    if (result != HACKRF_SUCCESS) {
        fprintf(stderr, "hackrf_set_antenna_enable() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


bool ReceiverHackRF::get_antenna_enable( )
{
    return antenna;
}


void ReceiverHackRF::set_vga_gain(uint32_t value)
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


uint32_t ReceiverHackRF::get_vga_gain( )
{
    return vga_gain;
}


void ReceiverHackRF::set_lna_gain(uint32_t value)
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

uint32_t ReceiverHackRF::get_lna_gain( )
{
    return lna_gain;
}


void ReceiverHackRF::start_engine()
{
    int result = hackrf_start_rx(device, rx_callback, (void *)this);
    if( result != HACKRF_SUCCESS ) {
        fprintf(stderr, "hackrf_start_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    result = hackrf_is_streaming(device);
    if( result != HACKRF_TRUE ) {
        fprintf(stderr, "hackrf_start_rx() failed to check hackrf_is_streaming status: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


void ReceiverHackRF::stop_engine()
{
    int result = hackrf_is_streaming(device);
    if( result != HACKRF_TRUE ) {
        fprintf(stderr, "hackrf_stop_rx() failed because device is not steraming: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }

    result = hackrf_stop_rx(device);
    if( result != HACKRF_SUCCESS )
    {
        fprintf(stderr, "hackrf_stop_rx() failed: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
}


void ReceiverHackRF::reception(std::vector< std::complex<float> >& cbuffer)
{
    int result = hackrf_is_streaming(device);
    if( result != HACKRF_TRUE ) {
        fprintf(stderr, "ReceiverHackRF::reception() failed because device is not steraming: %s (%d)\n", hackrf_error_name((hackrf_error)result), result);
        exit( -1 );
    }
    std::cout << "(II) ---- There exist " << buff.NumElements() << " bytes available" << std::endl;

    const uint32_t toRead = 2 * cbuffer.size(); // le buffer parle en bytes (et non en nombre de couples I/Q)
    //
    // On verifie que l'on peut bien delivrer les données
    //
    if( toRead > buff.Capacity() )    // N : est exrimé en nombre de bytes (et non en nombre de couples I/Q)
    {
        fprintf(stderr, "ReceiverHackRF::reception() failed: the number of data to read is higher than buffer size (%d)\n", toRead);
        exit( -1 );
    }

    //
    // On se met en attente du bon nombre de données
    //
//    std::cout << "(II) Before while(buff.NumElements() < toRead)" << std::endl;
    while(buff.NumElements() < toRead)     // les 2 sont exprimés en nombre de samples
    {
//        std::cout << "(II) --> waiting.. buff.NumElements() = " << buff.NumElements() << std::endl;
        usleep(1000); // queue empty
    }
//    std::cout << "(II) Before uint32_t nRead = buff.Read((uint8_t*)buf, toRead);" << std::endl;

    int8_t* buf = new int8_t[toRead];
    uint32_t nRead = buff.Read(buf, toRead);
    std::cout << "(II) --> reading.. nRead = " << nRead << " bytes" << std::endl;
    if( nRead != toRead )
    {
        fprintf(stderr, "ReceiverHackRF::reception() failed: the number of data to read is different than the resquest (%d)\n", toRead);
        exit( -1 );
    }

    for(uint32_t i = 0; i < toRead; i += 2)
    {
        std::complex<float> value( (float)buf[i], (float)buf[i+1] );
        cbuffer[i/2] = value;
    }
    delete[] buf;
}


void ReceiverHackRF::reset()
{
    fprintf(stderr, "ReceiverHackRF::reset() not implemented yet !\n");
    exit( -1 );
}
