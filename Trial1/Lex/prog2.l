/*
Author : Niranjan A
Program to count the number of comments in a C program
*/

%{
#include<stdio.h>
int c=0;
%}
%%
"/*"[^("*/")]+"*/" {c++;}
"//" {c++;}
. {;}
[\n] {;}
%%
int main(int argc, char*argv[]){
    yyin=fopen(argv[1], "r");
    yylex();
    printf("The number of comments is : %d\n", c);
    return 0;
}
