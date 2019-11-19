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
	
	
	int j = 1;
	while(j <= (n-1)){

		i = 0;
		while(i<(n-1)){
			if (foo[i]>foo[i+1]){
				swap(foo[i],foo[i+1]);}
			i++;
		
		}
		n--;
		cout << "\npengulangan ke "<< n;	
	}
	

	cout << endl<<endl;

	cout << "\n\n";
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
