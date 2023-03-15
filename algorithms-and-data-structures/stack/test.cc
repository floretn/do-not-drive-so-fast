#include <iostream>
#include "Stack.cc"
 
int main() {
    //В этом (выделении памяти) нет логики, только понты
    Stack<int> *stack = new Stack<int>();
    stack->push(1);
    stack->push(2);

    Stack<int> stackDouble(stack);

    stack->push(3);

    while (!stack->isEmpty()) {
        std::cout << stack->pop() << std::endl;
    }
    std::cout << "----------------------------------" << std::endl;
    delete stack;
    while (!stackDouble.isEmpty()) {
        std::cout << stackDouble.pop() << std::endl;
    }

    // std::cout << stack.pop() << std::endl;
}