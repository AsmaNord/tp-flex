%{
%}
binaire (0|1)+
decimal [0-9]+
%%
{binaire} printf("%s C'est un nombre binaire",yytext);
{decimal} printf ("%s C'est un nombre decimal",yytext);
%%
int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}