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

#ifndef CLASS_Parameters
#define CLASS_Parameters

#include <iostream>
#include <cstdlib>
#include <cassert>
#include <vector>
#include <map>

using namespace std;

class Parameters{
	bool locked;
	map<string, string> liste;

public:
    Parameters();
	~Parameters();

protected:
	string param(const string p);

public:
	void set(const string p, const string       v);
	void set(const string p, const int          v);
	void set(const string p, const unsigned int v);
	void set(const string p, const double       v);
	void set(const string p, const float        v);
//	void set(const string p, const bool         v);

    bool exist(const string p);

    string toString(const string p);
    int    toInt   (const string p);
    long   toLong  (const string p);
    float  toFloat (const string p);
    double toDouble(const string p);
    bool   toBool  (const string p);
};

#endif // CLASS_CTools
