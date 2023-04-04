# python-while-loop-parser
A simple parser for python made using lex yacc / GNU's flex bison.

The stable version currently supports only certain python expressions as stated below. The code for the same is in python-expression-parser directory. A similarly made python for-loop parser can also be found in the python-loop-parser directory.

## Build :

C:\Users\user\Desktop\lex codes>bison -dy parser.y

C:\Users\user\Desktop\lex codes>flex parser.l

C:\Users\user\Desktop\lex codes>gcc lex.yy.c y.tab.c -o loop-parser

C:\Users\user\Desktop\lex codes>bison -yvd --graph --report=all parser.y



## Run : 

C:\Users\user\Desktop\lex codes>loop-parser

## Screenshots

![App Screenshot]
 
