#include "types.h"
#include "stat.h"
#include "user.h"

#define SHIFT_AMOUNT 8
#define SHIFT_MASK ((1 << SHIFT_AMOUNT) - 1)

// Newton–Raphson
int sqrt_xv6(int x) {
  if (x <= 0)
    return 0;
  int guess = x;
  int prev;
  do {
    prev = guess;
    guess = (guess + ((x << SHIFT_AMOUNT) / guess)) / 2;
  } while (guess != prev);
  return guess;
}

int main(int argc, char *argv[]) {
  if (argc < 2) {
    printf(1,"must have 2 or more numbers\n");
    return 0;
  }

  int i, val;
  int n = argc - 1;
  int min = atoi(argv[1]);
  int max = atoi(argv[1]);
  int std_dev = 0, mean = 0, avg = 0;

  /* SUM / MIN / MAX */
  for (i = 1; i < argc; i++) {
    val = atoi(argv[i]);
    avg = avg + val;
    if (min > val)
      min = val;
    if (max < val)
      max = val;
  }

  /* AVERAGE (Q8.8) */
  avg = avg << SHIFT_AMOUNT;
  avg = avg / n;

  /* STANDARD DEVIATION */
  for (i = 1; i < argc; i++) {
    val = atoi(argv[i]) << SHIFT_AMOUNT;

    std_dev += ((val - avg) * (val - avg)) >> SHIFT_AMOUNT;
  }
  std_dev = std_dev / n;       // variance
  std_dev = sqrt_xv6(std_dev); // std deviation

  /* MEDIAN (ASSUMES SORTED INPUT) */
  if (n % 2 == 0)
    mean = (atoi(argv[n / 2]) + atoi(argv[n / 2 + 1])) / 2;
  else
    mean = atoi(argv[n / 2 + 1]);

  /* PRINTING */
  printf(1,"AVERAGE: %d.%d\n", avg / (1 << SHIFT_AMOUNT),
         ((avg < 0 ? -avg : avg) & SHIFT_MASK) * 1000 >> SHIFT_AMOUNT);
  printf(1,"STD DEVIATION: %d.%d\n", std_dev / (1 << SHIFT_AMOUNT),
         ((std_dev < 0 ? -std_dev : std_dev) & SHIFT_MASK) * 1000 >>
             SHIFT_AMOUNT);
  printf(1,"MEDIAN: %d\n", mean);
  printf(1,"MIN: %d\n", min);
  printf(1,"MAX: %d\n", max);

  exit();
}
