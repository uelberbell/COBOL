      ******************************************************************
      * Author: Uelber Pereira de Jesus
      * Date: 02/08/2023
      * Purpose: Calcular Media de Alunos
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALMEDIA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 WS-OPCAO             PIC XX VALUE SPACES.
       01 WS-COM-AREA.
           03 WS-MENSAGEM      PIC X(40).

       PROCEDURE DIVISION.
           PERFORM P100INICIO THRU P100SAIR UNTIL WS-OPCAO = "S" OR "s".
           PERFORM P900FIM.
       MAIN-PROCEDURE.

           P100INICIO.
            DISPLAY "__________________________________________________"
            DISPLAY "_______PROGRAMA DE CALCULAR MEDIA DE ALUNOS_______"
            DISPLAY "_______************************************_______"
            DISPLAY "__________DIGITE UMA DAS OPCOES ABAIXO:___________"
            DISPLAY "(01) - CADASTRAR ALUNO"
            DISPLAY "(02) - LISTAR TODOS ALUNOS"
            DISPLAY "(03) - CONSULTAR ALUNO POR CODIGO"
            DISPLAY "(04) - ALTERAR DADOS DO ALUNO"
            DISPLAY "(05) - EXCLUIR ALUNO"
            DISPLAY "--------------------------------------------------"
            DISPLAY "(06) - CADASTRAR MATERIA"
            DISPLAY "(07) - LISTAR MATERIAS"
            DISPLAY "(08) - CONSULTAR MATERIAS"
            DISPLAY "(09) - ALTERAR MATERIA"
            DISPLAY "(10) - EXCLUIR MATERIA"
            DISPLAY " "
            DISPLAY "       OU DIGITE <S> PARA SAIR"
               ACCEPT WS-OPCAO
               EVALUATE WS-OPCAO


                   WHEN "1"
                   MOVE "INCLUIR NOVO ALUNO" TO WS-MENSAGEM
                   CALL "CAMINHO DO PROGRAMA CHAMDO" USING WS-COM-AREA


                   WHEN "2"
                   MOVE "LISTANDO TODOS ALUNOS" TO WS-MENSAGEM
                   CALL "CAMINHO DO PROGRAMA CHAMADO" USING WS-COM-AREA

                   WHEN "3"
                   MOVE "CONSULTA DE ALUNO POR CODIGO" TO WS-MENSAGEM
                   CALL "CAMINHO DO PROGRAMA CHAMADO" USING WS-COM-AREA

                   WHEN "4"
                   MOVE "ALTERACAO DE DADOS DO ALUNO" TO WS-MENSAGEM
                   CALL "CAMINHO.." USING WS-COM-AREA

                   WHEN "5"
                   MOVE "EXLUIR ALUNO" TO WS-MENSAGEM
                   CALL "CAMINHO" USING WS-COM-AREA

                   WHEN "6"
                   MOVE "CADASTRAR NOVA MATERIA" TO WS-MENSAGEM
                   CALL "CAMINHO" USING WS-COM-AREA

                   WHEN "7"
                   MOVE "LISTANDO MATERIAS" TO WS-MENSAGEM
                   CALL "CAMINHO..." USING WS-COM-AREA

                   WHEN "8"
                   MOVE "CONSULTAR MATERIAS" TO WS-MENSAGEM
                   CALL "CAMINHO..." USING WS-COM-AREA

                   WHEN "9"
                   MOVE "ALTERACAO DE MATERIA" TO WS-MENSAGEM
                   CALL "CAMINHO..." USING WS-COM-AREA

                   WHEN "10"
                   MOVE "EXLUINDO MATERIA" TO WS-MENSAGEM
                   CALL "CAMINHO...0" USING WS-COM-AREA

                   WHEN "S"
                   DISPLAY "***********VOLTE SEMPRE!!!***********"

                   WHEN "s"
                   DISPLAY "***********VOLTE SEMPRE!!!***********"

                   WHEN OTHER
                   DISPLAY "OPCAO INVALIDA!"
                    PERFORM P100INICIO

               END-EVALUATE.

           P100SAIR.
           P900FIM.

            STOP RUN.
       END PROGRAM CALMEDIA.
