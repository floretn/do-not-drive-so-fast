#include "Stack.h"

template <typename T>

Stack<T>::Stack() {
    Stack<T>::top = nullptr;
    Stack<T>::capacity = 0;
};

template <typename T>

Stack<T>::Stack(Stack<T>& oldStack) {
    Stack<T>::capacity = oldStack.capacity;
    Stack<T>::top = new Node<T>(oldStack.top -> item);
    Node<T> *currentNewNode = Stack<T>::top;
    Node<T> *currentOldNode = oldStack.top -> next;
    int i = 1;
    while (i < oldStack.capacity) {
        currentNewNode -> next = new Node<T>(currentOldNode -> item);
        currentNewNode = currentNewNode -> next;
        currentOldNode = currentOldNode -> next;
        i++;
    }
}

template <typename T>

void Stack<T>::push(T newItem) {
    Node<T> *newNode = new Node<T>(newItem, Stack::top);
    Stack<T>::top = newNode;
    Stack<T>::capacity++;
};

template <typename T>

T Stack<T>::pop() {
    if (Stack::capacity == 0) {
        throw std::out_of_range( "Stack is empty!" );
    }
    Node<T> *currentNode = Stack<T>::top;
    Stack<T>::top = currentNode -> next;
    T currentItem = currentNode -> item;
    Stack<T>::capacity--;
    delete currentNode;
    return currentItem;
};

template <typename T>

int Stack<T>::size() {
    return Stack<T>::capacity;
};

template <typename T>

bool Stack<T>::isEmpty() {
    return Stack<T>::capacity == 0;
};

template <typename T>

Stack<T>::~Stack() {
    while (!Stack<T>::isEmpty()) {
        Stack<T>::pop();
    }
};