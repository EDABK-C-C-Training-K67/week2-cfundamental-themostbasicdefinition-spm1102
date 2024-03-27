//Write a program to read a student name and print to console.
// Only use scanf and printf. No string processing allowed.
#include<stdio.h>

int main(){
    char name[100];// string to save the full name 
    char dummy[50];// String to save the redundant part
    scanf("%[^:]: %[^\n]",dummy, name);
    printf("%s",name);

    return 0;
}