/*
Author : Niranjan A
Program to identify identifiers and operands, and identify if the arithmetic expression is valid
*/

%{
#include<stdio.h>
int stack=0, opd=0, opt=0, valid=1;
%}
%%
"(" {stack++;}
")" {stack--; if(stack < 0) {valid=0;}}
[a-zA-Z][a-zA-Z0-9]* {opd++; printf("%s is an operand\n",yytext);}
[+\-*/] {opt++; printf("%s is an operator\n",yytext);}
%%

int main(){
    yylex();
    if(stack==0 && valid==1 && opd - opt == 1){
        printf("Valid\n");
    }
    else{
        printf("Invalid\n");
    }
    return 0;
}
