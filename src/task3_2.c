//Develop a program that receives a real number and precision as input and prints the number 
//with the specified precision to the console.
#include<stdio.h>

int main(){
    double a;
    int n;
    scanf("%lf",&a);
    scanf("%d",&n);
    printf("%.*lf",n,a);

    return 0;
}
