#include "../include/GenFuncs.h"
#include <iostream>

int genfuncs::pauseprompt() {
  std::cout << "Press enter to continue" << std::endl;
  std::cin.ignore();
  return 0;
}
