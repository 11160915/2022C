#include <stdio.h>
int main()
{
    printf("請輸入1個數字:");
    int n;
    scanf("%d",&n);
    printf("用8除於%d\n",n%8);
    printf("用9除於%d\n",n%9);
    printf("用15除於%d\n",n%15);
}
