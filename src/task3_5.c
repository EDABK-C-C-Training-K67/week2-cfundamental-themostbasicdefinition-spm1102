//Write a program to read an HUST Student ID. Print the year that the student started studying at HUST. 
//Only use scanf and printf.
//No string processing allowed.

#include<stdio.h>

int main(){
    int n;
    scanf("%d",&n);
    int id = n % 1000;
    n = (n - id)/1000
    printf("%d",n);
    printf("\n %d",n * 2 + n % 100);
    return 0;
}
