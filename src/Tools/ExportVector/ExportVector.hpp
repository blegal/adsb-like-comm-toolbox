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

#ifndef _ExportVector_
#define _ExportVector_

#include <cstdio>
#include <iostream>
#include <fstream>
#include <vector>
#include <complex>

using namespace std;

#include <chrono>

class ExportVector
{
private:

public:
     ExportVector();
    ~ExportVector();

    static void SaveToCS8(std::vector<complex<float>>& dSet, std::string filename);
    static void SaveToS8  (std::vector<float>&          dSet, std::string filename);
    static void SaveToU8  (std::vector<float>&          dSet, std::string filename);
    static void SaveToS8(std::vector< int8_t>&        dSet, std::string filename);
    static void SaveToU8(std::vector<uint8_t>&        dSet, std::string filename);

    static void SaveVector(std::vector<float>&   abs, std::vector<uint8_t>& detec, std::string filename);
    static void SaveVector(std::vector<uint8_t>& abs, std::vector<uint8_t>& detec, std::string filename);

 };

#endif
