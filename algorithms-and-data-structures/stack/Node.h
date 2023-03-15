#ifndef NODE_H
#define NODE_H

template <typename T>

struct Node {
    Node(T newItem) {
        item = newItem;
        next = nullptr;
    }

    Node(T newItem, Node<T> *nextNode) {
        item = newItem;
        next = nextNode;
    }

    T item;
    Node<T>* next;
};

#endif // NODE_H