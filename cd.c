// cd.c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: cd <directory_name>\n");
        return 1;
    }

    // Change the directory
    if (chdir(argv[1]) != 0) {
        perror("Error changing directory");
        return 1;
    }

    printf("Changed directory to %s\n", argv[1]);
    return 0;
}

