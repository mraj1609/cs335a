%{
#include "java_to_token.h"
%}

%%
"class"			return CLASS;
"instanceof"		return INSTANCEOF;
"new"			return NEW;
"super"			return SUPER;
"this"			return THIS;

"boolean"		return BOOL;
"byte"			return BYTE;
"char"			return CHAR;
"double"		return DOUBLE;
"float"			return FLOAT;
"int"			return INT;
"long"			return LONG;
"short"			return SHORT;
"void"			return VOID;

"break"			return BREAK;
"case"			return CASE;
"default"		return DEFAULT;
"else"			return ELSE;
"if"			return IF;
"switch"		return SWITCH;

"continue"		return CONT;
"do"			return DO;
"for"			return FOR;
"while"			return WHILE;

"return"		return RETURN;

"final"			return CONST;

[a-zA-Z_$][a-zA-Z0-9_]*	return ID;
;			return TRM;
,			return SEP;
:			return COLON;

[{]			return BLOCK_S;
[}]			return BLOCK_E;
\[			return ARRAY_S;
\]			return ARRAY_E;
\(			return PAREN_S;
\)			return PAREN_E;

[+\-*/%][=]		return OP_MATH_ASS;
=			return OP_ASS;
[+\-*/%]		return OP_MATH;


%%

int yywrap(void){
	return 1;
}
