#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int
main(int argc, char *argv[])
{
    char *s = malloc(12);
    strcpy(s, "Hello world!");
    printf("string is: %s \n", s);
    free(s);
    return 0;
}
