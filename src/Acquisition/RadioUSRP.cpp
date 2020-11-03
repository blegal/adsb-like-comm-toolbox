#include "RadioUSRP.hpp"

RadioUSRP::RadioUSRP(float s_fc, float s_fe) : Radio(s_fc, s_fe)
{
    fc = s_fc;
    fe = s_fe;
    N = 200000; //N = 200000 => 50 ms
}

RadioUSRP::~RadioUSRP()
{

}

void RadioUSRP::initialize(){
	printf("%s",KYEL);

    string usrp_addr("type=b100");           // L'adresse de l'USRP est écrite en dur pour l'instant
	usrp = uhd::usrp::multi_usrp::make(usrp_addr); // Initialisation de l'USRP

	usrp->set_rx_rate(fe);                         // Set de la fréquence d'échantillonnage
	usrp->set_rx_freq(fc);                         // Set de la fréquence porteuse
	//usrp->set_rx_subdev_spec(uhd::usrp::subdev_spec_t("AB:0"));
	usrp->set_rx_antenna("RX2");

	uhd::stream_args_t
	stream_args("fc32");        // Type des données à échantillonner (ici complexes float 64 - 32 bits par voie)
	rx_stream = usrp->get_rx_stream(stream_args); // Pointeur sur les data reçues

	cout << " " << string(50, '-') << endl;
	usrp->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);

	cout << " Sampling Rate set to     : " << usrp->get_rx_rate() << endl;
	cout << " Central Frequency set to : " << usrp->get_rx_freq() << endl;
	cout << " " << string(50, '-') << endl;

	printf("%s", KNRM);
}

void RadioUSRP::reception(vector<complex<float> >& buffer)
{
    uhd::rx_metadata_t md;                     // Des metadata
    int num_rx_samps = 0;                     // Nombre d'echantillons reçus

    while (num_rx_samps < buffer.size())
        num_rx_samps += rx_stream->recv(&buffer.at(num_rx_samps), N - num_rx_samps, md);
}

void RadioUSRP::reset(){
    usrp->issue_stream_cmd(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);
	rx_stream.reset();
	usrp.reset();
}
