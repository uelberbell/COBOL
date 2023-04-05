      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRINGPROG.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WS-CONTEUDO          PIC X(30) VALUE SPACES.
       77 WS-VALORES           PIC X(50) VALUE SPACES.
       77 WS-PONTEIRO          PIC 9(2) VALUE ZEROS.

      ********************* FORMA 1 DE USAR STRING *********************
       PROCEDURE DIVISION.

        INITIALISE WS-CONTEUDO
                   WS-VALORES
           STRING
           'UELBER'
           ' '
           'PEREIRA'
           DELIMITED BY SIZE INTO WS-CONTEUDO
           END-STRING.

            DISPLAY 'VALOR ATRIBUIDO VIA CONCATENATION: 'WS-CONTEUDO.


      ************************** FORMA 2 *******************************
        INITIALISE WS-CONTEUDO
                   WS-VALORES

           MOVE 'UELBER ESTA ESTUDANDO'    TO WS-VALORES.
           STRING
               WS-VALORES(1:7)
               WS-VALORES(8:4)
           DELIMITED BY SIZE INTO WS-CONTEUDO
           END-STRING.
               DISPLAY 'CONTEUDO: ' WS-CONTEUDO
            DISPLAY 'VALOR ATRIBUIDO VIA CONCATENATION: 'WS-VALORES.

      ************************** FORMA 3 *******************************
        INITIALISE WS-CONTEUDO
                   WS-VALORES
           MOVE 'UELBER;ESTA;ESTUDANDO'    TO WS-VALORES.
           STRING
           WS-VALORES
           DELIMITED BY ';' INTO WS-CONTEUDO
           END-STRING.

            DISPLAY 'VALOR ATRIBUIDO VIA CONCATENATION 3: 'WS-CONTEUDO.

      ************************** FORMA 4 *******************************
        INITIALISE WS-CONTEUDO
                   WS-VALORES
           MOVE 'UELBER ESTA ESTUDANDO'    TO WS-VALORES.
           STRING
           WS-VALORES
           DELIMITED BY 'R' INTO WS-CONTEUDO
           END-STRING.

            DISPLAY 'VALOR ATRIBUIDO LIMITADO A ' 'R:' ' ' WS-CONTEUDO.

      ************************** FORMA 5 *******************************
        INITIALISE WS-CONTEUDO
                   WS-VALORES
           MOVE 'UELBER                 ESTUDANDO'    TO WS-VALORES.
           SET WS-PONTEIRO                     TO 8

           STRING
           'BELLGUITAR GOOD'
           DELIMITED BY SIZE INTO WS-VALORES
           WITH POINTER WS-PONTEIRO
           END-STRING.

            DISPLAY 'VALOR ATRIBUIDO VIA CONCATENATION: 'WS-VALORES.
            DISPLAY 'VALOR DO PONTEIRO ATUALMENTE: ' WS-PONTEIRO.
            STOP RUN.
       END PROGRAM STRINGPROG.
