#include "ReceiverUSRP.hpp"

ReceiverUSRP::ReceiverUSRP(float s_fc, float s_fe) : Receiver(s_fc, s_fe)
{
    fc = s_fc;
    fe = s_fe;
    N = 200000; //N = 200000 => 50 ms
}

ReceiverUSRP::~ReceiverUSRP()
{
    usrp.reset();
}

void ReceiverUSRP::initialize(){
	printf("%s",KYEL);

    string usrp_addr("type=b100");           // L'adresse de l'USRP est écrite en dur pour l'instant
	usrp = uhd::usrp::multi_usrp::make(usrp_addr); // Initialisation de l'USRP

	usrp->set_rx_rate(fe);                         // Set de la fréquence d'échantillonnage
	usrp->set_rx_freq(fc);                         // Set de la fréquence porteuse
    usrp->set_rx_gain(20.0);

    //usrp->set_rx_subdev_spec(uhd::usrp::subdev_spec_t("AB:0"));
	usrp->set_rx_antenna("RX2");

	uhd::stream_args_t
	stream_args("fc32");        // Type des données à échantillonner (ici complexes float 64 - 32 bits par voie)
	rx_stream = usrp->get_rx_stream(stream_args); // Pointeur sur les data reçues

	cout << " " << string(50, '-') << endl;

	cout << " Sampling Rate set to     : " << usrp->get_rx_rate() << endl;
	cout << " Central Frequency set to : " << usrp->get_rx_freq() << endl;
	cout << " " << string(50, '-') << endl;

	printf("%s", KNRM);
}

void ReceiverUSRP::reception(vector<complex<float> >& buffer)
{
//    std::cout << "[ READING USRP SAMPLES ]" << std::endl;

    uhd::rx_metadata_t md;                     // Des metadata

    uint32_t num_rx_samps = 0;                     // Nombre d'echantillons reçus
    uint32_t nSamples     = buffer.size();
    while (num_rx_samps < nSamples )
    {
        num_rx_samps += rx_stream->recv(&buffer.at(num_rx_samps), nSamples - num_rx_samps, md);
    }
    for(int i = 0; i < nSamples; i += 1)
    {
        buffer[i] = buffer[i] * 127.0f;
    }
    //for(int i = 0; i < nSamples; i += 1)
    //{
    //    cout << i << " - " << buffer[i] << std::endl;
    //}
//  std::cout << "[ GOING BACK TO WORK ]" << std::endl;
}

void ReceiverUSRP::reset()
{
	usrp.reset();
}

void ReceiverUSRP::start_engine()
{
    std::cout << "[ STARTING USRP ]" << std::endl;
    usrp->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
}

void ReceiverUSRP::stop_engine()
{
    std::cout << "[ STOPPING USRP ]" << std::endl;
    usrp->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);
    rx_stream.reset();
}
