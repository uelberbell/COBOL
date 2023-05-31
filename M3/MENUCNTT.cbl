      ******************************************************************
      * Author:Uelber Pereira de Jesus
      * Date:30/05/2023
      * Purpose:Chamar programas externos
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENUCNTT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-COM-AREA.
          03 WS-MENSAGEM                   PIC X(20).
       77 WS-OPCAO                         PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

               MOVE SPACES                 TO WS-OPCAO
               DISPLAY "INFORME UMA OPCAO: "
               ACCEPT WS-OPCAO

               EVALUATE WS-OPCAO
                   WHEN "1"
                       CALL "D:\Estudos_COBOL\M3\bin\CADCONTT" USING
                                                     WS-COM-AREA
                   WHEN "2"
                       CALL "D:\Estudos_COBOL\M3\bin\LISCNTT" USING
                                                     WS-COM-AREA
                   WHEN "3"
                       CALL "D:\Estudos_COBOL\M3\bin\CONSCTT" USING
                                                     WS-COM-AREA
                   WHEN "4"
                       CALL "D:\Estudos_COBOL\M3\bin\ALTCONTT" USING
                                                     WS-COM-AREA
                  WHEN "5"
                       CALL "D:\Estudos_COBOL\M3\bin\DELCNTT" USING
                                                     WS-COM-AREA
                  WHEN OTHER
                   DISPLAY "OPCAO INVALIDA!"
               END-EVALUATE.


            STOP RUN.
       END PROGRAM MENUCNTT.
