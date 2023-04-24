      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCHAMADOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AREA.
           02 WS-RS        PIC 99.
           02 WS-N1        PIC 99.
           02 WS-N2        PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


           DISPLAY "PROGRAMA CHAMADOR"

           INITIALISE WS-AREA

           SET WS-N1   TO 5
           SET WS-N2   TO 3

           DISPLAY 'CHAMANDO PROGRAMA...'
      *>     EU POSSO USAR O NOME DO PROGRAMADO CHAMADO OU O CAMINHO
           CALL 'C:\Users\escrtorio\Documents\COBOL\bin\PROGCHAMADO'
                                                       USING WS-AREA
            DISPLAY 'CHAMOU O PROGRAMA COM SUCESSO: '
                                               WS-RS
            STOP RUN.
       END PROGRAM PROGCHAMADOR.
