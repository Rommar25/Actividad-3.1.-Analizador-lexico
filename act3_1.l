%{
#include <stdio.h>
%}

%%
"//".*                { printf("COMMENT\n"); }
"f"                   { printf("floatdcl\n"); }
"i"                   { printf("intdcl\n"); }
"p"                   { printf("print\n"); }
[a-zA-Z][a-zA-Z0-9]*  { printf("id\n"); }
"="                { printf("assign\n"); }
"+"                { printf("plus\n"); }
"-"                { printf("minus\n"); }
"*"                { printf("multiply\n"); }
"/"                { printf("divide\n"); }
[0-9]+.[0-9]+        { printf("fnum\n"); }
[0-9]+                { printf("inum\n"); }
[ \t\n]            { /* Ignore whitespace */ }
.                  { printf("ERROR: Unknown token: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
