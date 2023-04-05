      ******************************************************************
      * Author: Uelber Pereira de Jesus
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ccapp.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *_________________________________________________________________*
       77 NUM1             PIC 9(02) VALUE ZEROS.
       77 NUM2             PIC 9(02) VALUE ZEROS.
       77 RES              PIC 9(03) VALUE ZEROS.
       77 CALC             PIC A(01).
      *>  77 RESTO            PIC 9(02)v9(02) VALUE ZEROS.
       
       PROCEDURE DIVISION.

           DISPLAY "--NESTE PROGRAMA VAMOS REALIZAR CALCULOS--"

           DISPLAY "DIGITE O PRIMEIRO NUMERO: "
           ACCEPT NUM1
           DISPLAY "DIGITE O SEGUNDO NUMERO"
           ACCEPT NUM2

      *>      COLETANDO TIPO DE CALCULO
           DISPLAY "DIGITE O TIPO DE CALCULO: +, -, * OU /?"
           ACCEPT CALC
               IF  CALC = "+"
                   COMPUTE  RES EQUAL NUM1 + NUM2
                   DISPLAY "RESULTADO DA SOMA: " RES
                END-IF
               
               IF CALC = "-"
                   SUBTRACT NUM1 FROM NUM2 GIVING RES
                   DISPLAY "RESULTADO DA SUBTRACAO: " RES
               END-IF

               IF CALC = "*"
                   MULTIPLY NUM1 BY NUM2 GIVING RES
                   DISPLAY "RESULTADO DA MUTIPLICACAO: " RES
               END-IF

               IF CALC = "/"
                   DIVIDE NUM1 BY NUM2 GIVING RES
                   DISPLAY "RESULTADO DA DIVISAO: " RES
               END-IF

            STOP RUN.
       END PROGRAM ccapp.
