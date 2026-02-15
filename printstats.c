#include "types.h"
#include "stat.h"
#include "user.h"
#include "param.h"


// Newton–Raphson for fixed-point square root
int sqrt_xv6(int x) {
  if (x <= 0) return 0;
  int guess = x;
  int prev;
  do {
    prev = guess;
    guess = (guess + ((x << SHIFT_AMOUNT) / guess)) / 2;
  } while (guess != prev);
  return guess;
}

void bubble_sort(int arr[], int n) {
    int i, j, temp;

    for (i = 0; i < n - 1; i++) {
        // Last i elements are already in place
        for (j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // Swap arr[j] and arr[j + 1]
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

int main(int argc, char *argv[]) {
  if (argc < 2) {
    printf(1, "Usage: printstats <num1> <num2> ...\n");
    exit();
  }

  int numbers[MAX_NUMBERS];
  int n = 0;
  int avg = 0;
  int std_dev = 0;
  int min = 0, max = 0;


  for (int i = 1; i < argc && n < MAX_NUMBERS; i++) {
      numbers[n] = atof(argv[i]);
      if (n == 0)      min = max = numbers[n];
      if (numbers[n] < min) min = numbers[n];
      if (numbers[n] > max) max = numbers[n];
    
    avg += numbers[n];
    n++;
  }


  avg = (avg) / n;



  for (int i = 0; i < n; i++) {
    int val = numbers[i];
    std_dev += ((val - avg) * (val - avg)) >> SHIFT_AMOUNT;
  }
  
  std_dev = sqrt_xv6(std_dev / n);
  
  bubble_sort(numbers, n);
  int median;
  if (n % 2 == 0)
    median = ((numbers[(n / 2) - 1]) + (numbers[n / 2])) / 2;
  else
    median = numbers[n / 2];

  /* PRINTING */
  printf(1, "AVERAGE: %d.%d\n", avg / (1 << SHIFT_AMOUNT),
         ((avg < 0 ? -avg : avg) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT);
  printf(1, "STD DEVIATION: %d.%d\n", std_dev / (1 << SHIFT_AMOUNT),
         ((std_dev < 0 ? -std_dev : std_dev) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT);
  printf(1, "MEDIAN: %d.%d\n", median / (1 << SHIFT_AMOUNT),
         ((median < 0 ? -median : median) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT);
  printf(1, "MIN: %d.%d\n", min / (1 << SHIFT_AMOUNT),
         ((min < 0 ? -min : min) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT);
  printf(1, "MAX: %d.%d\n", max / (1 << SHIFT_AMOUNT),
         ((max < 0 ? -max : max) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT);

  exit();
}
