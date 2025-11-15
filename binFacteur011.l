%{
%}
%%
[01]*011[01]* printf("Chaine binaire %s contient le facteur 011",yytext);
\n          ;
.           ;
%%
int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}