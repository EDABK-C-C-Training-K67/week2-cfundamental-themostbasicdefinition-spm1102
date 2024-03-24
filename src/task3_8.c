//Write a program to read a string containing only spaces, lowercase characters, 
//numbers from 0 to 4 and 8, '@' and '.'. The string should stop reading when it reaches any other character. 
//Print that string. Only use scanf and printf.
#include<stdio.h>
//Check whether the input character satisfy the given condition
int check(char c){
    if(((int)c >= 97 && (int)c <= 122) || (int)c == 32 || (int)c == 46 || (int)c == 64 || ((int)c >= 48 && (int)c <= 52) || (int)c == 56){
            return 1;
        }
        else return 0;
}
int main(){
    char str[100];
    printf("Type a string satisfying the given format: ");
    scanf("%[^\n]",str);
    int i = 0;
    while(check(str[i])){
        printf("%c", str[i]);
        i++;
    }
}