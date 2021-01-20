//
// Created by alexis on 25/07/17.
//

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

#ifndef SHARED_LIB_GENDECODER_H
#define SHARED_LIB_GENDECODER_H

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <cstring>
#include <cassert>
#include <fstream>
#include <iostream>
#include <algorithm>

class GenDecoder
{
public:

public:
	GenDecoder();
	virtual ~GenDecoder();
	
	virtual bool decode(const int8_t llrs[], uint8_t dbits[]) = 0;
	
	virtual unsigned int n()    = 0;
	virtual unsigned int k()    = 0;
	virtual unsigned int msgs() = 0;

	virtual unsigned int frames() = 0;
	virtual unsigned int simd()   = 0;
};

/*
GenDecoder::GenDecoder()
{
	s_criterion = false;
	nIters          = 10;
	execIters       = 0;
}


GenDecoder::~GenDecoder()
{

}
 */

#endif //SHARED_LIB_GENDECODER_H
