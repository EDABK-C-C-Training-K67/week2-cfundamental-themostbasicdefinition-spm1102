//Implement a program that prompts the user to enter student information
//via the console and then prints that information in the following format:
//Implement a program that prompts the user to enter student information
//via the console and then prints that information in the following format:
#include<stdio.h>

int main(){
    char name[31], id[9], day[3],month[3],year[5], field[150], class[8],gen[4];
    int number;
    float gpa;
    scanf("%[^\n] ",name);
    scanf("%[^\n] ",id);
    scanf("%[^-]-%[^-]-%[^\n]",day,month,year);
    getchar();
    scanf("%[^\n]",field);
    scanf("%s ",class);
    scanf("%d",&number);
    scanf("%s ",gen);
    getchar();
    scanf("%f",&gpa);

    printf("Name: %s\n",name);
    printf("ID: %s\n",id);
    printf("Date of birth: %s/%s/%s\n",day,month,year);
    printf("Field: %s\n",field);
    printf("Class: %s-0%d-%s\n",class,number,gen);
    printf("GPA: %f",gpa);
    return 0;
}