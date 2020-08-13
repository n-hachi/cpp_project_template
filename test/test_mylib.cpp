#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>
#include "mylib/mylib.hpp"

TEST_CASE("Sample check", "[main]") {
  REQUIRE(mylib::Fibonacci(1) == 1);
  REQUIRE(mylib::Fibonacci(2) == 1);
  REQUIRE(mylib::Fibonacci(3) == 2);
  REQUIRE(mylib::Fibonacci(4) == 3);
}
