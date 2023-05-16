      ******************************************************************
      * Author:UELBER PEREIRA DE JESUS
      * Date:04/05/2023
      * Purpose:CONSULTAR CONTATOS.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONSCTT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
      *>          "D:\Estudos_COBOL\CONTATOS.DAT"
               "C:\Users\escrtorio\Documents\COBOL\CONTATOS.DAT"
               ORGANISATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY IS ID-CONTATO
               FILE STATUS IS WS-FS.


       DATA DIVISION.
       FILE SECTION.
       FD CONTATOS.
       COPY FD_CONTT.


       WORKING-STORAGE SECTION.


       01 WS-REGISTRO              PIC X(27) VALUE SPACES.
       01 FILLER REDEFINES WS-REGISTRO.
           03 WS-ID-CONTATO        PIC 9(02).
           03 WS-NM-CONTATO        PIC X(25).
       77 WS-FS        PIC 99.
           88 FS-OK    VALUE 0.


       77 ES-EOF               PIC X.
           88 EOF-OK           VALUE "S" FALSE "N".


       77 WS-EXIT              PIC X.
           88 EXIT-OK          VALUE "F" FALSE "N".


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY"***CONSULTA DE CONTATOS***".

           SET EXIT-OK     TO FALSE.

           PERFORM P300-CONSULTA THRU P300-FIM UNTIL EXIT-OK
           PERFORM P900-FIM.

       P300-CONSULTA.
           SET EOF-OK      TO FALSE.
           SET FS-OK       TO TRUE.

           OPEN INPUT CONTATOS *>ESTOU FAZENDO APENAS A LEITURA.
              IF FS-OK THEN
                  DISPLAY "INFORME O CODIGO DO CONTATO"
                  ACCEPT ID-CONTATO
                   READ CONTATOS INTO WS-REGISTRO
                       KEY IS ID-CONTATO
                       INVALID KEY
                           DISPLAY "CONTATO NAO EXISTE"
                       NOT INVALID KEY
                           DISPLAY WS-ID-CONTATO ' - ' WS-NM-CONTATO
                   END-READ
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


            STOP RUN.
       END PROGRAM CONSCTT.
