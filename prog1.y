%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token N V O
%start S

%%
S: N V O ;
%%

int main()
{
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s\n", s);
}