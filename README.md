# Python-while-loop-parser

A simple parser for python made using lex yacc / GNU's flex bison.

## Build :

```bash
C:\Users\user\Desktop\lex codes>bison -dy parser.y

C:\Users\user\Desktop\lex codes>flex parser.l

C:\Users\user\Desktop\lex codes>gcc lex.yy.c y.tab.c -o loop-parser

C:\Users\user\Desktop\lex codes>bison -yvd --graph --report=all parser.y
```



## Run : 

```bash
C:\Users\user\Desktop\lex codes>loop-parser
```

## Screenshots

![App Screenshot](https://github.com/KalashGarg/python-while-loop-parser/blob/main/Screenshots/handled.PNG)

![App Screenshot](https://github.com/KalashGarg/python-while-loop-parser/blob/main/Screenshots/handled1.PNG)

## Syntax

 while expression :

## Assumptions

 1. Each Statement starts with while
 
 2.	Each statement ends with colon( : ) 

## Cases Handled

 1.	Arithmetic expression separated by relational and logical operators inside while loop condition
 
```bash
while a+b > 0 :
while (c * 2 <= d + e) :
while (a+b < c and c == d + e) :
```


 2. Identifier inside while loop
 
```bash
while a :
```

 3.	Boolean inside while loop .
 
```bash
while true :
while false :
```

 4. Keywords can’t be identifiers.
 
 ```bash
while continue :
while print == 4 :
 ```
     
## Cases not handled

 1. Can’ t use while loop inside while loop(nested while)
 
 ```bash
while condition :
  while condition :
 ```

 2. Can’t use while loop for lists  , sets, tuples
 
 ```bash
 while elt in list :
 while elt in set :
 ```
     
     


 
