      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNSTRINGPROG.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NOME-COMPLETO             PIC X(30) VALUE SPACES.
       01 WS-NOME.
           03 WS-PRIMEIRO-NOME         PIC X(10) VALUE SPACES.
           03 WS-SOBRENOME             PIC X(10) VALUE SPACES.
           03 WS-ULT-NOME              PIC X(10) VALUE SPACES.

       77 WS-MOSTRA                    PIC X(50) VALUE SPACES.
       01 WS-COUNT.
           03 WS-PONTEIRO              PIC 9(2) VALUE ZEROS.
           03 WS-TOT-CAMPOS            PIC 9(2) VALUE ZEROS.
           03 WS-TM-1                  PIC 9(2) VALUE ZEROS.
           03 WS-TM-2                  PIC 9(2) VALUE ZEROS.
           03 WS-TM-3                  PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.

      ****************************** FORMA1 ****************************
           DISPLAY 'FORMA1'
           INITIALISE WS-NOME-COMPLETO
                      WS-NOME
                      WS-MOSTRA
                      WS-COUNT

           MOVE 'UELBER PEREIRA JESUS' TO WS-NOME-COMPLETO.

            UNSTRING
            WS-NOME-COMPLETO
            DELIMITED BY ALL SPACES
            INTO WS-PRIMEIRO-NOME
                 WS-SOBRENOME
                 WS-ULT-NOME
            END-UNSTRING.

            DISPLAY 'NOME COMPLETO: ' WS-NOME-COMPLETO
            DISPLAY 'PRIMEIRO NOME: ' WS-PRIMEIRO-NOME
            DISPLAY 'SOBRENOME: ' WS-SOBRENOME
            DISPLAY 'ULTIMO NOME: ' WS-ULT-NOME


      ****************************** FORMA2 ****************************
           DISPLAY 'FORMA2'
           INITIALISE WS-NOME-COMPLETO
                      WS-NOME
                      WS-MOSTRA
                      WS-COUNT
      *>         12345678901234567890
           MOVE 'UELBER PEREIRA JESUS'     TO WS-NOME-COMPLETO.
           MOVE 3                          TO WS-PONTEIRO.

            UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY ALL SPACES
               INTO WS-PRIMEIRO-NOME
                    WS-SOBRENOME
                    WS-ULT-NOME
               WITH POINTER WS-PONTEIRO
               TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'NOME COMPLETO: ' WS-NOME-COMPLETO
            DISPLAY 'PRIMEIRO NOME: ' WS-PRIMEIRO-NOME
            DISPLAY 'SOBRENOME: ' WS-SOBRENOME
            DISPLAY 'ULTIMO NOME: ' WS-ULT-NOME
            DISPLAY 'VALOR DO PONTEIRO: ' WS-PONTEIRO
            DISPLAY 'VALOR DO TOTAL DE CAMPOS: ' WS-TOT-CAMPOS


      ****************************** FORMA3 ****************************
           DISPLAY 'FORMA3'
           INITIALISE WS-NOME-COMPLETO
                      WS-NOME
                      WS-MOSTRA
                      WS-COUNT
      *>         12345678901234567890
           MOVE 'UELBER*PEREIRA;JESUS'     TO WS-NOME-COMPLETO.
           MOVE 1                          TO WS-PONTEIRO.

            UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY '*' OR ';'
               INTO WS-PRIMEIRO-NOME
                    WS-SOBRENOME
                    WS-ULT-NOME
               WITH POINTER WS-PONTEIRO
               TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'NOME COMPLETO: ' WS-NOME-COMPLETO
            DISPLAY 'PRIMEIRO NOME: ' WS-PRIMEIRO-NOME
            DISPLAY 'SOBRENOME: ' WS-SOBRENOME
            DISPLAY 'ULTIMO NOME: ' WS-ULT-NOME
            DISPLAY 'VALOR DO PONTEIRO: ' WS-PONTEIRO
            DISPLAY 'VALOR DO TOTAL DE CAMPOS: ' WS-TOT-CAMPOS

      ****************************** FORMA4 ****************************
           DISPLAY 'FORMA4'
           INITIALISE WS-NOME-COMPLETO
                      WS-NOME
                      WS-MOSTRA
                      WS-COUNT
      *>         12345678901234567890
           MOVE '*UELBER*PEREIRA;JESUS*'     TO WS-NOME-COMPLETO.
           MOVE 2                          TO WS-PONTEIRO.

            UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY '*' OR ';'
               INTO WS-PRIMEIRO-NOME COUNT IN WS-TM-1
                    WS-SOBRENOME COUNT IN WS-TM-2
                    WS-ULT-NOME COUNT IN WS-TM-3
               WITH POINTER WS-PONTEIRO
               TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'NOME COMPLETO: ' WS-NOME-COMPLETO
            DISPLAY 'PRIMEIRO NOME: ' WS-PRIMEIRO-NOME
            DISPLAY 'SOBRENOME: ' WS-SOBRENOME
            DISPLAY 'ULTIMO NOME: ' WS-ULT-NOME
            DISPLAY 'VALOR DO PONTEIRO: ' WS-PONTEIRO
            DISPLAY 'VALOR DO TOTAL DE CAMPOS: ' WS-TOT-CAMPOS
            DISPLAY 'WS-01: ' WS-TM-1
            DISPLAY 'WS-01: ' WS-TM-2
            DISPLAY 'WS-01: ' WS-TM-3

      ****************************** FORMA5 ****************************
           DISPLAY 'FORMA5'
           INITIALISE WS-NOME-COMPLETO
                      WS-NOME
                      WS-MOSTRA
                      WS-COUNT
      *>         12345678901234567890
           MOVE '*UELBER***PEREIRA;;;;;;JESUS*'     TO WS-NOME-COMPLETO.
           MOVE 2                          TO WS-PONTEIRO.

            UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY ALL '*' OR ALL ';'
               INTO WS-PRIMEIRO-NOME COUNT IN WS-TM-1
                    WS-SOBRENOME COUNT IN WS-TM-2
                    WS-ULT-NOME COUNT IN WS-TM-3
               WITH POINTER WS-PONTEIRO
               TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY 'NOME COMPLETO: ' WS-NOME-COMPLETO
            DISPLAY 'PRIMEIRO NOME: ' WS-PRIMEIRO-NOME
            DISPLAY 'SOBRENOME: ' WS-SOBRENOME
            DISPLAY 'ULTIMO NOME: ' WS-ULT-NOME
            DISPLAY 'VALOR DO PONTEIRO: ' WS-PONTEIRO
            DISPLAY 'VALOR DO TOTAL DE CAMPOS: ' WS-TOT-CAMPOS
            DISPLAY 'WS-01: ' WS-TM-1
            DISPLAY 'WS-01: ' WS-TM-2
            DISPLAY 'WS-01: ' WS-TM-3

            STOP RUN.
       END PROGRAM UNSTRINGPROG.
