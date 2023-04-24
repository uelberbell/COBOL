      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCHAMADO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-RETURN PIC 99 VALUE 0.
           02 WS-NUM1   PIC 99 VALUE 0.
           02 WS-NUM2   PIC 99 VALUE 0.

       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
           DISPLAY "PROGRAMA CHAMDO"
           DISPLAY 'RECEBEU WS-NUM1:' WS-NUM1
           DISPLAY 'RECEBU WS-NUM2: ' WS-NUM2
           

           COMPUTE WS-RETURN = WS-NUM1 + WS-NUM2

           GOBACK.
       END PROGRAM PROGCHAMADO.
