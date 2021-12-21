#include <string>
#include <string_view>

namespace my_lib {

/**
 * @brief Print a butified message to a console output.
 *
 * @param message The message to butify and print.
 */
auto printNiceMessage(std::string_view message) -> void;

/**
 * @brief Butify a given message.
 *
 * @param message The message to butify.
 * @return std::string The budified message.
 */
auto makeNiceMessage(std::string_view message) -> std::string;

}    // namespace my_lib