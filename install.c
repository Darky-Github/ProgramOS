// install.c
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: install <package_name>\n");
        return 1;
    }
    char command[256];
    snprintf(command, sizeof(command), "apt-get update && apt-get install -y %s", argv[1]);
    int status = system(command);
    if (status == 0) {
        printf("Package %s installed successfully!\n", argv[1]);
    } else {
        printf("Error installing package %s\n", argv[1]);
    }
    return 0;
}

