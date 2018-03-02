 /*Definitions*/
alpha	[a-zA-Z]
digit	[0-9]
%{
int nlines = 0;
%} 


%%
 /*Rules*/

 /*The integer type*/
"int"		{return INT;}

 /*Typical assignment, arithmetic, relational and logical expressions*/
 /*Modifiers operators*/
"="			{return ASSIGN;}
"++"		{return OP_INC;}
"--"		{return OP_DEC;}

 /*Arithmetic operators*/
"+"			{return OP_ADD:}
"-"			{return OP_SUB;}
"*"			{return OP_MULT;}
"/"			{return OP_DIV;}

 /*Logic operators*/
"!"			{return OP_NOT;}
"&&"		{return OP_AND;}
"||"		{return OP_OR;}

 /*Comparison operators*/
"=="		{return OP_EQ;}
"!="		{return OP_NEQ;}
"<"			{return OP_LST;}
"<="		{return OP_LEQ;}
">"			{return OP_GRT;}
">="		{return OP_GEQ;}

 /*Parentheses*/
"("			{return LPAREN;}
")"			{return RPAREN;}


[ \t]		;
[\n]		{nlines++;}
"scanf"		{return SCANF;}
"printf"	{return PRINTF;}
[&]			{return MEMADDRESS;} /*only for Scanf*/
"if"		{return IF;}
"else"		{return ELSE;}
"while"		{return WHILE;}
"return"	{return RETURN;}

 /*Access operator*/
"["			{return LBRACKET;}
"]"			{return RBRACKET;}

 /*Compound statements*/
"{"			{return LBRACE;}
"}"			{return RBRACE;}



%%
 /*UserCode*/

