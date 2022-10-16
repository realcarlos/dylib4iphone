#include "helloworld.h"

const char* str = "Hello, World!";

char nextChar() {
    static int i = 0;
    size_t length = strlen(str);
    if (i > length) {
        i = 0;
    }
    return str[i++];
}
