//Write a program to read a string until it reaches a number. Print that string. Only use scanf and printf.
#include<stdio.h>

int main(){
    char str[214];
    printf("Type a string with space and number: "); scanf("%[^0-9]",str);
    printf("%s",str);
    return 0;
}