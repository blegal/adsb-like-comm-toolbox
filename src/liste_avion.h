#ifndef LISTE_AVION
#define LISTE_AVION

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <map>

#include "avion.h"

using namespace std;



class Liste_Avion{

private :
	vector<Avion> liste;
	map<int, int> cle;   // oaci, num_liste
public :
	Liste_Avion();
	~Liste_Avion();
	int search(int oaci);  //retourne num_liste
	void append(Avion avion);
	Avion find(int num);
	void update(int num, Avion avion);
	void print();

};

Liste_Avion::Liste_Avion(){
}

Liste_Avion::~Liste_Avion(){}

int Liste_Avion::search(int oaci){
 	map<int, int>::iterator it = cle.find(oaci);
	if (it != cle.end()) return it->second;
	else return -1;
}

void Liste_Avion::append(Avion avion){
	pair<map<int,int>::iterator,bool> ret;
	ret = cle.insert ( std::pair<int,int>(avion.get_oaci(),liste.size()) );
	if (ret.second==false) {
		cout << "avion already existed";
		cout << " with a value of " << ret.first->second << '\n';
	}
	liste.push_back(avion);
}

Avion Liste_Avion::find(int num){
	return liste[num];	
}

void Liste_Avion::update(int num, Avion avion){
	liste[num] = avion;
}

void Liste_Avion::print(){
	map<int, int>::iterator it = cle.begin();
	cout << "   NOM    |  @ OACI  |   ALTITUDE   |   LATITUDE   |   LONGITUDE   |   VITESSE HORIZONTALE   |    ANGLE    |  VITESSE VERTICALE   | DISTANCE" << endl;
	while ( it != cle.end()){
		(liste[it->second]).print();
		it ++;	
	}
}

#endif