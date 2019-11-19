#include <iostream>
#include <conio.h>
using namespace std;

main(){
	int m,n;
	cout << "Input M : ";
	cin >> m;
	
	cout << "Input N : ";
	cin >> n;
	
	//Print Baris Atas	
	cout << "\t";
	for(int i = 0 ; i<(n+1) ; i++){
		cout << i << "\t";
	}
	cout << endl; 
	for(int i = 0 ; i<(n+1) ; i++){
		cout << "---------";
	}
	cout << endl;
	
	//Print sisanya	
	for(int i = 0; i<(m+1) ; i++){
		cout << i << "|\t";
		for(int j = 0 ; j<n+1 ; j++){
			cout << i*j <<"\t";
		}
		cout << endl;
	}
}


