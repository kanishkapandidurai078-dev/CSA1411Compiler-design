%{
#include<stdio.h>
%}
%x COMMENT
%%
"//".*          ;
"/*"            { BEGIN COMMENT; }
<COMMENT>"*/"    { BEGIN INITIAL; }
<COMMENT>\n      ;
<COMMENT>.       ;
[\t\n]            ;
.               { ECHO; }
%%
int main()
{
    yylex();
    return 0;
}
int yywrap(){ return 1; }
