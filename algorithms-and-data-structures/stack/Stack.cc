#include "Stack.h"

template <typename T>

Stack<T>::Stack() {
    top = nullptr;
    capacity = 0;
};

template <typename T>

Stack<T>::Stack(Stack<T> *oldStack) {
    capacity = oldStack->capacity;
    top = new Node<T>(oldStack->top->item);
    Node<T> *currentNewNode = top;
    Node<T> *currentOldNode = oldStack->top->next;
    int i = 1;
    while (i < oldStack->capacity) {
        currentNewNode -> next = new Node<T>(currentOldNode->item);
        currentNewNode = currentNewNode->next;
        currentOldNode = currentOldNode->next;
        i++;
    }
}

template <typename T>

void Stack<T>::push(T newItem) {
    Node<T> *newNode = new Node<T>(newItem, top);
    top = newNode;
    capacity++;
};

template <typename T>

T Stack<T>::pop() {
    if (capacity == 0) {
        throw std::out_of_range( "Stack is empty!" );
    }
    Node<T> *currentNode = top;
    top = currentNode->next;
    T currentItem = currentNode->item;
    capacity--;
    delete currentNode;
    return currentItem;
};

template <typename T>

int Stack<T>::size() {
    return capacity;
};

template <typename T>

bool Stack<T>::isEmpty() {
    return capacity == 0;
};

template <typename T>

Stack<T>::~Stack() {
    while (!isEmpty()) {
        pop();
    }
};