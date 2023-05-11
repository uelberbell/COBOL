      ******************************************************************
      * Author:UELBER PEREIRA DE JESUS
      * Date:04/05/2023
      * Purpose:CADASTRO DE CONTATOS. DOCUMENTAR TODO C�DIGO.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. LISCNTT.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
               SELECT CONTATOS ASSIGN TO
               "D:\Estudos_COBOL\M3\CONTATOS.DAT"
               ORGANISATION IS INDEXED
               ACCESS MODE IS SEQUENTIAL
               RECORD KEY IS ID-CONTATO
               FILE STATUS IS WS-FS.


       DATA DIVISION.
       FILE SECTION.
       FD CONTATOS.
       COPY FD_CONTT.


       WORKING-STORAGE SECTION.


       01 WS-REGISTRO              PIC X(22) VALUE SPACES.
       01 FILLER REDEFINES WS-REGISTRO.
           03 WS-ID-CONTATO        PIC 9(02).
           03 WS-NM-CONTATO        PIC X(20).
       77 WS-FS                    PIC 99.
           88 FS-OK            VALUE 0.


       77 ES-EOF                   PIC X.
           88 EOF-OK           VALUE "S" FALSE "N".


       77 WS-EXIT                  PIC X.
           88 EXIT-OK          VALUE "F" FALSE "N".
       77  WS-CONT                 PIC 9(003) VALUE ZEROS.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY"***CADASTRO DE CONTATOS***".

           SET EXIT-OK     TO FALSE.

           PERFORM P300-CADASTRA THRU P300-FIM
           PERFORM P900-FIM.

       P300-CADASTRA.
           SET EOF-OK      TO FALSE.
           SET FS-OK       TO TRUE.
           SET WS-CONT     TO ZEROS. *>Resetando variavel.

           DISPLAY "PARA REGISTRAR UM CONTATO, INFORME: "
           DISPLAY "Um numero para a Indetificao: "
           ACCEPT WS-ID-CONTATO
           DISPLAY "Um nome para o contato: "
           ACCEPT WS-NM-CONTATO


           OPEN I-O CONTATOS
               IF WS-FS EQUAL 35 THEN
                   OPEN OUTPUT CONTATOS
               END-IF

               IF FS-OK THEN
                   MOVE WS-ID-CONTATO      TO ID-CONTATO
                   MOVE WS-NM-CONTATO      TO NM-CONTATO


                   WRITE REG-CONTATOS
                       INVALID KEY
                           DISPLAY "CONTATO JA CADASTRADO"
                       NOT INVALID KEY
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


            STOP RUN.
       END PROGRAM LISCNTT.
