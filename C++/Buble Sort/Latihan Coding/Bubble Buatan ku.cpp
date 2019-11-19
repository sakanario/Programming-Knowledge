#include <iostream>
#include <conio.h>
#include <array>
using namespace  std;

void swap(int *a, int *b) 
{ 
    int temp = *a; 
    *a = *b; 
	*b = temp; 
} 

void bubble(int foo[],int n){
	int i = 1;
	
	bool swapped;
	// j harus nol karena array selalu dimulai dari elemen ke-nol
	while (i < n){
		swapped = false;
		cout << " i = "<<i<<endl;
		
		//j nya harus balik ke 0 setelah perulangan
		int j = 0;
		while(j < n-i){
			cout <<" j = "<< j;	
			cout << " (n-i) = "<< n-i;
			if (foo[j]>foo[j+1] ){
			
				swap(foo[j],foo[j+1]);
				swapped = true;	
			}
			j++;
		} 
		//jika tidak ada perubahan, maka sistem tau jika data sudah terurut
		if (swapped == false){
			break;}
		
		i++;
	}
}


main(){

	int foo[]{1,2,3,4,5};
	int n = sizeof(foo)/sizeof(foo[0]);
	
	bubble(foo,n);
	
	//print proses
	std::cout << endl<<endl;
	int r =n;
	int h = 0;
	while(h<r){
		cout << foo[h]<<" ";
		h++;
	}
}
