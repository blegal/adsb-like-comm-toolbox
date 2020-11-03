#ifndef DECODAGE
#define DECODAGE

#include <iostream>
#include <cstdio>
#include <cstdlib>

#include "liste_avion.h"
#include "couleur.h"

#define PI 3.14159265359

using namespace std;


/*   ============================== CPRNL =========================== */
int cprNL(float x){

	if (x == 0) return 59;
	else {
		if (x == 87) return 2;
		else {
			if (x < 0) x = -x;
			if ( x > 87) return 1;
			else {

				float c = cos(PI*x/180);

				int i = floor(2*PI/(acos(1-0.00547810463/(c*c)) ));

				return i;
			}
		}
	}
}


/*   ============================== LATITUDE =========================== */
float Latitude(int trame[120]){
	float latref = 44.806884;	//latitude de l'ENSEIRB
	float Dlat = 360/(4*15 - trame[39 + 22]);
	float lat = 0;
	int jlat = 0;
	int ref_Dlat = floor(latref/Dlat);
	for (int q=0; q < 17; q++){
		lat += trame[39 + 23 +q]*pow(2,16-q);
	}
	lat = lat/131072; // divise par 2^17
	jlat = ref_Dlat + floor(0.5 + latref/Dlat -ref_Dlat - lat);
	float latitude = Dlat*(jlat + lat);

	return latitude;
}


/*   ============================== LONGITUDE =========================== */
float Longitude(int trame[120], float latitude){
	float lonref = -0.606629;	//longitude de l'ENSEIRB
	//cout << "cprNL :" << cprNL(latitude) << endl;
	float Dlon;
	int tempNL = cprNL(latitude) - trame[39 + 22];
	if ( tempNL != 0) Dlon = 360/tempNL;
	else Dlon = 360;
	float lon = 0;
	int jlon = 0;
	int ref_Dlon = floor(lonref/Dlon);
	for (int q=0; q < 17; q++){
		lon += trame[39 + 40 +q]*pow(2,16-q);
	}
	lon = lon/131072;
	jlon = ref_Dlon + floor(0.5 + lonref/Dlon -ref_Dlon - lon);
	float longitude = Dlon*(jlon + lon);

	return longitude;
}


/*   ============================== CRC =========================== */
int CRC(int trame[120]){
				
	bitset<25> crc       = 0b0000000000000000000000000;
	bitset<25> polynome2 = 0b1111111111111010000001001;
	bitset<25> polynome  = 0b1001000000101111111111111;

	for(int q=8; q <33; q++){
		crc[q - 8] = trame[q];
	}

	for (int q=33; q < 120; q++){
		if ( crc[0] == 1){
			crc = crc xor polynome;
		}
		crc = crc >> 1;
		crc[24] = trame[q];
	}

	if ( crc[0] == 1){
		crc = crc xor polynome;	
	}
					
	if (crc == 0x00000000) return 1;
	else return 0;
}	


/*========================== DECODAGE ===========================*/
class Decodage{

private :
    int bonftc;
    int boncrc;
	int oaci;
	int ftc;
	int altitude;
	float latitude;
	float longitude;
    int nouvel;
	int caractere[8];

public :
	Decodage();
	~Decodage();
    void decodage(float s, int verbose, int aff_trame, int trame[120], Liste_Avion* liste_avion);
    int get_bonftc();
    int get_boncrc();
};

Decodage::Decodage(){
    bonftc = 0;
    boncrc = 0;
    ftc = 0;
    latitude = 0;
    longitude = 0;
    altitude = 0;
    nouvel = 0;
    oaci = 0;
}

Decodage::~Decodage(){}

int Decodage::get_bonftc(){
    return  bonftc;
}

int Decodage::get_boncrc(){
    return  boncrc;
}

