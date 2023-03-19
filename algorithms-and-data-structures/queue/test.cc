#include <iostream>
#include "Dqueue.cc"
 
int main() {
    Dqueue<int> *dque = new Dqueue<int>();
    dque->pushBack(1);
    dque->pushBack(2);
    dque->pushBack(3);
    dque->pushBack(4);

    // Dqueue<int> dqueDouble(dque);

    dque->pushBack(5);
    dque->pushBack(6);

    while (!dque->isEmpty()) {
        std::cout << dque->popFront() << std::endl;
    }
    

    
    // std::cout << dqueDouble.front() << std::endl;
    // std::cout << dqueDouble.back() << std::endl;
    
    // std::cout << dque->front() << std::endl;
    // std::cout << dque->back() << std::endl;


}