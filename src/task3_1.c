//Develop a program that receives a real number as input and prints the number to the console.
#include<stdio.h>
#include<math.h>

int main(){
    double a;
    do{
        printf("Type a real number with maximum of 6 digits: ");
        scanf("%lf",&a);
    } while ((long long)(a * pow(10,6)) != a * pow(10,6));
    printf("The real number is: %f",a);
    return 0;
}