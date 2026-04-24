#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char **argv)
{
  int pid;
  int pr;
  int old;

  if(argc != 3){
    printf(2, "usage: setpriority pid priority\n");
    exit();
  }

  pid = atoi(argv[1]);
  pr = atoi(argv[2]);
  old = setpriority(pid, pr);
  if(old < 0)
    printf(2, "setpriority failed\n");
  else
    printf(1, "old priority: %d\n", old);

  exit();
}
