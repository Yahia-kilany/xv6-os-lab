#include "types.h"
#include "stat.h"
#include "user.h"
#include "param.h"

#define MAX_NUMBERS 100

// Merge function for fixed-point numbers
void merge(int A[], int l, int m, int r) {
    int temp[MAX_NUMBERS];
    int i = l, j = m + 1, k = 0;
    
    while (i <= m && j <= r) {
        if (A[i] <= A[j]) {
            temp[k++] = A[i++];
        } else {
            temp[k++] = A[j++];
        }
    }
    
    while (i <= m) {
        temp[k++] = A[i++];
    }
    
    while (j <= r) {
        temp[k++] = A[j++];
    }
    
    for (int b = 0; b < k; b++) {
        A[l + b] = temp[b];
    }
}

// Merge Sort
void mergeSort(int A[], int l, int r) {
    if (l >= r) return;
    
    int m = l + (r - l) / 2;
    mergeSort(A, l, m);
    mergeSort(A, m + 1, r);
    merge(A, l, m, r);
}

// Print fixed-point number with 3 decimal places (same as your friend's code)
void print_fixed(int num) {
    int integer_part = num >> SHIFT_AMOUNT;
    int fractional_part = ((num < 0 ? -num : num) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT;
    
    if (num < 0 && integer_part == 0) {
        printf(1, "-");
    }
    
    printf(1, "%d.%d", integer_part, fractional_part);
}

// Print array of fixed-point numbers
void printArray(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        print_fixed(arr[i]);
        if (i < n - 1) {
            printf(1, " ");
        }
    }
    printf(1, "\n");
}

int main(int argc, char *argv[]) {
    int numbers[MAX_NUMBERS];
    int count = 0;
    
    if (argc < 2) {
        printf(2, "Usage: %s <number1> <number2> ... \n", argv[0]);
        printf(2, "Example: sort 5.2 2.5 8.1 1.9 3.7\n");
        exit();
    }
    
    // Parse command line arguments using atof (like your friend's code)
    for (int i = 1; i < argc && count < MAX_NUMBERS; i++) {
        numbers[count] = atof(argv[i]);
        count++;
    }
    
    if (count == 0) {
        printf(2, "No valid numbers provided\n");
        exit();
    }
    
    printf(1, "Original array: ");
    printArray(numbers, count);
    
    mergeSort(numbers, 0, count - 1);
    
    printf(1, "Sorted array: ");
    printArray(numbers, count);
    
    exit();
}

