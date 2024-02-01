%{
#include<stdio.h>
%}
%%
[+|-]?[0-9]*[.][0-9]* {printf("\n%s is a floating-point number\n",yytext);}
.* {printf("\n%s is not a floating-point number\n",yytext);}
%%
int yywrap()
{
}
int main()
{
printf("Enter the input.\n");
yylex();
return 0;
}
