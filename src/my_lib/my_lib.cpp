#include "my_lib/my_lib.hpp"

#include <fmt/format.h>
#include <iostream>

namespace my_lib {

auto makeNiceMessage(std::string_view message) -> std::string
{
    return fmt::format("Hello, here is your nice message: {}\n", message);
}

auto printNiceMessage(std::string_view message) -> void
{
    std::cout << makeNiceMessage(message);
}

}    // namespace my_lib