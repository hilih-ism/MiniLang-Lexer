# MiniLang-Lexer

## Compilation:
To compile the MiniLang lexical analysis tool, use the following command:
```sh
flex MiniLangLex.l
gcc lex.yy.c -o MiniLangLex -lfl
