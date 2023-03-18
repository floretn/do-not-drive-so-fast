#ifndef QUEUE_H
#define QUEUE_H

#include "Node.h"

template <typename T>

class Queue
{
    public:
      Queue();
      Queue(Queue<T> *olsQueue);

      void push(T item);
      T pop();
      int size();
      bool isEmpty();

      ~Queue();
      
    private:
        Node<T>* top;
        int capacity;
};

#endif // QUEUE_H