#ifndef STACK_H
#define STACK_H

#include "Node.h"

template <typename T>

class Stack
{
    private:
        Node<T>* top;
        int capacity;
    public:
      Stack();
      Stack(Stack<T> *olsStack);

      void push(T item);
      T pop();
      int size();
      bool isEmpty();

      ~Stack();
};

#endif // STACK_H