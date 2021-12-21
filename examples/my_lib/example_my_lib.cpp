#include "my_lib/my_lib.hpp"

#include <iostream>

// this is example file for my_lib library
int main(int, char *[])
{
    std::cout << "Hello, World!" << std::endl;
    my_lib::printNiceMessage("SOME MESSAGE");

    return 0;
}
