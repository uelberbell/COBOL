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
      *========================================================================*
       WORKING-STORAGE SECTION.
      *========================================================================*
       01 PESSOA.
           02 WS-NOME         PIC X(20) VALUE "UELBER P. DE JESUS".
           02 WS-CPF          PIC 9(02)V9(02) VALUE 04.08.
           02 WS-ENDERECO.
               03 WS-RUA      PIC X(20) VALUE SPACES.


       77 WS-ACUMULADOR       PIC 9(03) VALUE 100.
       77 WS-ACUMULADOR2      PIC 9(02) VALUE ZEROS.
       77 WS-ACUMULADOR3      PIC 9(02)V9(02) VALUE ZEROS.








      *========================================================================*
       PROCEDURE DIVISION.
      *>  O COMANDO ADD, FUNCIONA COMO UM PUSH PARA DENTRO DE UMA VARIAVEL
      *>       NESTE ADD ESTOU ENVIANDO O VALOR 1 PARA DENTRO DA VARIAVEL.
            ADD 10 TO WS-ACUMULADOR
            ON SIZE ERROR
               DISPLAY 'ERRO ENCONTRADO'
            END-ADD.
      *>       DISPLAY "NOME: " WS-NOME.
      *>       DISPLAY "CPF: " WS-CPF.
      *>          DISPLAY "DIGITE UM NOME PARA A RUA"
      *>          ACCEPT WS-RUA.
      *>       DISPLAY "NOME DA RUA: " WS-RUA.
            DISPLAY "VALOR DO ACUMULADOR: " WS-ACUMULADOR.
      *>       ENTENDENDO O COMANDO COMPUTE
            COMPUTE WS-ACUMULADOR2 = WS-ACUMULADOR /2
            DISPLAY "VALOR DA VARIAVEL DIVIDIDA: " WS-ACUMULADOR2
            COMPUTE WS-ACUMULADOR3 = (WS-ACUMULADOR +
                                       WS-ACUMULADOR2) / 2
                ON SIZE ERROR
                   DISPLAY "ERROR"
            END-COMPUTE.
            DISPLAY "VALOR DA SOMA MAIS DIVISAO: " WS-ACUMULADOR3




            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
