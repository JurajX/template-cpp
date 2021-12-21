#include <string>
#include <string_view>

namespace my_lib {

auto printNiceMessage(std::string_view message) -> void;
auto makeNiceMessage(std::string_view message) -> std::string;

}    // namespace my_lib