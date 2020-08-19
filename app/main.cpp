#include <iostream>

#include "CLI/CLI.hpp"

#include "mylib/mylib.hpp"

int main(int argc, char *argv[]) {
  CLI::App app;
  CLI11_PARSE(app, argc, argv);
  return 0;
}
