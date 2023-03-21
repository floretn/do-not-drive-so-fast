#ifndef NODE_H
#define NODE_H

#include <string>

template <typename T>

struct Node {
    Node(std::string key, T newItem) {
        this.key = key;
        item = newItem;
        next = nullptr;
    }

    std::string key;
    T item;
    Node<T>* next;
};

#endif // NODE_H