
/*
 *  main.cpp
 *	Mandelbrot Fractal Explorer Project - Copyright (c) 2012 Lucas Soltic
 *
 *  This software is provided 'as-is', without any express or
 *  implied warranty. In no event will the authors be held
 *  liable for any damages arising from the use of this software.
 *
 *  Permission is granted to anyone to use this software for any purpose,
 *  including commercial applications, and to alter it and redistribute
 *  it freely, subject to the following restrictions:
 *
 *  1. The origin of this software must not be misrepresented;
 *  you must not claim that you wrote the original software.
 *  If you use this software in a product, an acknowledgment
 *  in the product documentation would be appreciated but
 *  is not required.
 *
 *  2. Altered source versions must be plainly marked as such,
 *  and must not be misrepresented as being the original software.
 *
 *  3. This notice may not be removed or altered from any
 *  source distribution.
 *
 */

#ifndef _802_16e_1152x576_
#define _802_16e_1152x576_

#include "../api/GenDecoderIntraAPI.hpp"

class LDPC_decoder_802_16e_1152x576 : public GenDecoderIntraAPI<__m256i>{
public:
	LDPC_decoder_802_16e_1152x576();
	virtual ~LDPC_decoder_802_16e_1152x576();

	bool decode(const int8_t llrs[], uint8_t dbits[]);

	virtual unsigned int n();
	virtual unsigned int k();
	virtual unsigned int msgs();

	virtual unsigned int frames();
	virtual unsigned int simd();

	virtual std::string date();
	virtual std::string time();

	virtual void setOffset(unsigned char offset);
	virtual void setFactor(unsigned char factor);
	virtual void setFactor(unsigned char f1, unsigned char f2);

	virtual unsigned char getParam1();
	virtual unsigned char getParam2();
};

#endif
