      ******************************************************************
      * Author:UELBER PEREIRA DE JESUS
      * Date:04/05/2023
      * Purpose:CADASTRO DE CONTATOS. DOCUMENTAR TODO CODIGO.
      * Update: Transformando de programa para modulo.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADCONTT. *> BOA PRATICA, TAMANHO COM 8 CARACTERS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA. *> PONTO DEVE SER CONSEIDERADO VIRGULA.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
      *>          "D:\Estudos_COBOL\CONTATOS.DAT"
               "C:\Users\escrtorio\Documents\COBOL\CONTATOS.DAT"
               ORGANISATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY IS ID-CONTATO *>Nossa chave primaria
               FILE STATUS IS WS-FS. *>File Status/ Status do arquivo.


       DATA DIVISION.
       FILE SECTION.
       FD CONTATOS.
       COPY FD_CONTT. *> IMPORTANDO O NOSSO LAYOUT.


       WORKING-STORAGE SECTION.

       *> Variavel que recebe os dados totalizados do nosso layout.
       01 WS-REGISTRO              PIC X(27) VALUE SPACES.
       01 FILLER REDEFINES WS-REGISTRO. *> Redefine novo espaco em memoria.
           03 WS-ID-CONTATO        PIC 9(02).
           03 WS-NM-CONTATO        PIC X(25).
       77 WS-FS        PIC 99. *> Variavel para verificar existencia do arquivo.
           88 FS-OK    VALUE 0.

       *> Agora vamos criar uma variavel para controlar a leitura do arquivo.
       77 ES-EOF               PIC X. *> Testar true or false.
           88 EOF-OK           VALUE "S" FALSE "N". *> SE OK = "S" SENAO = "N"

       *> Criar outra variavel para loop, sair ou continuar o programa.
       77 WS-EXIT              PIC X.
           88 EXIT-OK          VALUE "F" FALSE "N".

       LINKAGE SECTION.*> AREA PARA COMUNICACAO ENTRE OS PROGRAMAS.
       01 LK-COM-AREA.
           03 LK-MENSAGEM      PIC X(20).


       PROCEDURE DIVISION USING LK-COM-AREA.
       MAIN-PROCEDURE.

           DISPLAY"***CADASTRO DE CONTATOS***".
       *> Antes de iniciar setar valor de false na variavel EXIT-OK.
           SET EXIT-OK     TO FALSE.
       *> Iniciar no P300-CADASTRA percorrendo ate que EXIT-OK seja = S.
           PERFORM P300-CADASTRA THRU P300-FIM UNTIL EXIT-OK
           PERFORM P900-FIM.

       P300-CADASTRA.
           SET EOF-OK      TO FALSE.
           SET FS-OK       TO TRUE.

           DISPLAY "PARA REGISTRAR UM CONTATO, INFORME: "
           DISPLAY "Um numero para a Indetificao: "
           ACCEPT WS-ID-CONTATO
           DISPLAY "Um nome para o contato: "
           ACCEPT WS-NM-CONTATO

           *>Verificar se o arquivo existe.
           OPEN I-O CONTATOS *>EXTENT melhor para arquivos nao indexados...
               IF WS-FS EQUAL 35 THEN
                   OPEN OUTPUT CONTATOS *>Se nao existir ele cria.
               END-IF

               IF FS-OK THEN *> Se o arquivo existir mova os dados.
                   MOVE WS-ID-CONTATO      TO ID-CONTATO
                   MOVE WS-NM-CONTATO      TO NM-CONTATO

           *>Escreva os dados no meu layout
                   WRITE REG-CONTATOS
                       INVALID KEY *>Verifica se ja existe essa chave primaria.
                           DISPLAY "CONTATO JA CADASTRADO"
                       NOT INVALID KEY *>Se nao existir, cadastra o coantato.
                           DISPLAY "Contato gravado com sucesso!"
               ELSE
                   DISPLAY "Erro ao abrir arquivo de contatos."
                   DISPLAY "FILE STATUS: " WS-FS
               END-IF

               CLOSE CONTATOS

            DISPLAY
               "Tecle: "
               "<Qualquer tecla> para continuar, ou <f> para finalizar"
            ACCEPT WS-EXIT
           .
       P300-FIM.
       P900-FIM.


            GOBACK.
       END PROGRAM CADCONTT. *> BOA PRATICA, TAMANHO COM 8 CARACTERS.
