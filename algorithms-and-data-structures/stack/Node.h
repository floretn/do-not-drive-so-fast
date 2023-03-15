#ifndef NODE_H
#define NODE_H

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

#endif // NODE_H