#ifndef DQUE_H
#define DQUE_H

#include "Node.h"

template <typename T>

class Dque
{
    public:
      Dque();
      Dque(Dque<T> *olsDque);

      void pushFront(T item);
      void pushBack(T item);
      T popFront();
      T popBack();
      T front();
      T back();
      int size();
      bool isEmpty();

      ~Dque();
      
    private:
        void checkCapacity();

        Node<T>* head;
        Node<T>* tail;
        int capacity;
};

#endif // DQUE_H