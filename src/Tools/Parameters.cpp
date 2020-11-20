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

#include "Parameters.hpp"

Parameters::Parameters() : liste(){
	locked = false;
}

Parameters::~Parameters(){

}

string Parameters::param(const string p){
	string r = liste[p];
	if( r == "" )
    	cout << "GET Parameters[" << p << "] = " << r << endl;
	assert( r != "" );
	return r;
}

void Parameters::set(const string p, const string v){
	assert( locked == false );
	liste[p] = v;
}

void Parameters::set(const string p, const int v){
	string w = to_string(v);
	set(p, w);
//	cout << "SET Parameters[" << p << "] = " << w << " (" << liste[p] << ")" << endl;
}

void Parameters::set(const string p, const unsigned int v){
	set(p, to_string(v));
}

void Parameters::set(const string p, const double v){
	set(p, to_string(v));
}

void Parameters::set(const string p, const float v){
	set(p, to_string(v));
}
/*
void Parameters::set(const string p, const bool v)
{
	string w = v ? "true" : "false";
	set(p, w);
	
	if (v == true) {
		set(p, 1);
	} else {
		set(p, 0);
	}

*/
bool Parameters::exist(const string p){
	string r = liste[p];
	return (r != "");
}

string Parameters::toString(const string p){
	return param(p);
}

int Parameters::toInt(const string p){
    string w = param(p);
    return std::stoi( w );
}

long Parameters::toLong(const string p){
	return std::stol( param(p) );
}

float Parameters::toFloat(const string p){
	return std::stof( param(p) );
}

double Parameters::toDouble(const string p){
	return std::stod( param(p) );
}

bool Parameters::toBool(const string p){
	return toInt( p );
}
