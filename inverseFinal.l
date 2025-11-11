%{
%}
%%
"a" printf("z");
"z" printf("a");
%%
int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}