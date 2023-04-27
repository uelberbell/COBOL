      ******************************************************************
      * Author: UELBER PEREIRA DE JESUS
      * Date:
      * Purpose: ESTRUTURAR PROGRAMA PARA ENVIAR DADOS AO LAYOUT
      * Tectonics: COBOL
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGSTRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TM              PIC 99.
       77 WS-TM-2            PIC 99.
       COPY LAYOUT002.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE "UELBER"                    TO WS-PRIMEIRO-NOME.
           MOVE "PEREIRA DE JESUS"          TO WS-SEGUNDO-NOME.

      *>   INSPECIONAR DE FORMAR REVERSA A QUANTIDADE DE ESPACOS E JOGAR
      *>   DENTRO DA MINHA VARIAVEL.
               INSPECT FUNCTION REVERSE (WS-PRIMEIRO-NOME)
               TALLYING WS-TM FOR LEADING ' '

      *>   PEGAR O TAMANHO DA MINHA VARIAVEL E SUBTRAIR PELO VALOR DOS
      *>   ESPACOS QUE OBTIVE NA FUNCTION ACIMA.
               DISPLAY 'NOME COMPLETO: ' WS-PRIMEIRO-NOME
               (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM)) ' '
                                         WS-SEGUNDO-NOME.



            STOP RUN.
       END PROGRAM PROGSTRING.
