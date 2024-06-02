#include <string>
#include <iostream>
#include <vector>
#include "helloworld_lib.h"

int printHelloWorld()
{
  std::vector<std::string> msg{"Hello", "C++", "World", "from", "helloworld_lib", "shared lib"};

  for (const std::string &word : msg)
  {
    std::cout << word << " ";
  }
  std::cout << std::endl;

  return 0;
}