#include<stdio.h>
#include<string.h>

int main(){
    int a = 4;
    float b = 3.14;
    char c = 97;
    unsigned short d = 128;
    char string[]="Hello World!";
    printf("%d\n",a);
    printf("%f\n",b);
    printf("%c\n",c);
    printf("%hd\n",d);
    printf("%[^\n]",string);
    return 0;
}
