#include "lib/lib.hpp"

#include <vector>

namespace lib {

unsigned int Fibonacci(const unsigned int i) {
  std::vector<unsigned int> v = {0, 1};

  for (unsigned int i_ = 2; i_ <= i; ++i_) {
    v[i_] = v[i_ - 2] + v[i_ - 1];
  }

  return v[i];
}

}  // namespace lib
