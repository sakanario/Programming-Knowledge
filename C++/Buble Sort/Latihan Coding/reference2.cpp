// Optimized implementation of Bubble sort 
#include <stdio.h> 
#include <iostream>
using namespace std;

void swap(int *xp, int *yp) 
{ 
	int temp = *xp; 
	*xp = *yp; 
	*yp = temp; 
} 

// An optimized version of Bubble Sort 
void bubbleSort(int arr[], int n) 
{ 
int i, j;
int r = n; 
bool swapped; 
for (i = 0; i < n-1; i++) 
{ 
	swapped = false; 
	for (j = 0; j < n-i-1; j++) 
	{ 
		if (arr[j] > arr[j+1]) 
		{ 
		swap(&arr[j], &arr[j+1]); 
		swapped = true;
		 
		} 
	} 

	// IF no two elements were swapped by inner loop, then break 
	if (swapped == false) 
		break; 
} 
} 

/* Function to print an array */
void printArray(int arr[], int size) 
{ 
	int i; 
	for (i=0; i < size; i++) 
		printf("%d ", arr[i]); 
} 

// Driver program to test above functions 
int main() 
{ 
	int arr[] = {3,2,1}; 
	int n = sizeof(arr)/sizeof(arr[0]); 
	bubbleSort(arr, n); 
	printf("\nSorted array: \n"); 
	printArray(arr, n); 
	return 0; 
} 

