%{
    #include <iostream>
    #include <string>
    #include <map>
    int yylex (void);
    void yyerror (char const *);
    std::map<int,std::string> tabla;
    int n=1;
%}

%union{
    int value;
    std::string name;
}

%token ID

%%
S   : A
    ;

A   : A ID
    | ID    {$$.}
    ;

%%

