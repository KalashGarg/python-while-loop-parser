%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define border printf("\n****---------------------------------------------------------------------------------****\n")
int yydebug=1;
%}

%token PRINT RARE 
%token WHILE TRUE FALSE NOT AND OR NUMBER PLUS UMINUS MINUS MUL DIV MOD EQ NEQ GT GTE LT LTE LBRACKET RBRACKET COLON ASSIGN ID


// set precedence
%left OR
%left AND
%left NOT
%left EQ NEQ GTE GT LTE LT
%left PLUS MINUS
%left MUL DIV MOD
%right UMINUS


%%

program: statement
        ;

statement: while_stmt { printf("\nThis is a valid python expression\n"); border; YYACCEPT;}
         ;

while_stmt: WHILE expression COLON ; //WHILE LBRACKET expression RBRACKET COLON ;

expression: or_test
          ;

or_test: and_test
       | and_test OR or_test
       ;

and_test: not_test
        | not_test AND and_test
        ;

not_test: comparison
        | NOT not_test
        ;

comparison: arith_expr
          | arith_expr EQ arith_expr
          | arith_expr NEQ arith_expr
          | arith_expr GTE arith_expr
          | arith_expr GT arith_expr
          | arith_expr LTE arith_expr
          | arith_expr LT arith_expr
          ;

arith_expr: term
          | arith_expr PLUS term
          | arith_expr MINUS term
          ;

term: factor
    | term MUL factor
    | term DIV factor
    | term MOD factor
    ;

factor: ID
      | NUMBER
      | LBRACKET expression RBRACKET
      | UMINUS factor %prec UMINUS
      | keyword { yyerror("\nkeyword can't be used as a identifier\n"); YYABORT; }
      ;

keyword : PRINT 
        | RARE


/*
start : stmt COLON { printf("Valid Python While Expression\n"); }

stmt : WHILE expression

expression : NOT expression
          | expression AND expression
          | expression OR expression
          | term


term : factor EQ factor
     | factor NEQ factor
     | factor GT factor
     | factor GTE factor
     | factor LT factor
     | factor LTE factor
     | factor


factor : ID ASSIGN expression
       | LBRACKET expression RBRACKET
       | TRUE
       | FALSE
       | NUMBER
       | ID
       | keyword { yyerror("\nkeyword can't be used as a identifier\n"); YYABORT; }
        

keyword : PRINT 
        | RARE

*/


%%

yyerror(s) {
    printf("\n%s", s);
    border;
}

int yywrap(){
    return 1;
}

int main() {
    printf("  Enter a Python While Expression : ");
    return yyparse();   
}


/*No, the current lexer definition does not handle the ++ and -- operators as they are not defined in Python syntax. Python uses +=1 and -=-1 to increment and decrement variables respectively. Therefore, the lexer will not recognize ++ and -- as valid tokens, and the parser will raise a syntax error.

C:\Users\user\Desktop\lex codes>bison -dy parser.y

C:\Users\user\Desktop\lex codes>flex parser.l

C:\Users\user\Desktop\lex codes>gcc lex.yy.c y.tab.c -o loop-parser

C:\Users\user\Desktop\lex codes>loop-parser

C:\Users\user\Desktop\lex codes>bison -v parser.y > yy.output

C:\Users\user\Desktop\lex codes>yy.output

*/


//assumption : while loop will accept only aritmmetic expression inside it but doesn't handle lists ex : while x in list