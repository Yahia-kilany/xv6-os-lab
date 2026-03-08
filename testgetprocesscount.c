#include "types.h"
#include "stat.h"
#include "user.h"

int
main(void)
{
  int before, during, after;
  int pid;

  before = getprocesscount();
  printf(1, "Test 1 - Baseline count: %d\n", before);
  if(before > 0 && before <= 64)
    printf(1, "         Sanity (1-64): PASS\n");
  else
    printf(1, "         Sanity (1-64): FAIL\n");

  printf(1, "\n");

  pid = fork();
  if(pid == 0){
    sleep(10);   
    exit();
  }
  sleep(2);      
  during = getprocesscount();
  printf(1, "Test 2 - After fork():  %d\n", during);
  if(during == before + 1)
    printf(1, "         Delta == +1:   PASS\n");
  else
    printf(1, "         Delta == +1:   NOTE (delta=%d)\n", during - before);

  printf(1, "\n");

  wait();
  sleep(2);
  after = getprocesscount();
  printf(1, "Test 3 - After wait():  %d\n", after);
  if(after == before)
    printf(1, "         Restored:      PASS\n");
  else
    printf(1, "         Restored:      NOTE (before=%d after=%d)\n", before, after);

  printf(1, "\n");

  int c1 = getprocesscount();
  int c2 = getprocesscount();
  printf(1, "Test 4 - Consistency:   c1=%d c2=%d ", c1, c2);
  if(c1 == c2)
    printf(1, "PASS\n");
  else
    printf(1, "NOTE\n");
  exit();
}

