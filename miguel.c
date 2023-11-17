#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>

typedef struct {
    int *arr;
    size_t size;
}Sussy;

Sussy miguel_sort(uint32_t *arr, size_t size){
    bool* lol = calloc(4294967296, sizeof(bool));
    Sussy sussy;   
    sussy.arr = malloc(size*sizeof(uint32_t));
    sussy.size = 0;
    for (ptrdiff_t i = 0; i < size; i++){
        lol[arr[i]] = true;
    }
    for(ptrdiff_t i = 0; i < 4294967296; i++){
        if (lol[i]){
            sussy.arr[sussy.size] = i;
            sussy.size++;
        }
    }
    return sussy;
}


