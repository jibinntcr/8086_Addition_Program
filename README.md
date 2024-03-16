# 8086_Programs_Examples
Few interesting 8086 programs for your reference
# Assembly Addition Program

This assembly language program demonstrates simple addition of two bytes stored in memory.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Example](#example)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This program showcases how to perform addition in assembly language. It loads two bytes from memory, adds them together, and stores the result.

## Prerequisites

- **Assembler:** You need an assembler compatible with the architecture of your target platform.
- **Emulator or Hardware:** To run the assembled code, you need an emulator or hardware compatible with the target architecture.

## Usage

1. **Assemble the Code:** Use the assembler to assemble the provided assembly code.
2. **Run the Program:** Execute the assembled code using an emulator or hardware.
3. **View Output:** The result of the addition operation will be stored in the designated register or memory location.

## Example

Here's an example of the assembly code:

```assembly
; Simple addition program in assembly language

DATA SEGMENT
    NUMB1 DB 10 ; First byte to be added
    NUMB2 DB 20 ; Second byte to be added
RESULT DB ?    ; Variable to store the result
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV   AX, DATA  ; Load the data segment address into AX
    MOV   DS, AX    ; Set DS to point to the data segment

    MOV   AL, NUMB1 ; Load the first byte into AL
    ADD   AL, NUMB2 ; Add the second byte to AL
    MOV   RESULT, AL ; Store the result in the designated memory location

    ; Add any additional instructions or procedures here

    MOV   AH, 4Ch   ; Exit program
    INT   21h       ; DOS Interrupt

CODE ENDS
END START
