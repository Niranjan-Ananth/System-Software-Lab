/*
Author : Niranjan A
Program to count the number of words, spaces, lines and characters.
*/
%{
#include<stdio.h>
int l=0, c=0, w=0, s=0;
%}
%%
[^ \t\n,."'/]+ {w++; c+=yyleng;}
[ ] {s++;}
[\n] {l++;}
. {c++;}
%%

int main(int argc, char*argv[]){
    yyin=fopen(argv[1], "r");
    yylex();
    printf("Lines: %d\nSpaces: %d\nWords: %d\nCharacters: %d\n", l, s, w, c);
    return 0;
}
