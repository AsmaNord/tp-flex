/* Toutes les chaînes de lettres commençant par "a" et se terminant par "e" */
/* chaineAE a[a-zA-Z]*e */ 
/* problem => elle reconue meme si ae est au milieu d'un autre mot */
%{
    int length;
%}
%%
a[a-zA-Z]*e printf("Chaîne reconnue: %s\n", yytext);
.                   /* Ignorer les autres caractères */;
\n                  /* Ignorer les sauts de ligne */;
%%
int main() {
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}