#include <iostream>
#include "Dque.cc"
 
int main() {
    Dque<int> *dque = new Dque<int>();
    dque->pushBack(111);
    dque->pushBack(2);
    dque->pushBack(3);
    dque->pushBack(4);

    Dque<int> dqueDouble(dque);

    dque->pushBack(5);
    dque->pushBack(6);

    while (!dque->isEmpty()) {
        std::cout << dque->popFront() << std::endl;
    }
    
    std::cout << dqueDouble.front() << std::endl;
    std::cout << dqueDouble.back() << std::endl;


    while (!dqueDouble.isEmpty()) {
        std::cout << dqueDouble.popFront() << std::endl;
    }
}