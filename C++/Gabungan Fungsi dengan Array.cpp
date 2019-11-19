#include <iostream>
#include <conio.h>
using namespace std;

void pang ();
int hubla [5];

main(){
	for(int i = 0;i<5;i++){
		hubla[i]=i+1;	
	}
	pang();
}

void pang (){	
	for (int i = 0;i<5;i++){
		cout << hubla[i]<<"  ";
	}
}

