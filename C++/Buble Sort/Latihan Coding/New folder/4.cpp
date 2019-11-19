#include <iostream>
#include <conio.h>
#include <array>
using namespace  std;
#include<stdio.h> 
#include<string.h> 
#include<stdlib.h> 
   
/* Swaps strings by swapping data*/
void swap2(char *str1, char *str2) 
{ 
  char *temp = (char *)malloc((strlen(str1) + 1) * sizeof(char)); 
  strcpy(temp, str1); 
  strcpy(str1, str2); 
  strcpy(str2, temp); 
  free(temp); 
}  

void swap(int *a, int *b) 
{ 
    int temp = *a; 
    *a = *b; 
	*b = temp; 
} 

void swape(char namaTugas[int j], char namaTugas[j+1]) 
{ 
    char semen[10] = namaTugas[j],; 
    namaTugas[j] = namaTugas[j+1]; 
	namaTugas[j+1] = semen; 
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
	char namaTugas [5][10]{"Fisika","main","belajar"};
	int n = sizeof(prioritas)/sizeof(prioritas[0]);
	
	bubble(prioritas,n);
	
	
}
