#include <stdio.h>
#include <stdlib.h>

void orderByIncrising(int *array, int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}

void orderByDecrising(int *array, int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = 0; j < size - i - 1; j++) {
            if (array[j] < array[j + 1]) {
                int temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
}

int main() {
    int *elements = NULL;
    int size = 0;
    int newElement;

    while (1) {
        printf("Digite um elemento (ou -1 para encerrar): ");
        scanf("%d", &newElement);

        if (newElement == -1) {
            break;
        }

        size++;
        elements = (int *)realloc(elements, size * sizeof(int));
        elements[size - 1] = newElement;
    }

    while (1) {
        printf("\n elementos inseridos:\n");
        for (int i = 0; i < size; i++) {
            printf("%d ", elements[i]);
        }

        int optionSelector;
        printf("\n\nEscolha a ordem de ordenação:\n");
        printf("1. Crescente\n");
        printf("2. Decrescente\n");
        printf("3. Sair\n");
        scanf("%d", &optionSelector);

        switch(optionSelector){
            case(1):
                system("cls");
                orderByIncrising(elements, size);
                break;
            case(2):
                system("cls");
                orderByDecrising(elements, size);
                break;
            case(3):
                exit(0);
                break;
            default:
                printf("Opcao invalida. Tente novamente.\n");
        }

        printf("\n elementos ordenados:\n");
        for (int i = 0; i < size; i++) {
            printf("%d ", elements[i]);
        }
    }

    free(elements);

    return 0;
}