void Decodage::decodage(float s, int verbose, int aff_trame, int trame[120], Liste_Avion* liste_avion){
	Avion *plane = new Avion(0);
    // -------------- on a une trame ads-b -----------------

#if 0
    for (int q=0; q < 120; q++){
        cout << trame[q] << ", ";
    }
    cout << endl;
    exit( 0 );
#endif

    // calcul @OACI
    for (int q=0; q < 24; q++){
        oaci += trame[16+q]*pow(2,23-q);		
    }
    //calcul CRC
    int crc = CRC(trame);
    if (aff_trame) {
        if (crc){
            printf("\n====== trame ADSB detectée ======\n");
            cout << "p.s :" << s << "    ";
            printf("OACI : %06X    ", oaci);
            cout << "CRC checked !" << "    ";
        } else if (verbose) {
            red("\n====== trame ADSB detectée ======\n");
            printf( "%sp.s. :%f    %s", KRED, s, KNRM);
            printf("%sOACI : %06X%s    ", KRED, oaci, KNRM);
            red("/!/ CRC non checked /!/\n");
            
        }
    }
    if (crc) {
        boncrc++;
        // ============== avion ======================
        nouvel = (*liste_avion).search(oaci);
        if (nouvel == -1) {
            plane = new Avion(oaci);
            if (aff_trame) cout << "NOUVEL AVION" << "    ";
        } else {
            if (aff_trame) cout << "                ";
            *plane = (*liste_avion).find(nouvel);
        }
        //calcul ftc
        for (int q=0; q < 5; q++){
            ftc += trame[40+q]*pow(2,4-q);
        }
        if(aff_trame) cout << "ftc :" << ftc << "    ";

        if ((ftc >0) && (ftc < 5)) {

            // =============== identification =====================
            if(aff_trame) cout << "---- identification ----"<< "   ";
    
            caractere[7] = 0;
            //caractere 1
            for (int q=0; q < 6; q++){
                    caractere[7] += trame[39 + 9 +q]*pow(2,5-q);
            }
            if (caractere[7] < 32) caractere[7] += 65 -1;

            //caractere 2
            caractere[6] = 0;
            for (int q=0; q < 6; q++){
                    caractere[6] += trame[39 + 15 +q]*pow(2,5-q);
            }
            if (caractere[6] < 32) caractere[6] +=  65 -1;

            //caractere 3
            caractere[5] = 0;
            for (int q=0; q < 6; q++){
                    caractere[5] += trame[39 + 21 +q]*pow(2,5-q);
            }
            if (caractere[5] < 32) caractere[5] += 65 -1;

            //caractere 4
            caractere[4] = 0;
            for (int q=0; q < 6; q++){
                    caractere[4] += trame[39 + 27 +q]*pow(2,5-q);
            }
            if (caractere[4] < 32) caractere[4] += 65 -1;

            //caractere 5
            caractere[3] = 0;
            for (int q=0; q < 6; q++){
                    caractere[3] += trame[39 + 33 +q]*pow(2,5-q);
            }
            if (caractere[3] < 32) caractere[3] += 65 -1;

            //caractere 6
            caractere[2] = 0;
            for (int q=0; q < 6; q++){
                    caractere[2] += trame[39 + 39 +q]*pow(2,5-q);
            }
            if (caractere[2] < 32) caractere[2] += 65 -1;

            //caractere 7
            caractere[1] = 0;
            for (int q=0; q < 6; q++){
                    caractere[1] += trame[39 + 45 +q]*pow(2,5-q);
            }
            if (caractere[1] < 32) caractere[1] += 65 -1;

            //caractere 8
            caractere[0] = 0;
            for (int q=0; q < 6; q++){
                    caractere[0] += trame[39 + 51 +q]*pow(2,5-q);
            }
            if (caractere[0] < 32) caractere[0] += 65 -1;

            if (aff_trame) {
                printf("nom : ");
                for(int q=7; q>0; q--) printf("%c", caractere[q]);
                printf("\n");
            }
            plane->set_nom(caractere);

            bonftc++;
        }else {
            if (ftc < 9){
                // =============== position surface =================
                if(aff_trame) cout << "---- position surface ----" << "    ";

                //calcul latitude et longitude
                longitude = Longitude(trame,latitude = Latitude(trame));
                if (aff_trame){
                    cout << "                ";
                    cout << "latitude  : " << latitude << "    ";
                    cout << "longitude : " << longitude << endl;
                }
                plane->set_longitude(longitude);
                plane->set_latitude(latitude);
                bonftc++;
            } else {
                if ((ftc < 23) && (ftc != 19)){

                    // =============== position dans l'air ==================
                    if(aff_trame) cout << "---- position air ----" << "    ";

                    //calcul altitude
                    for (int q=0; q < 12; q++){
                        if(q > 8) altitude += trame[39 + 9 + q]*pow(2,10-q-1);
                        else {if(q < 8) altitude += trame[39 + 9 + q]*pow(2,10-q);}
                    }
                    altitude = altitude*25 - 1000;
                    if(aff_trame) cout << "altitude  : " << altitude << " pieds" << "    ";
                    plane->set_altitude(altitude);
                    //calcul latitude et longitude
                    longitude = Longitude(trame, latitude = Latitude(trame));
                    if (aff_trame){
                        cout << "latitude  : " << latitude << "    ";
                        cout << "longitude : " << longitude << endl;
                    }
                    plane->set_longitude(longitude);
                    plane->set_latitude(latitude);
                    bonftc++;
                } else {
                    if (ftc == 19) {
                        // =============== vitesse ==================
                        if(aff_trame) cout << "---- vitesse ----" << "         ";
                        bonftc++;
                        if ((trame[39 + 6] == 0) & (trame[39 + 7] == 0) & (trame[39 + 8] == 1)){
                            // Type 1
                            // vitesse horizontale
                            int vNS = 0;
                            for (int q=0; q<10; q++) vNS += trame[39 + 26 + q]*pow(2, 10-q );
                            if ( trame[39 + 25] == 1) vNS = 1 - vNS;
                            else vNS = vNS - 1;
                            int vEW = 0;
                            for (int q=0; q<10; q++) vEW += trame[39 + 15 + q]*pow(2, 10-q );
                            if ( trame[39 + 25] == 1) vEW = 1 - vEW;
                            else vEW = vEW - 1;
                            float speed = sqrt(vEW*vEW + vNS*vNS);  // en kt ?? plutot en km/h
                            //speed = speed * 1.852;
                            plane->set_vit_hor(speed);
                            if(aff_trame) cout << "vitesse horizontale : " << speed << " km/h    ";

                            // angle
                            float angle = atan2(vEW, vNS)*360/(2*PI);
                            if(aff_trame) cout << "angle : " << angle << " °" << "    ";
                            plane->set_angle(angle);

                            // vitesse verticale
                            int Vr = 0;
                            for (int q=0; q<8; q++) Vr += trame[39 + 38 + q]*pow(2, 8-q );
                            Vr = (Vr - 1) *64;
                            if (trame[39 + 37] == 1) Vr = -Vr; // en feet/min
                            Vr = Vr*0.3048;
                            if(aff_trame) cout << "vitesse verticale : " << Vr << " m/min" << endl;
                            plane->set_vit_vert(Vr);

                        } else {
                            if ((trame[39 + 6] == 0) & (trame[39 + 7] == 1) & (trame[39 + 8] == 1)){
                                //Type 3
                                // vitesse verticale
                                int Vr = 0;
                                for (int q=0; q<8; q++) Vr += trame[39 + 38 + q]*pow(2, 8-q );
                                Vr = (Vr - 1) *64;
                                if (trame[39 + 37] == 1) Vr = -Vr; // en feet/min
                                if(aff_trame) cout << "vitesse verticale : " << Vr * 0.3048 << " m/min" << endl;
                            } // if type 3
                        }//if type 1
                    } else {
                        // =============== inconnu ==================
                        cout << "---- ? ----" << endl;
                    }
                }// if ftc 3
            }// if ftc 2
        } // if ftc 1

        // rajout avion si nouveau
        if (nouvel == -1) (*liste_avion).append(*plane);
        else (*liste_avion).update(nouvel, *plane);
    }

    delete plane;
}	

#endif
