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


       77  WS-SALDO           PIC 9(10) VALUE ZEROS.
       77  WS-RESULTADO       PIC 9(10) VALUE ZEROS.
       77  WS-VALOR           PIC 9(10) VALUE 63.
       77  WS-RESTO           PIC 9(10) VALUE ZEROS.



      *========================================================================*
       PROCEDURE DIVISION.
      *>  O COMANDO ADD, FUNCIONA COMO UM PUSH PARA DENTRO DE UMA VARIAVEL
      *>       NESTE ADD ESTOU ENVIANDO O VALOR 1 PARA DENTRO DA VARIAVEL.
            ADD 10 TO WS-ACUMULADOR
            ON SIZE ERROR
               DISPLAY 'ERRO ENCONTRADO'
            END-ADD.
            DISPLAY "NOME: " WS-NOME.
            DISPLAY "CPF: " WS-CPF.
               DISPLAY "DIGITE UM NOME PARA A RUA"
               ACCEPT WS-RUA.
            DISPLAY "NOME DA RUA: " WS-RUA.
            DISPLAY "VALOR DO ACUMULADOR: " WS-ACUMULADOR.

      *>  ENTENDENDO O COMANDO COMPUTE
            COMPUTE WS-ACUMULADOR2 = WS-ACUMULADOR /2
            DISPLAY "VALOR DA VARIAVEL DIVIDIDA: " WS-ACUMULADOR2
            COMPUTE WS-ACUMULADOR3 = (WS-ACUMULADOR +
                                       WS-ACUMULADOR2) / 2
                ON SIZE ERROR
                   DISPLAY "ERROR"
            END-COMPUTE.

      *>       DISPLAY "VALOR DA SOMA MAIS DIVISAO: " WS-ACUMULADOR3


      *>  COMANDO SUBTRACT

            MOVE 100       TO WS-SALDO.
            DISPLAY "VALOR DE SALDO: " WS-SALDO
            SUBTRACT 50    FROM WS-SALDO
            DISPLAY "VALOR DE SALDO: -R$50 = " WS-SALDO
            COMPUTE  WS-ACUMULADOR2 = (WS-SALDO - 10)
            DISPLAY "SUBITRAIDO COM COMPUTE: " WS-ACUMULADOR2

      *>  USANDO O COMANDO DIVIDE E JOGANDO O RESULTADO

            DIVIDE 2 INTO WS-VALOR GIVING WS-RESULTADO
            REMAINDER WS-RESTO
      *>       OUTRA FORMA
            DIVIDE WS-VALOR BY 2 GIVING WS-RESULTADO.
            DISPLAY "VARIAVEL VALOR APOS DIVISAO: " WS-RESULTADO.
            DISPLAY "VALOR DO RESTO DA DIVISAO: " WS-RESTO.

      *>  COMANDO MULTIPLY SIMILAR AO DIVIDE

            MULTIPLY 2 BY WS-VALOR GIVING WS-RESULTADO.
            DISPLAY "VALOR MULTIPLICADO: " WS-RESULTADO.



            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
