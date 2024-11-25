// mkdir.c
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Usage: mkdir <directory_name>\n");
        return 1;
    }
    int status = mkdir(argv[1], 0755);  // Create directory with read/write/execute permissions
    if (status == 0) {
        printf("Directory %s created successfully!\n", argv[1]);
    } else {
        perror("Error");
    }
    return 0;
}

