%{
    #include <map>
    #include <iostream>
    #include <string>
    std::map<int,std::string> tabla;
    int n=1;
%}

%option noyywrap

digit [0-9]
ID  [a-zA-Z][a-zA-Z0-9]*

%%
{digit}+ ;
{ID}    {tabla[n]=yytext; ++n; };
.     ;
%%

int main(){
    yylex();
    for(auto it=tabla.begin(); it!=tabla.end(); ++it){
        std::cout << (*it).first << " = " << (*it).second << "\n";
    }
}
