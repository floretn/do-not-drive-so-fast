#ifndef DQUEUE_H
#define DQUEUE_H

#include "Node.h"

template <typename T>

class Dqueue
{
    public:
      Dqueue();
      Dqueue(Dqueue<T> *olsDqueue);

      void pushFront(T item);
      void pushBack(T item);
      T popFront();
      T popBack();
      T front();
      T back();
      int size();
      bool isEmpty();

      ~Dqueue();
      
    private:
        void checkCapacity();

        Node<T>* head;
        Node<T>* tail;
        int capacity;
};

#endif // DQUEUE_H