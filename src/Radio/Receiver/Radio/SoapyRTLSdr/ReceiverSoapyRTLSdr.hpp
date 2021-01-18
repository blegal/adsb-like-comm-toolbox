#ifndef _SoapyRTLSdr_
#define _SoapyRTLSdr_

#include "../../Receiver.hpp"
#include <SoapySDR/Device.hpp>
#include <SoapySDR/Types.hpp>
#include <SoapySDR/Formats.hpp>

class SoapyRTLSdr : public Receiver{
private :
    SoapySDR::Device *sdr;
    SoapySDR::Stream *rx_stream;

public :
    SoapyRTLSdr( float s_fc, float s_fe);
    ~SoapyRTLSdr();

    void initialize();
    void start_engine();
    void stop_engine ();

    void reception(vector<complex<float> >& cbuffer, const uint32_t coverage = 0);

    void reset();

    void   set_freq(const double value);
    double get_freq( );

    void   set_sample_rate(const double value);
    double get_sample_rate( );

    void   set_tuner_gain(const double value);
    double get_tuner_gain( );
};

#endif