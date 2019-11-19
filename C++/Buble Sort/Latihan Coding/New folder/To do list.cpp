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
void swape(char *k[10] , char*l[10] ) 
{ 
    char[10] semen = *k; 
    *k = *l; 
	*l = semen; 
} 

void bubble(int prioritas[],string namaTugas,int n){
	int i = 1;
	
	bool swapped;
	// j harus nol karena array selalu dimulai dari elemen ke-nol
	while (i < n){
		swapped = false;
		//j nya harus balik ke 0 setelah perulangan
		int j = 0;
		while(j < n-i){
			if (prioritas[j]>prioritas[j+1] ){
				swap(prioritas[j],prioritas[j+1]);
				swape(namaTugas[j]),namaTugas[j+1];
				
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

	int prioritas[5]{3,1,2};
	Char namaTugas [5][10]{"tugasFisika","main","belajar"};
	int n = sizeof(prioritas)/sizeof(prioritas[0]);
	
	bubble(prioritas,n);
	
	
}
