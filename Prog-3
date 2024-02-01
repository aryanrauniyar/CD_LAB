%{
#include<stdio.h>
%}
%%
int|char|float|else|for|void|mainz\while {printf("\n%s is keyword",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("\n%s is identifier",yytext);}
[0-9]* {printf("\n%s is a constant",yytext);}
[+*^%/<>&=()|]* {printf("\n%s is operator",yytext);}
[?|,.'";!:]* {printf("\n%s is punctuation",yytext);}
%%
int yywrap()
{
}
int main()
{
printf("enter input\n");
yylex();
return 0;
}
