// Write a program to read a string containing spaces and then print that string. Only use scanf and printf.
#include<stdio.h>
#include<string.h>

int main(){
    char a[100];
    scanf("%[^\n]", a);
    printf("%s",a);
    return 0;
}
