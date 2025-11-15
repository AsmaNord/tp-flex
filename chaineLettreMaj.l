/* Reconnaître toutes les chaînes de lettres commençant par une majuscule au début d’une ligne. */
%{
%}

lettreMaj       [A-Z]
lettreMajDebut  ^{lettreMaj}[a-zA-Z]*

%%
{lettreMajDebut}   printf("Chaîne reconnue : %s\n", yytext);
\n                  ;   /* ignore newline */
.                   ;   /* ignore other characters */
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
