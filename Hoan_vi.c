#include<stdio.h>
int main(){
int a,b;
scanf("%d %d",&a,&b);
//// Hoan vi 2 so nguyen su dung bien tmp
// int tmp=a;
// a=b;
// b=tmp;

// // Hoan vi 2 so nguyen su dung toan tu + va -
// a = a + b;
// b = a - b;
// a = a - b;

// // Hoan vi 2 so nguyen su dung toan tu * va /
// a = a * b;
// b = a / b;
// a = a / b;

// Hoan vi 2 so nguyen bang su dung toan tu XOR
a = a ^ b;
b = a ^ b;
a = a ^ b;

printf("%d \n",a);
printf("%d \n",b);

    return 0;
}
