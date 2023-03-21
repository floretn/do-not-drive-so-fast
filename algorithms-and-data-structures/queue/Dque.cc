#include "Dque.h"

template <typename T>

Dque<T>::Dque() {
    head = nullptr;
    tail = nullptr;
    capacity = 0;
};

template <typename T>

Dque<T>::Dque(Dque<T> *oldDque) {
    capacity = 0;
    Node<T> *currentOldNode = oldDque->tail;
    for (int i = 0; i < oldDque->capacity; i++) {
        pushFront(currentOldNode->item);
        currentOldNode = currentOldNode->next;
    }
}

template <typename T>

void Dque<T>::pushFront(T item){
    if (capacity == 0) {
        head = new Node<T>(item, nullptr, nullptr);
        tail = head;
    } else {
        Node<T> *newHead = new Node<T>(item, nullptr, head);
        head->next = newHead;
        head = newHead;
    }
    capacity++;
}

template <typename T>

void Dque<T>::pushBack(T item){
    if (capacity == 0){
        tail = new Node<T>(item, nullptr, nullptr);
        head = tail;
    } else {
        Node<T> *newTail = new Node<T>(item, tail, nullptr);
        tail->previous = newTail;
        tail = newTail;
    }
    capacity++;
}

template <typename T>

T Dque<T>::popFront(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    Node<T> *oldHead = head;
    head = head->previous;
    capacity--;
    if (capacity != 0) {
        head->next = nullptr;
    }
    T item = oldHead->item;
    delete oldHead;
    return item;
}

template <typename T>

T Dque<T>::popBack(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    Node<T> *oldTail = tail;
    tail = tail->next;
    capacity--;
    if (capacity != 0){
        tail->previous = nullptr;
    }
    T item = oldTail->item;
    delete oldTail;
    return item;
}

template <typename T>

T Dque<T>::front(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    return head->item;
}

template <typename T>

T Dque<T>::back(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    return tail->item;
}

template <typename T>

int Dque<T>::size(){
    return capacity;
}

template <typename T>

bool Dque<T>::isEmpty(){
    return capacity == 0;
}

template <typename T>

Dque<T>::~Dque() {
    while (!isEmpty()) {
        popFront();
    }
}

template <typename T>

void Dque<T>::checkCapacity(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
 }