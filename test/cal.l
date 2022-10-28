%{
	#include <stdio.h>
	#include "calg.tab.h"
    extern int yylval;
     
%}


%%
[0-9]+      {yylval = atoi(yytext) ; return num ;}

"+"         {return plus;}
"-"         {return min;}
"*"         {return mul;}
"/"         {return divi;}
"^"         {return power;}

%%