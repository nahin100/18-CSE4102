%option noyywrap

%{
#include "prog1.tab.h"
%}

%%
"I" {return(N);}
"eat" {return(V);}
"rice" {return(O);}
%%