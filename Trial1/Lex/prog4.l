/*
Author : Niranjan A
Program to identify and count the number of identifiers
*/

%{
#include<stdio.h>
int c=0;
%}
%%
"printf"|"scanf"|"int"|"float" {printf("%s is an keyword\n",yytext);}
[a-zA-Z][a-zA-Z0-9]* {printf("%s is an identifier\n",yytext); c++;}
.* {printf("%s is an not an identifer\n",yytext);}
\n {;}
%%

int main(int argc, char*argv[]){
    yyin=fopen(argv[1], "r");
    yylex();
    printf("Number of identifers is : %d\n", c);
    return 0;
}
