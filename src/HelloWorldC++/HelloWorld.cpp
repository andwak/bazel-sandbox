#include <string>
#include <iostream>

void WriteLine(const std::string& strOutput) {
  std::cout << strOutput;
}

int main(int argc, char** argv) {
  WriteLine("\n");
  WriteLine("Hello World! C++!");
  WriteLine("\n");
  WriteLine("\n");
  return 0;
}