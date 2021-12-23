#include <string>
#include <string_view>

/**
 * @brief Brief of a namespace.
 *
 * This is more detailed description of the namespace.
 *
 */
namespace my_lib {

/**
 * @brief This is a brief description.
 *        Continuation of breaf description.
 *
 * This is more detailed description.
 *
 * @param param1 Description of the first parameter
 * @param param2 Description of the second parameter
 * @return double Description of the return value
 */
auto exampleFunction(const int param1, const double param2) -> double;

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