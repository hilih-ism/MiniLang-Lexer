# MiniLang-Lexer

MiniLang-Lexer is a lexical analysis tool for the MiniLang programming language. It tokenizes input MiniLang programs, recognizing and categorizing tokens such as operators, numerical values, and identifiers.

## Compilation:

To compile the MiniLang lexical analysis tool, follow these steps:

1. **Navigate to the project directory:** Open your command line terminal and navigate to the directory containing the MiniLang-Lexer source code.

2. **Compile the Flex code:** Use Flex to generate the C code from the Flex specification file (`Main.l`). Run the following command:

   ```sh
   flex Main.l
   ```

   This command generates a C source file named `lex.yy.c` from the Flex specification file (`Main.l`).

3. **Compile the C code:** Compile the generated C source file (`lex.yy.c`) into an executable program. Use the GNU Compiler Collection (GCC) for this purpose. Run the following command:

   ```sh
   gcc lex.yy.c -o Main
   ```

   This command compiles the C source file into an executable program named `Main`.

## Usage:

Once the MiniLang-Lexer is compiled successfully, you can use it to tokenize MiniLang programs. Follow these steps to tokenize an input MiniLang program:

1. **Prepare the input MiniLang program:** Create or obtain a MiniLang program file that you want to tokenize.

2. **Run the MiniLang-Lexer:** Execute the compiled MiniLang-Lexer program (`Main`) with the input MiniLang program file as a command-line argument. Use the following command:

   ```sh
   >>Main.exe input_file.ext
   ```

   Replace `input_file.ext` with the path to your input MiniLang program file with the right extension.

3. **View the tokenization output:** The MiniLang-Lexer will tokenize the input MiniLang program and print the recognized tokens along with their types to the console. Review the tokenization output to verify that the MiniLang program is correctly tokenized.

## Sample Input MiniLang Programs:

For testing purposes, here are some sample input MiniLang programs that you can use with the MiniLang-Lexer:

1. **Valid MiniLang Program:**

   ```plaintext
   x = 10 + y * 5
   y = x - 3
   result = x / y
   ```

2. **Invalid MiniLang Program (with syntax errors):**

   ```plaintext
   x = 10 + y * 5;
   y = x - 3;
   result = x / ;
   ```

   This program contains syntax errors and should trigger error messages from the MiniLang-Lexer.

## Contributing:

Contributions to MiniLang-Lexer are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request on the project's GitHub repository.
