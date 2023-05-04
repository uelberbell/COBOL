      ******************************************************************
      * Author:UELBER PEREIRA DE JESUS
      * Date:04/05/2023
      * Purpose:CADASTRO DE CONTATOS. DOCUMENTAR TODO C�DIGO.
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
               "C:\Users\escrtorio\Documents\COBOL\M3\CONTATOS.txt"
               ORGANISATION IS SEQUENTIAL
               ACCESS MODE IS SEQUENTIAL
               FILE STATUS IS WS-FS.


       DATA DIVISION.
       FILE SECTION.
       FD CONTATOS.
       COPY FD_CONTT. *> IMPORTANDO O NOSSO LAYOUT.

       WORKING-STORAGE SECTION.

       *> Variavel que recebe os dados totalizados do nosso layout.
       01 WS-REGISTRO              PIC X(22) VALUE SPACES.
       01 FILLER REDEFINES WS-REGISTRO. *> Redefine novo espaco em memoria.
           03 WS-ID-CONTATO        PIC 9(02).
           03 WS-NM-CONTATO        PIC X(20).
       77 WS-FS        PIC 99. *> Variavel para verificar existencia do arquivo.
           88 FS-OK    VALUE 0.

       *> Agora vamos criar uma variavel para controlar a leitura do arquivo.
       77 ES-EOF               PIC X. *> Testar true or false.
           88 EOF-OK           VALUE "S" FALSE "N". *> SE OK = "S" SENAO = "N"

       *> Criar outra variavel para loop, sair ou continuar o programa.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            STOP RUN.
       END PROGRAM CADCONTT. *> BOA PRATICA, TAMANHO COM 8 CARACTERS.
