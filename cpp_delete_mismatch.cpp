#include <iostream>
#include <cstring>
int
main(int argc, char *argv[])
{
    char* cstr = new char[100];
    strcpy(cstr, "Hello world");
    std::cout << cstr << std::endl;
    // should use delete[] cstr
    delete cstr;
    return 0;
}
