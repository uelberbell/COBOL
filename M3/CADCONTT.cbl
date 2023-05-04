      ******************************************************************
      * Author:UELBER PEREIRA DE JESUS
      * Date:04/05/2023
      * Purpose:CADASTRO DE CONTATOS
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADCONTT. *>BOA PRATICA, TAMANHO COM 8 CARACTERS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA. *> PONTO SERÁ CONSEIDERADO VIRGULA.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
               "C:\Users\escrtorio\Documents\COBOL\M3\CONTATOS.TXT"
               ORGANISATION IS SEQUENTIAL
               ACCESS MODE IS SEQUENTIAL
               FILE STATUS IS WS-FS.


       DATA DIVISION.
       FILE SECTION.
       FD CONTATOS.
           01 REG-CONTATOS.
               03 ID-CONTATO       PIC 99.
               03 NM-CONTATO       PIC X(15).

       WORKING-STORAGE SECTION.
       77 WS-FS        PIC 99.
           88 FS-OK    VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            STOP RUN.
       END PROGRAM CADCONTT. *>BOA PRATICA, TAMANHO COM 8 CARACTERS.
