#ifndef _RadioUSRP_
#define _RadioUSRP_

#include "../Radio.hpp"
#include "../../couleur.h"

#include <uhd/usrp/multi_usrp.hpp>
#include <uhd.h>

class RadioUSRP : public Radio{
private :
	uhd::usrp::multi_usrp::sptr usrp;              // Le pointeur vers l'USRP
    uhd::rx_streamer::sptr rx_stream;

public :
    RadioUSRP( float s_fc, float s_fe);
	~RadioUSRP();
    void initialize();
    void reception(vector<complex<float> >& buffer);

    virtual void reset();
    virtual void start_engine();
    virtual void stop_engine ();
};

#endif