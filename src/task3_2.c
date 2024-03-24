//Develop a program that receives a real number and precision as input and prints the number 
//with the specified precision to the console.
#include<stdio.h>
#include<math.h>

int main(){
    double a;
    int n;
    scanf("%lf",&a);
    scanf("%d",&n);
    printf("%d %.*lf",n,n,a);

    return 0;
}
