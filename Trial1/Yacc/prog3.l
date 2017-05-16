/*Author : Niranjan A
Program to evaluate an expression
*/
%{
#include "y.tab.c"
%}
%%
[0-9]+ {yylval=atoi(yytext); return NUMBER;}
\n {return NL;}
. {return yytext[0];}
%%
