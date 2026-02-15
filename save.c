#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
  int fd; // file descriptor
  
  if(argc != 3) { // not exactly 3 parameters (program name, filename, string)
    printf(2, "Usage: save filename string\n");
    exit();
  }
  
  fd = open(argv[1], O_WRONLY | O_CREATE); // write only or create if not exists
  if(fd < 0) {
    printf(2, "save: cannot open %s\n", argv[1]);
    exit();
  }
  
  if(write(fd, argv[2], strlen(argv[2])) < 0) { // write the string to the file
    printf(2, "save: write error\n");
    close(fd);
    exit();
  }
  
  close(fd);
  exit();
}
