
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     PRINT = 258,
     RARE = 259,
     WHILE = 260,
     TRUE = 261,
     FALSE = 262,
     NOT = 263,
     AND = 264,
     OR = 265,
     NUMBER = 266,
     PLUS = 267,
     UMINUS = 268,
     MINUS = 269,
     MUL = 270,
     DIV = 271,
     MOD = 272,
     EQ = 273,
     NEQ = 274,
     GT = 275,
     GTE = 276,
     LT = 277,
     LTE = 278,
     LBRACKET = 279,
     RBRACKET = 280,
     COLON = 281,
     ASSIGN = 282,
     ID = 283
   };
#endif
/* Tokens.  */
#define PRINT 258
#define RARE 259
#define WHILE 260
#define TRUE 261
#define FALSE 262
#define NOT 263
#define AND 264
#define OR 265
#define NUMBER 266
#define PLUS 267
#define UMINUS 268
#define MINUS 269
#define MUL 270
#define DIV 271
#define MOD 272
#define EQ 273
#define NEQ 274
#define GT 275
#define GTE 276
#define LT 277
#define LTE 278
#define LBRACKET 279
#define RBRACKET 280
#define COLON 281
#define ASSIGN 282
#define ID 283




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


