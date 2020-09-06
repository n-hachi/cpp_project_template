#include <iostream>
#include <string>

#include "CLI/CLI.hpp"

#include "mylib/mylib.hpp"

int main(int argc, char *argv[]) {
  CLI::App app("Calculate fibonacci", argv[0]);

  unsigned int index_;
  app.add_option("index", index_,
                 "The number of the number in the fibonacci sequence")
      ->required();

  CLI11_PARSE(app, argc, argv);

  std::cout << mylib::Fibonacci(index_) << std::endl;

  return 0;
}
