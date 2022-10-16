//
//
//
#include <stdio.h>

#include "helloworld.h"

int looplimit = 100, loop = 0;

int main(int argc, char const *argv[]) {
    char c = nextChar();
    while (c != '\0' && loop < looplimit) {
        printf("%c", c);
        c = nextChar();
        loop++;
    }
    printf("\n");
    return 0;
}
