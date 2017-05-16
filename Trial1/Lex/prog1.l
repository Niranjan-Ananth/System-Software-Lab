%{
#include<stdio.h>
int l=0, c=0, w=0, s=0;
%}
%%
[^ \t\n,."'/]+ {w++;}

