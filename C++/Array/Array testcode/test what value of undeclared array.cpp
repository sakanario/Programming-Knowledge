#include <iostream>
#include <conio.h>
using namespace  std;

main(){
		int y=1;
		int foo[3]{1,2,3};
do{
	cout << "input n : ";
	int i =0;
	int n;
	cin >> n;
	while(i<n){
		cout << foo[i]<< " ";
		i++;
	}
	
	cout << "\nAgain?\n\n";
	getch();
	
}while(y == 1);
}
