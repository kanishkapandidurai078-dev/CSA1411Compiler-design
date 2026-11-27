%{
#include<stdio.h>
int line=1;
%}
%%
\n      { printf("\n%d: ",++line); }
.       { ECHO; }
%%
int main()
{
    printf("1: ");
    yylex();
    return 0;
}
int yywrap(){ return 1; }
