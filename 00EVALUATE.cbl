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

       01 WS-VARIAVEIS.
          03 WS-MES           PIC 99.
          03 WS-STATUS        PIC 99.

       PROCEDURE DIVISION.

                   PERFORM MAIN-INICIA.
                   PERFORM MAIN-CALC.
                   PERFORM MAIN-FIM.

       MAIN-INICIA.

           INITIALISE WS-VARIAVEIS.

               DISPLAY 'INFORME UM NUMERO: '
               DISPLAY 'ISSO É APENAS UM TESTE'
               ACCEPT WS-MES

               DISPLAY 'INFORME UM NUMERO DE STATUS: '
               ACCEPT WS-STATUS.

       MAIN-CALC.

           EVALUATE WS-MES
               WHEN 01
                   DISPLAY 'JANEIRO'
               WHEN 02
                   DISPLAY 'FEVEREIRO'
               WHEN 03
                   DISPLAY 'MARCO'
               WHEN 04
                   DISPLAY 'ABRIL'
               WHEN 05
                   DISPLAY 'MAIO'
               WHEN OTHER
                   DISPLAY 'MES INVALIDO.'
           END-EVALUATE.


           EVALUATE WS-STATUS
               WHEN 1
                   DISPLAY 'HOMEM'
               WHEN 2
                   DISPLAY 'MULHER'
               WHEN 3
                   DISPLAY 'OUTROS'
               WHEN OTHER
                   DISPLAY 'NUMERO INVALIDO PARA STATUS'
           END-EVALUATE.
       MAIN-FIM.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
