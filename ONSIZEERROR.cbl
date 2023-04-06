      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ONSIZEERROR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM1              PIC 9(02) VALUE ZEROS.
       77 WS-NUM2              PIC 9(02) VALUE ZEROS.
       77 WS-RESULT            PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.

               PERFORM P100-INICIO.
               PERFORM P200-CALC.
               PERFORM P400-FIM.

       P100-INICIO.

               DISPLAY 'DIGITE O PRIMEIRO NUMNERO: '
               ACCEPT WS-NUM1.
               DISPLAY 'DIGITE O SEGUNDO NUMERO: '
               ACCEPT WS-NUM2.

       P200-CALC.

               COMPUTE WS-RESULT = WS-NUM1 * WS-NUM2
      *>  Se ocorrer erro pule para a secao p300
               ON SIZE ERROR PERFORM P300-ERROR.
               DISPLAY "O RESULTADO DO CALCULO É: " WS-RESULT.

       P300-ERROR.

           DISPLAY 'ERRO GRAVE DE CALCULO! VERIFIQUE AS VARIAVEIS.'.
           PERFORM P400-FIM.
      *>      OU USAR GOBACK?
       P400-FIM.



            STOP RUN.
       END PROGRAM ONSIZEERROR.
