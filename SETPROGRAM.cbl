      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SETPROGRAM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       01 WS-PAG         PIC X VALUE "N".
         88 PG-CONFIRMA    VALUE "S" FALSE "N".


       PROCEDURE DIVISION.
       DISPLAY "SITUACAO ATUAL DO PAGAMENTO: " WS-PAG.
           SET PG-CONFIRMA         TO TRUE.
       DISPLAY "APOS SETAR NOVO VALOR BOOLEANO: " WS-PAG.
           SET PG-CONFIRMA         TO FALSE.
       DISPLAY "SETANDO FALSE: " WS-PAG.

       MAIN-PROCEDURE.

            STOP RUN.
       END PROGRAM SETPROGRAM.
