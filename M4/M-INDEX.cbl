      ******************************************************************
      * Author:Uelber Pereira de Jesus
      * Date:
      * Purpose: MATRIZ INDEXADA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M-INDEX.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-MATRIZ.
           03 WS-LINHAS     OCCURS 3 TIMES INDEXED BY I.
               05 WS-LINHA     PIC X(06) VALUE "LINHA".
               05 WS-COLUNAS OCCURS 5 TIMES INDEXED BY J.
                   07 WS-CELULA    PIC X(06) VALUE "----->".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > 5
               DISPLAY WS-CELULA(I,J) " LINHA: " I "| COLUNA: " J
               END-PERFORM
           END-PERFORM

            STOP RUN.
       END PROGRAM M-INDEX.
