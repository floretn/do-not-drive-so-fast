#include <iostream>
#include <cmath>

using namespace std;

int partition(int *array, int right, int left) {
    int pivot = array[(int) floor((right + left) / 2)];
    while (right <= left) {
        while (array[right] < pivot) {
            right++;
        }
        while (array[left] > pivot) {
            left--;
        }
        if (right <= left) {
            if (right != left) {
                int temp = array[right];
                array[right] = array[left];
                array[left] = temp;
            }
            right++;
            left--;
        }
    }
    return right;
}

void quickSortPrivate(int *array, int size, int right, int left) {
    if (size != 1) {
        int indexResult = partition(array, right, left);
        if (right < indexResult - 1) {
            quickSortPrivate(array, size, right, indexResult -1);
        }
        if (left > indexResult) {
            quickSortPrivate(array, size, indexResult, left);
        }
    }


}

int* quickSort(int *array, int size) {
    quickSortPrivate(array, size, 0, size - 1);
    return array;
}

int main() {
    // int array[] = {3, 2, 1, 5, 3, 11, 0};
    int array[] = {6, 1, 9, -12, 695, 13, 16, 13, -43, 13, 55, 76};
    int len = sizeof(array)/sizeof(array[0]);
    quickSort(array, len);
    for (int i = 0; i < len; i++) {
        cout << array[i] << ' ';
    }
    return 0;
}