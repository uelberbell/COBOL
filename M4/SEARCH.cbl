      ******************************************************************
      * Author:Uelber Pereira de Jesus
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEARCH.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-TABELA.
           03 WS-REGISTRO      OCCURS 4 TIMES
                               ASCENDING KEY IS WS-CHAVE INDEXED BY I.
               05 WS-CHAVE     PIC 99.
               05 WS-NOME      PIC X(06).
       77 WS-POSICAO           PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


           MOVE "01MARCOS02CARLOS03MARINA04ANA   " TO WS-TABELA.

               DISPLAY WS-TABELA
               DISPLAY "DIGITE UM ID PARA ENCONTRAR UM REGISTRO: "
               ACCEPT WS-POSICAO
               SEARCH ALL WS-REGISTRO
                   AT END DISPLAY "DADO NAO ENCONTRADO!"

                   WHEN WS-CHAVE(I) = WS-POSICAO
                   DISPLAY "ENCONTRADO NA POSICAO: " WS-CHAVE(I)
                                       "O REGISTRO: " WS-NOME(I)
                                       " - "
                                       "NO INDEX: " I
               END-SEARCH


            STOP RUN.
       END PROGRAM SEARCH.
