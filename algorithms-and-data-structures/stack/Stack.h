#ifndef STACK_H
#define STACK_H

#include "Node.h"

template <typename T>

class Stack
{
    public:
      Stack();
      Stack(Stack<T> *olsStack);

      void push(T item);
      T pop();
      int size();
      bool isEmpty();

      ~Stack();
      
    private:
        Node<T>* top;
        int capacity;
};

#endif // STACK_H