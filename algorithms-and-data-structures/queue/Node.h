#ifndef NODE_H
#define NODE_H

template <typename T>

struct Node {
    Node(T newItem) {
        item = newItem;
        next = nullptr;
        previous = nullptr;
    }

    Node(T newItem, Node<T> *nextNode, Node<T> *previousNode) {
        item = newItem;
        next = nextNode;
        previous = previousNode;
    }

    T item;
    Node<T>* next;
    Node<T>* previous;
};

#endif // NODE_H