%{

#include <iostream>
#include <string>

using namespace std;

#include "parser.tab.h"
//extern "C" int yylex(void);
%}

%%

"int"  return INT;
"float" return FLOAT;
"char"  return CHAR;
"void"  return VOID;

"while" return(WHILE);
"if"    return(IF);
"else"  return(ELSE);
"return"    return(RETURN);

"<="    return(LE_OP);
">="    return(GE_OP);
"!="    return(NE_OP);
"=="    return(EQ_OP);

"&&"    return(AND_OP);
"||"    return(OR_OP);

[ \n\t]+            ;
[\/\/][a-zA-Z_0-9\(\)\,\{\}\[\]\=\*\-\;]* ;

[a-zA-Z]+[a-zA-Z_0-9]*           {return ID;}

[0-9]+              {return NUM;}

[+\*\(\)\-\/\=\^\;\<\>\{\}\,\[\]]         return *yytext;

.                   {cerr « "Error léxico, caracter (" « yytext« ") desconocido\n";}
%%
