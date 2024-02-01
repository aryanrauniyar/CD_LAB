%{ 
/* Definition section */
#include<stdio.h> 
int flag=0; 
%} 

%token NUMBER 

%right '^'
%left '+' '-'

%left '*' '/' '%'

%left '(' ')'

/* Rule Section */
%% 

expr:E {printf("Valid expression\n");
printf("Result : %d\n",$$);
return 0;}
E:E'+'E {$$=$1+$3;} 

|E'-'E {$$=$1-$3;} 

|E'*'E {$$=$1*$3;} 

|E'/'E {$$=$1/$3;} 

|E'%'E {$$=$1%$3;} 

|E'^'E {$$=$1^$3;}

|'('E')' {$$=$2;} 

| NUMBER {$$=$1;} 

; 

%% 

//driver code 
void main() 
{ 
printf("\nEnter Any Arithmetic Expression:\n"); 

yyparse(); 
if(flag==0) 
printf("\nEntered arithmetic expression is Valid\n\n"); 
} 

void yyerror() 
{ 
printf("\nEntered arithmetic expression is Invalid\n\n"); 
flag=1; 
} 

