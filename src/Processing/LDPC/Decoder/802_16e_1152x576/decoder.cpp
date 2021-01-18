#include "802_16e_1152x576_1f_m256i.cpp"

extern "C" GenDecoder* make_MS_fixed_avx()
{
	return new LDPC_decoder_802_16e_1152x576<MS>();
}

extern "C" GenDecoder* make_OMS_fixed_avx(const unsigned char offset)
{
	LDPC_decoder_802_16e_1152x576<OMS>* dec = new LDPC_decoder_802_16e_1152x576<OMS>();
	dec->setOffset( offset );
	return dec;
}

extern "C" GenDecoder* make_NMS_fixed_avx(const unsigned char factor)
{
	LDPC_decoder_802_16e_1152x576<NMS>* dec = new LDPC_decoder_802_16e_1152x576<NMS>();
	dec->setFactor( factor );
	std::cout << "Error, this one can't be used yet\n";
	exit(0);
	return dec;
}

extern "C" GenDecoder* make_2NMS_fixed_avx(const unsigned char f1, const unsigned char f2)
{
	LDPC_decoder_802_16e_1152x576<NMS2>* dec = new LDPC_decoder_802_16e_1152x576<NMS2>();
	dec->setFactor( f1, f2 );
	std::cout << "Error, this one can't be used yet\n";
	exit(0);
	return dec;
}
