#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
  if(argc != 2){
    printf(2, "Usage: rmdir <directory>\n");
    exit();
  }
  if(rmdir(argv[1]) < 0){
    printf(2, "rmdir: failed to remove %s\n", argv[1]);
    exit();
  }
  exit();
}