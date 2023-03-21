#include <iostream>
#include "Dque.cc"
#include "Car.h"
 
int main() {
    Dque<int> *dque = new Dque<int>();
    dque->pushBack(111);
    dque->pushBack(2);
    dque->pushBack(3);
    dque->pushBack(4);

    Dque<double> dqueD = new Dque<double>();
    Dque<char> dqueC = new Dque<char>();

    dqueC.pushFront('a');
    dqueC.pushFront('b');
    dqueC.pushFront('c');
    dqueC.pushFront('d');

    dqueD.pushFront(1.1);
    dqueD.pushFront(2.2);
    dqueD.pushFront(3.3);
    dqueD.pushFront(4.4);


    while (!dqueC.isEmpty()) {
        std::cout << dqueC.popFront() << std::endl;
    }

    while (!dqueD.isEmpty()) {
        std::cout << dqueD.popFront() << std::endl;
    }

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