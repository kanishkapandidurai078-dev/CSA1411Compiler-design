%{
#include<stdio.h>
int upper=0, lower=0;
%}
%%
[A-Z]   { upper++; }
[a-z]   { lower++; }
.       ;
\n      ;
%%
int main()
{
    printf("Enter text: ");
    yylex();
    printf("Uppercase = %d\n",upper);
    printf("Lowercase = %d\n",lower);
    return 0;
}
int yywrap(){ return 1; }
