# Learning Assembly by Solving

Welcome to **Learning Assembly by Solving**, a collection of 20 small assembly language programs designed to teach fundamental concepts through practical examples. Each program solves a specific problem, ranging from basic arithmetic to control structures, all written in x86-64 assembly using NASM syntax for Linux systems.

## Purpose

The goal is to learn assembly language by implementing solutions to common programming problems. Each `.S` file (e.g., `1.S`, `2.S`, ..., `20.S`) in the root directory corresponds to a question listed below, providing hands-on experience with low-level programming.

## Questions and Solutions

Here’s the list of problems solved in this repository:

1. **Check if a number is even or odd**  
   Determines the parity of a number using bitwise operations.

2. **Find the maximum of two numbers**  
   Compares two numbers and outputs the larger one.

3. **Compare two numbers and print "Equal" if they're equal**  
   Checks equality and prints a message accordingly.

4. **Add two numbers and print the result**  
   Performs addition and displays the sum as a character/digit (for small results).

5. **Subtract two numbers and print the result**  
   Computes the difference and outputs it.

6. **Count from 1 to 5 and print each number on a new line**  
   Uses a loop to print numbers sequentially.

7. **Print the factorial of 5**  
   Calculates 5! (120) and displays it.

8. **Sum the numbers from 1 to 10**  
   Adds numbers in a range and prints the total (55).

9. **Check if a number is a multiple of 3**  
   Tests divisibility by 3 and outputs the result.

10. **Print the first 5 even numbers**  
    Lists 0, 2, 4, 6, 8 with a loop.

11. **Reverse a 2-digit number (e.g., 42 → 24)**  
    Swaps the digits of a two-digit number.

12. **Convert a single digit (0-9) to ASCII and print it**  
    Transforms a digit to its ASCII character for output.

13. **Print "Positive" or "Negative" based on a signed number**  
    Determines the sign of a number and prints the appropriate label.

14. **Calculate and print 2^n for small n (like 0–5)**  
    Computes powers of 2 (1, 2, 4, 8, 16, 32) and displays them.

15. **Check if a number is prime (try for small ones like 2–10)**  
    Tests primality for small integers.

16. **Store 5 numbers in memory and find their sum**  
    Sums an array of 5 numbers.

17. **Swap two variables using a temporary register**  
    Exchanges the values of two variables.

18. **Find the average of 3 numbers**  
    Calculates the integer average of three numbers.

19. **Print the alphabet A to E using a loop**  
    Outputs A, B, C, D, E on separate lines.

20. **Take two numbers and print which one is closer to 10**  
    Compares distances from 10 and prints the result.

## Files

The repository contains 20 assembly source files in the root directory:
- `1.S`, `2.S`, `3.S`, ..., `20.S`

Each file corresponds to the question number above and contains a standalone program written in x86-64 assembly.

## How to Run

To compile and execute these programs on a Linux system with NASM installed:

1. **Assemble**:  
   ```bash
   nasm -f elf64 <filename>.S -o <filename>.o
   ```
   Example: nasm -f elf64 1.S -o 1.o

2. **Link:**

  ```bash
  ld <filename>.o -o <filename>
  ```
  Example: ld 1.o -o 1

3. **Run:**

  ```bash
  ./<filename>
  ```
  Example: ./1

## Prerequisites

- NASM: The Netwide Assembler (install with sudo apt install nasm on Ubuntu/Debian).
- Linux: These programs target x86-64 Linux systems using system calls (e.g., write, exit).

Or try online compilers such as https://onecompiler.com/assembly/43dsexwn3

## Contributing

Feel free to fork this repository, submit pull requests, or open issues for suggestions and improvements. Contributions are welcome!

## Acknowledgments

Created as a learning exercise by Max Base to explore assembly language programming. Inspired by fundamental programming challenges adapted to the low-level environment.

## License

Copyright © 2025 Max Base. This project is licensed under the MIT License.
