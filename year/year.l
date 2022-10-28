%{
	#include<stdio.h>
	#include<string.h>
	int x;
%}
YEAR ([0-9])+
%%
{YEAR} {
     x=atoi(yytext);
    if(x%400==0)   
        printf("\nleap year\n");
  
    else if(x%4==0 && x%100!=0)
        printf("\nleap year\n");
  
    else
        printf("\nnot a leap year\n");
      }
%%

int yywrap(){}
int main()
{
	yylex();
	return 0;
}