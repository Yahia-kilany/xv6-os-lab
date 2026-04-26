#include "types.h"
#include "stat.h"
#include "user.h"

int main(void)
{
    int pid1, pid2;

    // Fork first child — CPU hog
    pid1 = fork();
    if(pid1 == 0){
        // Child 1: spin forever (CPU bound)
        setpriority(getpid(),15);
        int i = 0;
        while(1){
            i++;
            if(i % 10000000 == 0)
                printf(1, "High priority PID  %d still running (i=%d)\n", getpid(), i);
        }
    }

    // Fork second child — CPU hog
    pid2 = fork();
    if(pid2 == 0){
        // Child 2: spin forever (CPU bound)
        int i = 0;
        setpriority(getpid(),5);
        while(1){
            i++;
            if(i % 10000000 == 0)
                printf(1, "Low priority PID %d still running (i=%d)\n", getpid(), i);
        }
    }

    // Parent waits a bit then kills both
    sleep(100);
    kill(pid1);
    kill(pid2);
    wait();
    wait();

    printf(1, "Done\n");
    exit();
}
