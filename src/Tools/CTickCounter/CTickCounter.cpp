/**
  Copyright (c) 2012-2017 "Bordeaux INP, Bertrand LE GAL"
  [http://legal.vvv.enseirb-matmeca.fr]

  This file is part of LDPC_C_Simulator.

  LDPC_C_Simulator is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "CTickCounter.hpp"

CTickCounter::CTickCounter(){
    c_data_loading  = 0;
    c_conversion      = 0;
    c_decoding     = 0;
    c_detection = 0;

    t_data_loading  = 0;
    t_conversion      = 0;
    t_decoding     = 0;
    t_detection = 0;

    t_curr_timer    = 0;
}

uint64_t CTickCounter::rdtsc() {
#ifdef __AVX2__
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t) hi << 32) | lo;
#else
    return 1;
#endif
}

void CTickCounter::start_loading(){
    t_curr_timer = rdtsc();
}

void CTickCounter::stop_loading(){
    t_data_loading += rdtsc() - t_curr_timer;
    c_data_loading += 1;
}

void CTickCounter::start_conversion(){
    t_curr_timer = rdtsc();
}

void CTickCounter::stop_conversion(){
    t_conversion += rdtsc() - t_curr_timer;
    c_conversion += 1;
}

void CTickCounter::start_decoding(){
    t_curr_timer = rdtsc();
}

void CTickCounter::stop_decoding(){
    t_decoding += rdtsc() - t_curr_timer;
    c_decoding += 1;
}

void CTickCounter::start_detection(){
    t_curr_timer = rdtsc();
}

void CTickCounter::stop_detection(){
    t_detection += rdtsc() - t_curr_timer;
    c_detection += 1;
}


uint32_t CTickCounter::loading(){
    if( c_data_loading == 0 ) return 0;
    return t_data_loading / c_data_loading;
}

uint32_t CTickCounter::conversion(){
    if( c_conversion == 0 ) return 0;
    return t_conversion / c_conversion;
}

uint32_t CTickCounter::decoding(){
    if( c_decoding == 0 ) return 0;
    return t_decoding / c_decoding;
}

uint32_t CTickCounter::detection(){
    if( c_detection == 0 ) return 0;
    return t_detection / c_detection;
}

uint32_t CTickCounter::total(){
    return 0;
}
