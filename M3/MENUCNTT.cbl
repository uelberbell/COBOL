      ******************************************************************
      * Author:Uelber Pereira de Jesus
      * Date:30/05/2023
      * Purpose:Chamar programas externos
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENUCNTT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 WS-COM-AREA.
          03 WS-MENSAGEM                   PIC X(40).
       77 WS-OPCAO                         PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

               PERFORM P300-PROCESSA  THRU P300-FIM UNTIL WS-OPCAO = "S"
               OR "s"
               PERFORM P900-FIM
               .

       P300-PROCESSA.
               MOVE SPACES                 TO WS-OPCAO
               DISPLAY "***********************************************"
               DISPLAY "*            SISTEMA DE CONTATOS              *"
               DISPLAY "***********************************************"
               DISPLAY "|---------------------------------------------|"
               DISPLAY "              INFORME UMA OPCAO: "
               DISPLAY "|---------------------------------------------|"
               DISPLAY "| 1 - CADASTRAR CONTATO                       |"
               DISPLAY "| 2 - LISTAR CONTATOS                         |"
               DISPLAY "| 3 - CONSULTAR CONTATO                       |"
               DISPLAY "| 4 - ALTERAR CONTATO                         |"
               DISPLAY "| 5 - DELTAR CONTATO                          |"
               DISPLAY "| S - SAIR                                    |"
               DISPLAY "|_____________________________________________|"
               ACCEPT WS-OPCAO

               EVALUATE WS-OPCAO
                   WHEN "1"
                       MOVE "INCLUSAO DE CONTATO"  TO WS-MENSAGEM
                       CALL "D:\Estudos_COBOL\M3\bin\CADCONTT" USING
                                                     WS-COM-AREA
                   WHEN "2"
                       MOVE "LISTAGEM DE CONTATOS" TO WS-MENSAGEM
                       CALL "D:\Estudos_COBOL\M3\bin\LISCNTT" USING
                                                     WS-COM-AREA
                   WHEN "3"
                       MOVE "CONSULTA DE CONTATOS" TO WS-MENSAGEM
                       CALL "D:\Estudos_COBOL\M3\bin\CONSCTT" USING
                                                     WS-COM-AREA
                   WHEN "4"
                       MOVE "ALTERAR DE CONTATOS"  TO WS-MENSAGEM
                       CALL "D:\Estudos_COBOL\M3\bin\ALTCONTT" USING
                                                     WS-COM-AREA
                  WHEN "5"
                       MOVE "DELETAR CONTATOS"     TO WS-MENSAGEM
                       CALL "D:\Estudos_COBOL\M3\bin\DELCNTT" USING
                                                     WS-COM-AREA
                  WHEN "S"
                   DISPLAY "OBRIGADO! VOLTE SEMPRE."
      *>              Melhorar isso
                  WHEN "s"
                   DISPLAY "OBRIGADO! VOLTE SEMPRE."

                  WHEN OTHER
                   DISPLAY "OPCAO INVALIDA!"

               END-EVALUATE.
       P300-FIM.
       P900-FIM.

            STOP RUN.
       END PROGRAM MENUCNTT.
