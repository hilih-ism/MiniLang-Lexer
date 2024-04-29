%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

[ \t\n]         ; // Ignore whitespace characters
[0-9]+\.[0-9]+  { printf("Number (float): %s\n", yytext); }
[0-9]+          { printf("Number (integer): %s\n", yytext); }
[+*/-]          { printf("Operator: %c\n", yytext[0]); }
[=] {printf("Assignment Operator: %c\n", yytext[0]);}
[a-zA-Z_$][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }

. { fprintf(stderr, "Error: Unrecognized character: %c\n", yytext[0]); exit(EXIT_FAILURE); }

%%
int yywrap(){return 1;}
int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }

    yyin = file;
    yylex();

    fclose(file);
    return EXIT_SUCCESS;
}
