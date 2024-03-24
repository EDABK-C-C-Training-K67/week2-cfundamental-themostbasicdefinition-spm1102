// Write a program to read a string containing spaces and then print that string. Only use scanf and printf.
#include<stdio.h>
#include<string.h>

int main(){
    char a[100];
    printf("Type a string including space: "); 
    scanf("%[^\n]", a);
    printf("The enter string is: %s",a);
    return 0;
}