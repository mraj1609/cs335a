
%%
"class"		printf("CLASS");
"{"		printf("BLOCK_ST");
"}"		printf("BLOCK_END");
"return"	printf("RETURN");
"void"		printf("NO_TYPE");
"int"		printf("INT_TYPE");
[+\-*/%][=]	printf("OP_MATH_ASS");
=		printf("OP_ASS");
[+\-*/%]	printf("OP_MATH");
[a-zA-Z0-9_]+	printf("IDENTIFIER");
;		printf("STM_TERMINATOR");

%%
