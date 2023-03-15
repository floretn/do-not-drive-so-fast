#include <iostream>
#include "Stack.h"
#include "Stack.cc"
 
int main() {
    Stack<int> stack;
    stack.push(1);
    stack.push(2);

    Stack<int> stackDouble(stack);

    stack.push(3);

    while (!stack.isEmpty()) {
        std::cout << stack.pop() << std::endl;
    }
    std::cout << "----------------------------------" << std::endl;
    while (!stackDouble.isEmpty()) {
        std::cout << stackDouble.pop() << std::endl;
    }

    // std::cout << stack.pop() << std::endl;
}