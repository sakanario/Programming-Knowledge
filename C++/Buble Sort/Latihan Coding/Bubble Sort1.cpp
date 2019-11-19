#include <iostream>
using namespace  std;

void swap(int *a, int *b) 
{ 
    int temp = *a; 
    *a = *b; 
	*b = temp; 
} 

main(){
	int i,n,r;
	
	int foo[5]{3,4,5,1,2};
	
	cout << "input n : ";
	cin >> n;
	r = n;

//sorting with bubble sort	
	int j = 1;
	//untuk n-1 kali pengulangan, misal n = 3 , mengulang 2 kali	
	while(j < n){

		i = 0;
		//untuk n-1 kali pengulangan, misal n = 3 , mengulang 2 kali
		while(i<(n-1)){
			if (foo[i]>foo[i+1]){
				swap(foo[i],foo[i+1]);}
			i++;
		}
		n--;	
	}
	
//print 
	cout << endl<<endl;
			int h = 0;
			while(h<r){
				cout << foo[h]<<" ";
				h++;
				}
	
}
/* print fungsi
	cout << "\n\n";
			int h = 0;
			while(h<r){
				cout << foo[h]<<" ";
				h++;
				}*/
