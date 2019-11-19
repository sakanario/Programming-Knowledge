#include <iostream>
#include <math.h>
using namespace std;

main(){
	float a,t,c;
	cout << "Masukan panjang alas segitiga : ";
	cin >>a;
	cout << "Masukan panjang tinggi segitiga : ";
	cin >> t;
	c = sqrt(pow(a,2) + pow(t,2));
	cout << "Panjang sisi miring dari segitiga tersebut adalah " << c << " cm";
}
