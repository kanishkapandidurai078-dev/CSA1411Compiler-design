%{
#include<stdio.h>
#include<string.h>
int count=0;
%}
%%
[a-zA-Z]+  { if(strcmp(yytext,"hello")==0) count++; }
.|\n        ;
%%
int main()
{
    printf("Enter text (counting hello):\n");
    yylex();
    printf("Frequency of hello = %d\n",count);
    return 0;
}
int yywrap(){ return 1; }
