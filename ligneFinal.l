%{
    int cpt = 0;
%}

%%
\n cpt++;
. { };
%%
int main(){
    yylex();
    printf("Le nombre de ligne est: %d",cpt);
    return 0;
}
int yywrap(){
    return 1;
}