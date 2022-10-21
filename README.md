# 2022C
資傳一甲 程式設計 的程式倉庫
# Week06
## Week06-1 畫星星
上週教簡單的畫星星, 重點其實是要先把樓層的鷹架印出來
```cpp
#include <stdio.h>
int main()
{
    for(int i=5;i>=1;i--){

        for(int k=0; k<i; k++) printf("*");
            printf("\n");
    }
}
```
## Week06-2 5層樓的金字塔
要先把樓層鷹架架好, 再去思考有幾個空格
```cpp
#include <stdio.h>
int main()
{
    for(int i=1;i<=5;i++){
        int space = 5-i;
        int star = i*2-1;
        for(int k=0; k<space; k++){
            printf(" ");
        }
        for(int k=0; k<star; k++){
            printf("*");
        }

        printf("鷹架:%d樓 %d空格 %d星\n", i, space, star);
    }
}
```
## Week06-3 最大公因數
交給電腦來暴力算。 for(int i=1; i<=a; i++) 會去試 1...a 的數字, 裡面寫 if(a%i==0 && b%i==0) 兩個都可以整除時, 就找到答案 ans = i; 
```cpp
#include <stdio.h>
int main()
{
    printf("請輸入2個數:");
    int a, b,ans;
    scanf("%d %d", &a, &b);
    for (int i=1; i<=a; i++){
        if( a%i==0 && b%i==0) ans=i;
    }
    printf("找到ans:%d",ans);
}
```
## Week06-4 輾轉相除法
大的a, 中的b, 取餘數得到小的c=a%b, 如果 c是0, b就是答案。
```CPP
#include <stdio.h>
int main()
{
    printf("請輸入2個數字:");
    int a,b,c;
    scanf("%d %d",&a, &b);

    while(1){
        c=a%b;
        printf("a:%d b:%d c:%d\n", a, b, c);
        if(c==0) break;
        a=b;
        b=c;
    }
}
```
## wEEK06-5 break 什麼意思? c = a%b 什麼意思? while(1) 什麼意思?
其實所有的數值幾乎都成立, 只有 0 是不成立。
```CPP
#include <stdio.h>
int main()
{
    int a=10;

    if(-999) printf("-999成立\n");
    if(-3) printf("-3成立\n");
    if(-2) printf("-2成立\n");
    if(-1) printf("-1成立\n");
    if(0) printf("0不成立,所以什麼都沒印\n");
    if(1) printf("1成立\n");
    if(2) printf("2成立\n");
    if(3) printf("3成立\n");
    if(4) printf("4成立\n");
    if(999) printf("999成立\n");
    if("a==0") printf("不管什麼東西,幾乎都成立\n");
}
```
#week 07
##week 07-1 long long int,
今天上課,復習之前教過的int整數型別, 只有32-bit,最多只能裝2,147,483,647, 所以很長很長的整數, 要用 long long int,
```cpp
#include<stdio.H>
int main()
{
    int n=1234567812345678;
    printf("%d\n",n);
    long long int a=1234567812345678;
    printf("%lld\n", a);
}
```
##week07-2 複習最大公因數
有了long long int 那我們便能回來複習最大公因數了。數字範圍再大一點, 結果要算好久。讀寫資料時要用%lld 是小寫的LLD
```cpp
#include <stdio.h>
int main()
{
    long long int a, b;
    scanf("%lld %lld", &a, &b);

    long long int ans;
    for(long long int i = 1; i<=a; i++){
            if( a%i==0 && b%i==0 ) ans = i;
    }
    printf("答案是:%lld\n", ans);
}
```
##week07-3 輾轉相除法
今天再用 long long int 很長很長的整數 再做一次。口訣是 老大a, 老二b 可以算出 老三c=a%b, 如果老三c是0, 老二b就是答案。輾轉的意是,是老二變老大, 老三變老二, 利用while(1)持續去做。
```cpp
#include <stdio.h>
int main()
{
    long long int a, b, c;
    scanf("%lld%lld", &a, &b );

    while(1){
        c= a%b;
        printf("%lld %lld %lld\n", a, b, c);
        if(c==0) break;
        a=b;
        b=c;
    }
    printf("答案是:%lld\n", b);
}
```
##week07-4 剝皮法
把數字3位一逗號。再介紹十進位的每一位數取出來,再介紹利用while(迴圈)的方法, 最後還有示範十進位轉二進位。
```cpp
#include <stdio.h>
int main()
{
    int n=123456789;

    while( n>0 ){
        printf("個位數是%d\n", n%10 );
        n = n/ 10;
    }
}
```













