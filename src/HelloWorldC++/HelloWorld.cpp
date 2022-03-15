#include <string>
#include <iostream>

void WriteLine(const std::string& strOutput) {
  std::cout << strOutput;
}

int main(int argc, char** argv) {
  WriteLine("Hello World! C++!");
  return 0;
}