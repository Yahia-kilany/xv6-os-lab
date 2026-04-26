#include "types.h"
#include "user.h"

int main(void)
{
  int pid1, pid2, pid3;

  printf(1, "=== Priority Scheduler Test ===\n");
  printf(1, "Process A priority=8, B priority=5, C priority=2\n\n");

  pid1 = fork();
  if(pid1 == 0){
    setpriority(getpid(), 8);
    for(int i = 0; i < 5; i++){
      printf(1, "[A] High priority (8) - iteration %d\n", i+1);
      sleep(10);
    }
    exit();
  }

  pid2 = fork();
  if(pid2 == 0){
    setpriority(getpid(), 5);
    for(int i = 0; i < 5; i++){
      printf(1, "[B] Mid  priority (5) - iteration %d\n", i+1);
      sleep(30);
    }
    exit();
  }

  pid3 = fork();
  if(pid3 == 0){
    setpriority(getpid(), 2);
    for(int i = 0; i < 5; i++){
      printf(1, "[C] Low  priority (2) - iteration %d\n", i+1);
      sleep(80);
    }
    exit();
  }

  wait();
  wait();
  wait();
  printf(1, "\n=== Process Table after test ===\n");
  printptable();
  exit();
}
