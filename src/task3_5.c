//Write a program to read an HUST Student ID. Print the year that the student started studying at HUST. 
//Only use scanf and printf.
//No string processing allowed.

#include<stdio.h>

int main(){
    int n;
    printf("Type your HUST student ID: "); scanf("%d",&n);
    while(n>10000){
        n /= 10;
    }
    printf("%d",n);
    printf("\n %d",n * 2 + n % 100);
    return 0;
}