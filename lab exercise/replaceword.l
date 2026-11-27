%{
#include<stdio.h>
%}
%%
apple   { printf("orange"); }
.|\n    { ECHO; }
%%
int main()
{
    printf("Enter text (apple will be replaced with orange):\n");
    yylex();
    return 0;
}
int yywrap(){ return 1; }
