//Write a program to read student information in CSV format. 
//Print each information on a single line. Only use scanf and printf.

#include<stdio.h>

int main(){
    char name[31], ID[9], Class[10], Gen[4];
    float GPA;
    scanf("%[^,],%[^,],%[^,],%[^,],%f", name, ID, Class, Gen, &GPA);

    printf("%s\n",name);
    printf("%s\n",ID);
    printf("%s\n",Class);
    printf("%s\n",Gen);
    printf("%.2f",GPA);
    return 0;
}
