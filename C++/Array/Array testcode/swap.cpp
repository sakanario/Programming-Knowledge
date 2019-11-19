#include <iostream>
using namespace std;

// not sure why but seems if you want to make variable that filled by variable use " * " like *a 
void swap(int *a, int *b) 
{ 
    int temp = *a; 
    *a = *b; 
	*b = temp; 
} 

main(){
	int arr[2]{1,9};
	
	swap (arr[0],arr[1]);
	
	cout << arr[0]<<" "<<arr[1];
	
}
