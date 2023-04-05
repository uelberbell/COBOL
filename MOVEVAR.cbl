      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVEVAR.
       DATA DIVISION.
       FILE SECTION.

      *>****************************************************************
      *>                      DECLARANDO VARIAVEIS
      *>****************************************************************
       WORKING-STORAGE SECTION.
       77 NOME             PIC A(15) VALUE "UELBER PEREIRA".
       77 NOME2            PIC A(12) VALUE SPACES.



      *>****************************************************************
      *>                   COMANDOS|CONDICOES|FUNCOES
      *>****************************************************************
       PROCEDURE DIVISION.

           MOVE NOME (1:6) TO NOME2.

       MAIN-PROCEDURE.
            DISPLAY "PRIMEIRO NOME: " NOME
            DISPLAY "NOME QUE FOI MOVIDO: " NOME2

            STOP RUN.
       END PROGRAM MOVEVAR.
