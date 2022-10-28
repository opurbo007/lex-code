%{
#include<stdio.h>
#include<string.h>
int line=1, space=0, word=0, ch=0;
%}
 
CH .
LINE \n
SPACE ([ ])+          
WORD ([a-zA-Z0-9])*  

END \n\n               
%%

{LINE}    {line++;ch++;}  
{SPACE}   {space++;}  
{WORD}    {word++;}     
{CH}      {ch++;}       
{END}   {printf("\nTotal Line : %d", line);printf("\nTotal Space : %d", space);printf("\nTotal Words : %d", word);printf("\nTotal charcters: %d", ch);}

%%

int yywrap(){}
int main()
{

yylex();

return 0;
}