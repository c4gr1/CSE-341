ID [a-zA-Z][a-zA-Z0-9_]*
VALUE 0|[1-9][0-9]*

%%

"and" {printf("%s: KW_AND\n",yytext); }
"or" {printf("%s: KW_AOR\n",yytext); }
"not" {printf("%s: KW_NOT\n",yytext); }
"equal" {printf("%s: KW_EQUAL\n",yytext); }
"less" {printf("%s: KW_LESS\n",yytext); }
"nil" {printf("%s: KW_NIL\n",yytext); }
"list" {printf("%s: KW_LIST\n",yytext); }
"append" {printf("%s: KW_APPEND\n",yytext); }
"concat" {printf("%s: KW_CONCAT\n",yytext); }
"set" {printf("%s: KW_SET\n",yytext); }
"deffun" {printf("%s: KW_DEFFUN\n",yytext); }
"for" {printf("%s: KW_FOR\n",yytext); }
"if" {printf("%s: KW_IF\n",yytext); }
"exit" {printf("%s: KW_EXIT\n",yytext); }
"load" {printf("%s: KW_LOAD\n",yytext); }
"disp" {printf("%s: KW_DISP\n",yytext); }
"true" {printf("%s: KW_TRUE\n",yytext); }
"false" {printf("%s: KW_FALSE\n",yytext); }
"EXIT" {return 0;}

"+" {printf("%s: OP_PLUS\n",yytext); }
"-" {printf("%s: OP_MINUS\n",yytext); }
"/" {printf("%s: OP_DIV\n",yytext); }
"*" {printf("%s: OP_MULT\n",yytext); }
"(" {printf("%s: OP_OP\n",yytext); }
")" {printf("%s: OP_CP\n",yytext); }
"**" {printf("%s: OP_DBLMULT\n",yytext); }
"“" {printf("%s: OP_OC\n",yytext); }
"”" {printf("%s: OP_CC\n",yytext); }
"," {printf("%s: OP_COMMA\n",yytext); }
";;" {printf("%s: COMMENT\n",yytext); }
 
{ID} {printf("%s: IDENTIFIER\n",yytext); }
{VALUE}	{printf("%s: VALUE\n",yytext); }

"\n" { }

[ \t\n] {;}

.	{printf("SYNTAX_ERROR\n"); }

%%


int yywrap(){}

int main(){

printf("To exit program write EXIT please \n");

yylex();

return 0;

}		  
