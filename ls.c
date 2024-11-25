// ls.c
#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>

int main(int argc, char *argv[]) {
    DIR *dir;
    struct dirent *entry;

    // If no directory is provided, use the current directory
    const char *dir_name = (argc == 2) ? argv[1] : ".";

    dir = opendir(dir_name);
    if (dir == NULL) {
        perror("Error opening directory");
        return 1;
    }

    printf("Listing files in: %s\n", dir_name);
    while ((entry = readdir(dir)) != NULL) {
        printf("%s\n", entry->d_name);
    }

    closedir(dir);
    return 0;
}

