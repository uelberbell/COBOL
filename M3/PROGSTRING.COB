      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGSTRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       COPY 'LAYOUT002'
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE "UELBER"           TO WS-PRIMEIRO-NOME.
           MOVE "PEREIRA"          TO WS-SEGUNDO-NOME.

           DISPLAY 'VALOR DE: ' WS-PRIMEIRO-NOME.
            STOP RUN.
       END PROGRAM PROGSTRING.
