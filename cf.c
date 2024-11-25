// cf.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: cf <file_name_with_extension>\n");
        return 1;
    }

    // Check if the file has an extension
    if (strchr(argv[1], '.') == NULL) {
        printf("Error: Please add an extension to the file (e.g., .txt, .c)\n");
        return 1;
    }

    FILE *file = fopen(argv[1], "w");
    if (file == NULL) {
        perror("Error creating file");
        return 1;
    }

    printf("File %s created successfully!\n", argv[1]);
    fclose(file);
    return 0;
}

