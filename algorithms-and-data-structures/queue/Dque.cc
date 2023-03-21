#include "Dque.h"

template <typename T>

Dqueue<T>::Dqueue() {
    head = nullptr;
    tail = nullptr;
    capacity = 0;
};

template <typename T>

Dqueue<T>::Dqueue(Dqueue<T> *oldDqueue) {
    // head = new Node<T>(oldDqueue->head->item);
    //tail = new Node<T>(oldDqueue->tail->item);
    // Node<T> *currentNewNode = head;
    // Node<T> *currentOldNode = oldDqueue->head->next;
    // int i = 1;
    // while(i < oldDqueue->capacity){
    //     currentNewNode->previous = new Node<T>(currentOldNode->item, nullptr, currentNewNode);
    //     currentNewNode = currentNewNode->previous;
    //     currentOldNode = currentOldNode->previous;
    //     i++;
    // }
    // tail = currentNewNode;
    Node<T> *currentOldNode = oldDqueue->tail;
    for (int i = 0; i < oldDqueue->capacity; i++) {
        pushFront(currentOldNode->item);
        std::cout << i << " tut " << currentOldNode->item << std::endl;
        currentOldNode = currentOldNode->next;
    }
    std::cout << " tut " << tail->item << std::endl;
}

template <typename T>

void Dqueue<T>::pushFront(T item){
    if (capacity == 0) {
        head = new Node<T>(item, nullptr, nullptr);
        tail = head;
    } else {
        
        head = new Node<T>(item, nullptr, head);
    }
    capacity++;
}

template <typename T>

void Dqueue<T>::pushBack(T item){
    if (capacity == 0){
        tail = new Node<T>(item, nullptr, nullptr);
        head = tail;
    } else {

        tail = new Node<T>(item, tail, nullptr);
    }
    capacity++;
}

template <typename T>

T Dqueue<T>::popFront(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    Node<T> *oldHead = head;
    head = head->previous;
    capacity--;
    // if (capacity != 0) {
    //     std::cout << oldHead->item << std::endl;
    //     head->next = nullptr;
    // }
    T item = oldHead->item;
    delete oldHead;
    return item;
}

template <typename T>

T Dqueue<T>::popBack(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    Node<T> *oldTail = tail;
    tail = tail->next;
    capacity--;
    // if (capacity != 0){
    //     tail->previous = nullptr;
    // }
    T item = oldTail->item;
    delete oldTail;
    return item;
}

template <typename T>

T Dqueue<T>::front(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    return head->item;
}

template <typename T>

T Dqueue<T>::back(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
    return tail->item;
}

template <typename T>

int Dqueue<T>::size(){
    return capacity;
}

template <typename T>

bool Dqueue<T>::isEmpty(){
    return capacity == 0;
}

template <typename T>

Dqueue<T>::~Dqueue() {
    while (!isEmpty()) {
        
        std::cout << 't' << std::endl;
        popFront();
    }
}

template <typename T>

void Dqueue<T>::checkCapacity(){
    if (isEmpty()) {
        throw std::out_of_range( "Dque is empty!" );
    }
 }