#include "my_lib/my_lib.hpp"

#include <fmt/format.h>
#include <gtest/gtest.h>

TEST(TestMyLib, TestMakeNiceMessage)
{
    // makeNiceMessage should make a nice message
    // set-up
    std::string message { "SOME MESSAGE" };
    std::string expected { fmt::format("Hello, here is your nice message: {}\n", message) };
    // run
    std::string actual { my_lib::makeNiceMessage(message) };
    // check
    EXPECT_EQ(actual, expected);
}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}