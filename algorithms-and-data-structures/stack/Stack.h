#ifndef STACK_H
#define STACK_H

template <typename T>

struct Node {
    T item;
    Node<T>* next;

    Node(T newItem) {
        item = newItem;
        next = nullptr;
    }

    Node(T newItem, Node<T> *nextNode) {
        item = newItem;
        next = nextNode;
    }
};

template <typename T>

class Stack
{
    private:
        Node<T>* top;
        int capacity;
    public:
      Stack();
      Stack(Stack<T>& olsStack);

      void push(T item);
      T pop();
      int size();
      bool isEmpty();

      ~Stack();
};

#endif // STACK_H