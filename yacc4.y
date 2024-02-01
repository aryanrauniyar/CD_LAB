%{
#include <ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}
%token digit
%right '^'
%left '+' '-'
%left '*' '/' 

%%
S: E {printf("\n\n");}
;
E: E '+' T { printf ("+");}
| T
;
E: E '-' T { printf ("-");}
| T
;
T: T '*' F { printf("*");}
| F
;
T: T '/' F { printf("/");}
| F
;
F: F '^' G { printf("^");}
| G
;
G: '(' E ')'
| digit {printf("%d", $1);}
;
%%
int main()
{
printf("Enter infix expression: ");
yyparse();
}
yyerror()
{
printf("Error");
}
