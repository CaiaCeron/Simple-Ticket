#include <stdio.h>
#include <stdlib.h>

#define MAX_ELEMENTS 100

char elements[MAX_ELEMENTS][50];
int counter = 0;

void insertElement(char *element) {
    if (atoi(element) >= 0) {
        strcpy(elements[counter], element);
        counter++;
        printf("Elemento %s registrado com sucesso.\n", element);
    } else {
        printf("Elementos com numeros negativos não são permitidos.\n");
    }
}

void showInsertedElements() {
    printf("Elementos registrados:\n");
    for (int i = 0; i < counter; i++) {
        printf("%s\n", elements[i]);
    }
}

void removeElement(int elementIndex) {
    if (elementIndex >= 0 && elementIndex < counter) {
        for (int i = elementIndex; i < counter - 1; i++) {
            strcpy(elements[i], elements[i + 1]);
        }
        counter--;
        printf("Elemento removido com sucesso.\n");
    } else {
        printf("indice invalido.\n");
    }
}

void registeredElements() {
    printf("Quantidade de elementos registrados: %d\n", counter);
}

void ShowElementsInReverseOrder() {
    printf("Elementos na ordem inversa de insercao:\n");
    for (int i = counter - 1; i >= 0; i--) {
        printf("%s\n", elements[i]);
    }
}

int main() {
    int optionSelector, index;
    char input[50];

    while (1) {

        printf("Menu:\n");
        printf("1. Registrar um novo elemento\n");
        printf("2. Listar elementos\n");
        printf("3. Excluir um elemento\n");
        printf("4. Ver a quantidade de elementos inseridos\n");
        printf("5. Listar elementos na ordem inversa\n");
        printf("6. Sair\n");

        scanf("%d", &optionSelector);


        switch (optionSelector) {
            case 1:
                system("cls");
                printf("Digite o elemento a ser registrado: ");
                scanf("%s", input);
                insertElement(input);

                break;
            case 2:
                system("cls");
                showInsertedElements();

                break;
            case 3:
                system("cls");
                printf("Digite o indice do elemento a ser excluido: ");
                scanf("%d", &index);
                removeElement(index);

                break;
            case 4:
                system("cls");
                registeredElements();
                break;
            case 5:
                system("cls");
                ShowElementsInReverseOrder();
                break;
            case 6:
                exit(0);
            default:
                printf("Opcao invalida. Tente novamente.\n");
        }
    }

    return 0;
}
