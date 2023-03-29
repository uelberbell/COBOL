      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WS-VALOR         PIC S9(10) VALUE ZEROS.
       77  WS-VALOR2         PIC S9(10) VALUE 15.
       77  WS-NUMERO        PIC 9(10) VALUE 10.
       77  WS-RESULTADO     PIC S9(19) VALUE ZEROS.
       77  WS-CONT          PIC 9(02) VALUE ZEROS.


       PROCEDURE DIVISION.
              DISPLAY "DIGITE UM VALOR PARA VALOR: "
              ACCEPT WS-VALOR
      *>      ENENDENDO COMO FUNCIONA AS CONDICIONAIS NO COBOL
           IF WS-VALOR2 IS NUMERIC
               DISPLAY WS-VALOR
           END-IF.

               COMPUTE WS-RESULTADO = WS-VALOR + WS-VALOR2.
               DISPLAY "VALOR DO RESULTADO: " WS-RESULTADO.
               IF WS-RESULTADO IS POSITIVE
                   DISPLAY "O VALOR: " WS-RESULTADO " E POSITIVO".
               IF WS-VALOR LESS WS-NUMERO
                   DISPLAY "VALORES N IGUAIS"
               ELSE
                   DISPLAY "VALORES IGUAIS"

               PERFORM 10 TIMES
                   ADD 1 TO WS-CONT
                   DISPLAY "CONTANTO " WS-CONT" VEZES"
               END-PERFORM.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
