#include <stdio.h>
#include "java_to_token.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

int main(void){
	int ntoken,vtoken;
	ntoken=yylex();
	while(ntoken){
		printf("%d",ntoken);
		ntoken=yylex();
	}
	return 0;
}

