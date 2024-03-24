#include<stdio.h>
#include<string.h>

int main(){
    int i;
    for(i=0;i<40;i++){
        printf("=");
    }
    printf("\n");
    printf("               ");
    printf("FILE REPORT");
    printf("\n");
    for(i=0;i<40;i++){
        printf("=");
    }
    printf("\nFile address:       3F5E83");
    printf("\nPath:               C:\\User\\Administrator\\Downloads\\file.txt");
    printf("\nContent:            \"Hello World!\"");
    printf("\nAuthor:             Tran Quang Huy");
    printf("\nSize:               4KB");
    printf("\n\nMetadata:");
    printf("\nDate created:       19//03//2024");
    printf("\nDate modified:      20/03/2024");
    

    return 0;
}