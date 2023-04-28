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

               MOVE "UELBER"                   TO WS-PRIMEIRO-NOME.
               MOVE "PEREIRA DE JESUS"         TO WS-SEGUNDO-NOME.
               MOVE "5511996115542"            TO WS-TELEFONE.
               MOVE "RUA DEZ, 03"              TO WS-RUA.
               MOVE "CENTRO"                   TO WS-BAIRRO.
               MOVE "CRUZ DAS ALMAS"           TO WS-CIDADE.
               MOVE "BA"                       TO WS-UF.
               MOVE "44380000"                 TO WS-CEP.
               MOVE "BRASILEIRA"               TO WS-NACIONALIDADE.
               MOVE "ANALISTA DE SISTEMAS"     TO WS-PROFISSAO.

          *>   INSPECIONAR DE FORMAR REVERSA A QUANTIDADE DE ESPACOS E JOGAR
      *>   DENTRO DA MINHA VARIAVEL.
               MOVE ZEROS                      TO WS-TM
               INSPECT FUNCTION REVERSE (WS-PRIMEIRO-NOME)
               TALLYING WS-TM FOR LEADING ' '

      *>   PEGAR O TAMANHO DA MINHA VARIAVEL E SUBTRAIR PELO VALOR DOS
      *>   ESPACOS QUE OBTIVE NA FUNCTION ACIMA.
               DISPLAY '1 - NOME COMPLETO: ' WS-PRIMEIRO-NOME
               (1:(FUNCTION LENGTH(WS-PRIMEIRO-NOME) - WS-TM)) ' '
                                             WS-SEGUNDO-NOME

               DISPLAY '2 - TELEFONE.....: ' '+' WS-PAIS ' '
                                             '(' WS-DDD ')'
                                                 WS-PREFIXO '-'
                                                 WS-SUFIXO.


               MOVE ZEROS                      TO WS-TM
               INSPECT FUNCTION REVERSE (WS-RUA)
               TALLYING WS-TM FOR LEADING ' '

               MOVE ZEROS                      TO WS-TM-2
               INSPECT FUNCTION REVERSE (WS-CIDADE)
               TALLYING WS-TM-2 FOR LEADING ' '

               DISPLAY '3 - ENDERECO.....: '   WS-RUA
                 (1:(FUNCTION LENGTH(WS-RUA) - WS-TM))
                                       ' '     WS-BAIRRO
                                               WS-CIDADE
                 (1:(FUNCTION LENGTH(WS-CIDADE) - WS-TM-2))
                                       ' '     WS-UF
                    FUNCTION CONCATENATE (" - CEP: "
                                           WS-CEP1
                                       '-' WS-CEP2
                    )

               DISPLAY '4 - NACIONALIDADE: ' WS-NACIONALIDADE.
               DISPLAY '5 - PROFISSAO....: ' WS-PROFISSAO.



            STOP RUN.
       END PROGRAM PROGSTRING.
