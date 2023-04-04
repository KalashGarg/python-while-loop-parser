%{
#include "y.tab.h"
#include <stdio.h>
#include <stdlib.h>

#define border printf("\n****---------------------------------------------------------------------------------****\n")
%}

%%
"while"     return WHILE;
"True"      return TRUE;
"False"     return FALSE;
"not"       return NOT;
"and"       return AND;
"or"        return OR;
"print"     return PRINT;
"for"|"break"|"continue"|"pass"|"range"|"if"|"elif"|"else"              return RARE; //keywords
"import"|"class"|"def"|"return"|"del"|"nonlocal"|"global"               return RARE;
"try"|"except"|"raise"|"finally"|"exec"|"from"                          return RARE;
"in"|"is"|"as"|"lambda"|"with"|"yield"|"assert"                         return RARE;
"async"|"await"|"None"|"case"|"match"                                   return RARE;
[0-9]+      return NUMBER;
\+          return PLUS;
\-          { if(yytext[0] == '-') return UMINUS; else return MINUS; }
\*          return MUL;
\/          return DIV;
\%          return MOD;
"=="        return EQ;
"!="        return NEQ;
">="        return GTE;
">"         return GT;
"<="        return LTE;
"<"         return LT;
\(          return LBRACKET;
\)          return RBRACKET;
\:          return COLON;
\=          return ASSIGN;
[_a-zA-Z][_a-zA-Z0-9]*  return ID;
[ \t]       ; // ignore whitespace
[ \n] { printf("loop expression is without colon: %s\n", yytext); exit(1); }
. { printf("Unrecognized token: %s\n", yytext); exit(1); }

%%

