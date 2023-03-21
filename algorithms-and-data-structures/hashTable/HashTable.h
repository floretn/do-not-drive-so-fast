#ifndef HASHTABLE_H
#define HASHTABLE_H

#include "Node.h"

template <typename T>

class HashTable
{
    public:
      HashTable();
      HashTable(HashTable<T> *old);

      void pushFront(T item);
      void pushBack(T item);
      T popFront();
      T popBack();
      T front();
      T back();
      int size();
      bool isEmpty();

      ~HashTable();
      
    private:
        void checkCapacity();

        Node<T>[] 
        int capacity;
};

#endif // HASHTABLE_H