#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

#define MAX_NUMBERS 100

void merge(int A[], int l, int m, int r) {
    int temp[r-l+1];
    int i = l, j = m+1, k = 0;
    
    while(i <= m && j <= r) {
        if(A[i] <= A[j]) {
            temp[k] = A[i];
            i++;
        } else {
            temp[k] = A[j];
            j++;
        }
        k++;
    }
    
    while(i <= m) {
        temp[k] = A[i];
        i++;
        k++;
    }
    
    while(j <= r) {
        temp[k] = A[j];
        j++;
        k++;
    }
    
    for(int b = 0; b < k; b++) {
        A[l + b] = temp[b];
    }
}

void mergeSort(int A[], int l, int r) {
    if(l >= r) return;
    int m = l + (r - l)/2;
    mergeSort(A, l, m);
    mergeSort(A, m+1, r);
    merge(A, l, m, r);
}

void printArray(int arr[], int n) {
    for(int i = 0; i < n; i++) {
        printf(1, "%d", arr[i]);
        if(i < n - 1) {
            printf(1, " ");
        }
    }
    printf(1, "\n");
}

int main(int argc, char *argv[]) {
    int numbers[MAX_NUMBERS];
    int count = 0;
    
    if(argc < 2) {
        printf(2, "Usage: %s <number1> <number2> ... <numberN>\n", argv[0]);
        printf(2, "Example: sort 5 2 8 1 9\n");
        exit();
    }
    
    for(int i = 1; i < argc && count < MAX_NUMBERS; i++) {
        numbers[count] = atoi(argv[i]);
        count++;
    }
    
    if(count == 0) {
        printf(2, "No numbers provided\n");
        exit();
    }
    
    printf(1, "Original array: ");
    printArray(numbers, count);
    
    mergeSort(numbers, 0, count - 1);
    
    printf(1, "Sorted array: ");
    printArray(numbers, count);
    
    exit();
}

