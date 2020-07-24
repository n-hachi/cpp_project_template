#include <iostream>

#include "lib/lib.hpp"

int main(int argc, char *argv[]) {
  for (unsigned int i = 0; i < 10; i++) {
    std::cout << "Fibonacci(" << i << ") = " << lib::Fibonacci(i) << std::endl;
  }
  return 0;
}
