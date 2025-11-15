/* Tous les caractères "." ou "?" qui se trouvent à la fin d’une ligne  */
%{
%}
caractere [.?]$
%%
{caractere} printf("Symbole %s reconnu à la fin de ligne\n",yytext);
.       ;
\n      ;
%%
int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}