#ifndef AVION
#define AVION

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <math.h>

using namespace std;

class Avion{

private :
	int oaci;
	float latitude;
	float longitude;
	int altitude;
	int nom[8];
	float angle;
	float vit_hor;
	float vit_vert;

public :
	Avion(int oaci2);
	~Avion();
	int get_oaci();
	void set_altitude(int altitude2);
	void set_latitude(float latitude2);
	void set_longitude(float longitude2);
	void set_vit_vert(float vit);
	void set_vit_hor(float vit);
	void set_angle(float angle2);
	void set_nom(int* nom2);
	void print();

};

Avion::Avion(int oaci2){
	oaci      = oaci2;
	latitude  = -1;
	longitude = -1;
	altitude  = -1;
	vit_hor   = -1;
	vit_vert  = -1;
	angle     = -1;
	nom[0]    = '!';
}

Avion::~Avion(){}

int Avion::get_oaci(){
	return oaci;
}

void Avion::set_altitude(int altitude2){
	altitude = altitude2;
}

void Avion::set_vit_vert(float vit){
	vit_vert = vit;
}

void Avion::set_vit_hor(float vit){
	vit_hor = vit;
}

void Avion::set_angle(float angle2){
	angle = angle2;
}

void Avion::set_latitude(float latitude2){
	latitude = latitude2;
}
void Avion::set_longitude(float longitude2){
	longitude = longitude2;
}
void Avion::set_nom(int* nom2){
	for(int i=0; i<8; i++) *(nom+i) = *(nom2+i);
}
void Avion::print(){
	if(nom[0] == '!'){
		cout << "  XXXXXXX   ";
		printf(" %06X    ", oaci);
	}
	else {
		printf("  ");
		for(int i=7; i>0; i--) printf("%c",nom[i]);
		printf("   ");
		printf(" %06X    ", oaci);
	}

	if (altitude != -1) cout << altitude << " pieds	";
	else cout <<"\033[11C";
	if (latitude != -1) cout <<latitude << "		";
	else cout <<"\033[20C";
	if (longitude != -1) printf( "%*f	", 6, longitude);
	else cout <<"\033[20C";
	if (vit_hor != -1) cout << vit_hor << " km/h		";
	else cout <<"\033[25C";
	if (angle != -1) cout << angle << " °           ";
	else cout <<"\033[10C";
	if (vit_vert != -1) cout << vit_vert << " m/min       ";
	else cout << "\033[25C";
	if (latitude != -1 && longitude != -1){

		float a = cos((latitude + 44.806884)/2) * (longitude + 0.606629);
		float b = latitude - 44.806884;
		cout << 1.852*60*sqrt(a*a+b*b) << " km";
	} 
	cout << endl;
}

#endif 
