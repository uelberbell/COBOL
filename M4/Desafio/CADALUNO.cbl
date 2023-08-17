      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADALUNO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CDALUNO ASSIGN TO
             "C:\Users\escrtorio\Documents\COBOL\M4\Desafio\CDALUNO.DAT"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY IS ID-ALUNO
               FILE STATUS IS WS-FS.

       DATA DIVISION.
       FILE SECTION.
       FD CDALUNO.
       COPY CFPK0001.


       WORKING-STORAGE SECTION.
       01 WS-CAD           PIC X(32) VALUE SPACES.
       01 FILLER REDEFINES WS-CAD.
           03 WS-ID-ALUNO          PIC 9(03).
           03 WS-NM-ALUNO          PIC A(20).
           03 WS-TL-ALUNO          PIC 9(09).

       77 WS-FS            PIC 99.
           88 FS-OK VALUE 0.

       77 ES-EOF           PIC X.
           88 EOF-OK       VALUE "S" FALSE "N".

       77 WS-EXIT          PIC X.
           88 EXIT-OK      VALUE "F" FALSE "N".


       LINKAGE SECTION.
       01 LK-COM-AREA.
           03 LK-MENSAGEM  PIC X(40).

       PROCEDURE DIVISION USING LK-COM-AREA.
       MAIN-PROCEDURE.

           DISPLAY LK-MENSAGEM.
           SET EXIT-OK     TO FALSE.

      *>  *----------------------------------------------------------------------*
      *>                              ***CADASTRO***
      *>  *----------------------------------------------------------------------*


           PERFORM P300CADASTRA THRU P300FIM UNTIL EXIT-OK
           PERFORM P900FIM.


           P300CADASTRA.

               SET EOF-OK      TO FALSE.
               SET FS-OK       TO TRUE.

               DISPLAY "PARA REGISTRAR UM CONTATO INFORME UM NUMERO"
                                                " DE INDENTIFICACAO: "
               ACCEPT WS-ID-ALUNO.
               DISPLAY "DIGITE O NOME DO ALUNO: "
               ACCEPT WS-NM-ALUNO.
               DISPLAY "DIGITE O TELEFONE DO ALUNO: "
               ACCEPT WS-TL-ALUNO.


      *>          VERIFICAR ARQUIVO
               OPEN I-O CDALUNO
                   IF WS-FS EQUAL 35 THEN
                       OPEN OUTPUT CDALUNO
                   END-IF.

                   IF FS-OK THEN
                       MOVE WS-ID-ALUNO TO ID-ALUNO
                       MOVE WS-NM-ALUNO TO NM-ALUNO
                       MOVE WS-TL-ALUNO TO TL-ALUNO

      *>                 ESCREVER NO LAYOUT PARA ARQUIVO
                   WRITE FD-ALUNO
                       INVALID KEY
                           DISPLAY "CONTATO JÁ CADASTRADO!"
                       NOT INVALID KEY
                           DISPLAY "CADASTRO REALIZADO COM SUCESSO"
                           DISPLAY WS-CAD
                   ELSE
                       DISPLAY "ERRO AO ABRIR ARQUIVO DE ALUNOS"
                       DISPLAY "FILE STATUS: " WS-FS
                   END-IF.
                   CLOSE CDALUNO


                   DISPLAY "PRESSIONA QUALQUER TECLA PARA CONTINUAR"
                                                   "OU <F> PARA SAIR"
                                                   ACCEPT WS-EXIT.
           P300FIM.
           P900FIM.
            GOBACK.
       END PROGRAM CADALUNO.
