#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int
main(int argc, char *argv[])
{
    char *s = malloc(100);
    free(s);
    strcpy(s, "Hello world!");
    printf("%s\n", s);
    return 0;
}
