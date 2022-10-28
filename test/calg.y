%{
    #include <stdio.h>
    #include <math.h>
    #define YYSTYPE int	
    extern FILE *yyin;
    extern FILE *yyout;
    int yylex(); 
    void yyerror (char const *s);      

%}
%token  num plus min divi mul power


%%

exp: num plus num	{$$ = $1+$3 ;printf("Addition: %d",$$);}
exp: num min num	{$$ = $1-$3 ;printf("substraction: %d",$$);}
exp: num divi num	{$$ = $1/$3 ;printf("Division: %d",$$);}
exp: num mul num	{$$ = $1*$3 ;printf("Multiplication: %d",$$);}
exp: num power num	{$$ = pow($1,$3)+0.5 ;printf("Power: %d",$$);}


%%

int main()
{
	printf("NASA want to hire you. Go check output file");
        yyin =  freopen("input.txt","r",stdin);
        yyout = freopen("output.txt","w",stdout);
	yyparse();
	return 0;
}


void yyerror (char const *s)
{
	fprintf (stderr, "%s\n", s);
}

int yywrap()
{
	return 1;
}

