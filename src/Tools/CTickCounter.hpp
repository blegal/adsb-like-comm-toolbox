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

#ifndef _CTickCounter_
#define _CTickCounter_

#include <stdio.h>
#include <iostream>
#include <fstream>
using namespace std;

#include <chrono>

class CTickCounter
{
private:
    uint64_t c_data_loading;
    uint64_t c_conversion;
    uint64_t c_detection;
    uint64_t c_decoding;

    uint64_t t_data_loading;
    uint64_t t_conversion;
    uint64_t t_detection;
    uint64_t t_decoding;

    uint64_t t_curr_timer;

    uint64_t rdtsc();

public:
    CTickCounter();

    void start_loading();
    void stop_loading();

    void start_conversion();
    void stop_conversion();

    void start_decoding();
    void stop_decoding();

    void start_detection();
    void stop_detection();

    uint32_t loading   ();
    uint32_t conversion();
    uint32_t decoding ();
    uint32_t detection ();
    uint32_t total();
 };

#endif
