      ******************************************************************
      * Author:Uelber Pereira de Jesus
      * Date:21/04/2023
      * Purpose: Calcular boletim escolar
      * Tectonics: COBOL
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CFPP999D.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.


       01 WS-ALUNO.
           02 WS-NOME              PIC A(30) VALUE SPACES.
           02 WS-MEDIA             PIC 9(02)V9(02).
           02 WS-MATERIA           PIC A(20) VALUE SPACES.
           02 WS-STATUS            PIC A(10) VALUE SPACES.


       01 WS-NOTAS.
           02 WS-NOTA1                PIC 9(02)V99.
           02 WS-NOTA2                PIC 9(02)V99.
           02 WS-NOTA3                PIC 9(02)V99.
           02 WS-NOTA4                PIC 9(02)V99.

       77 WS-SOMA                     PIC 9(02)V9(02).
       77 WS-CONDICAO                 PIC A(01).
       77 WS-DATACONS                 PIC X(10).



       PROCEDURE DIVISION.
                   PERFORM P00-INICIO
                   PERFORM P00-CAPT1       THRU    P00-CAPT4.
                   PERFORM P100-CALC       THRU    P200-RESULT.
                   PERFORM PCOND-00
                   PERFORM P300-FIM.


                   INITIALISE WS-MEDIA
                              WS-NOTAS.


       P00-INICIO.

            DISPLAY "*********************************************"
            DISPLAY "---------------BOLETIM ESCOLAR--------------"
            DISPLAY "*********************************************".


            DISPLAY "DIGITE O NOME DO ALUNO: "
            ACCEPT WS-NOME.
            DISPLAY "DIGITE A MATERIA: "
            ACCEPT WS-MATERIA.



       P00-ERRO.
               DISPLAY "ALGO DEU ERRADO, VERIFIQUE E TENTE NOVAMENTE!".


       P00-CAPT1.
            DISPLAY "DIGITE A PRIMEIRA NOTA PARA A MATERIA: " WS-MATERIA
            ACCEPT WS-NOTA1
               IF (WS-NOTA1 <= 0) OR (WS-NOTA1 > 10) OR WS-NOTA1 NOT
                   IS NUMERIC THEN
                   DISPLAY "*********************************"
                   DISPLAY "*****VALOR DIGITADO INVALIDO*****"
                   DISPLAY "*********************************"
                   PERFORM P00-CAPT1
               END-IF.



       P00-CAPT2.
            DISPLAY "DIGITE A SEGUNDA NOTA PARA A MATERIA: " WS-MATERIA
            ACCEPT WS-NOTA2
            IF (WS-NOTA2 <= 0) OR (WS-NOTA2 > 10) OR WS-NOTA2 NOT
                   IS NUMERIC THEN
                   DISPLAY "*********************************"
                   DISPLAY "*****VALOR DIGITADO INVALIDO*****"
                   DISPLAY "*********************************"
                   PERFORM P00-CAPT2
               END-IF.
               



       P00-CAPT3.
            DISPLAY "DIGITE A TERCEIRA NOTA PARA A MATERIA: " WS-MATERIA
            ACCEPT WS-NOTA3
            IF (WS-NOTA3 <= 0) OR (WS-NOTA3 > 10) OR WS-NOTA3 NOT
                   IS NUMERIC THEN
                   DISPLAY "*********************************"
                   DISPLAY "*****VALOR DIGITADO INVALIDO*****"
                   DISPLAY "*********************************"
                   PERFORM P00-CAPT3
               END-IF.



       P00-CAPT4.
            DISPLAY "DIGITE A QUARTA NOTA PARA A MATERIA: " WS-MATERIA
            ACCEPT WS-NOTA4.
            IF (WS-NOTA4 <= 0) OR (WS-NOTA4 > 10) OR WS-NOTA4 NOT
                   IS NUMERIC THEN
                   DISPLAY "*********************************"
                   DISPLAY "*****VALOR DIGITADO INVALIDO*****"
                   DISPLAY "*********************************"
                   PERFORM P00-CAPT4
                   END-IF.



       P100-CALC.
               COMPUTE WS-SOMA = WS-NOTA1 + WS-NOTA2 + WS-NOTA3 +
                                                       WS-NOTA4
                   ON SIZE ERROR PERFORM P00-ERRO
               END-COMPUTE.

               COMPUTE WS-MEDIA = WS-SOMA / 4
                   ON SIZE ERROR PERFORM P00-ERRO
               END-COMPUTE.

               IF (WS-MEDIA <= 6,9) THEN
                   MOVE "REPROVADO" TO WS-STATUS
                   ELSE MOVE "APROVADO" TO WS-STATUS.


               ACCEPT WS-DATACONS FROM DATE.
       P200-RESULT.
            DISPLAY "*** RESULTADO DO PROCESSAMENTO ***".
            DISPLAY "__________________________________"
            DISPLAY "**********************************"
            DISPLAY "NOME DO ALUNO:     " WS-NOME.
            DISPLAY "MATERIA:           " WS-MATERIA.
            DISPLAY "MEDIA:             " WS-MEDIA.
            DISPLAY "STATUS:            " WS-STATUS.
            DISPLAY "NOTAS              " WS-NOTAS.
            DISPLAY "A SOMA DAS NOTAS:  " WS-SOMA.
            DISPLAY "DATA CONSULTA:     " WS-DATACONS.
            DISPLAY "**********************************"
            DISPLAY "__________________________________".


       PCOND-00.
        DISPLAY "*****************************************************"
        DISPLAY "DESEJA CONTINUAR: DIGITE 'S' PARA SIM OU 'N' PARA NAO".
           ACCEPT WS-CONDICAO
               IF (WS-CONDICAO = "S") OR (WS-CONDICAO = "s") PERFORM
                                            P00-INICIO THRU PCOND-00
               ELSE  IF WS-CONDICAO = "N" OR WS-CONDICAO = "n" PERFORM
                                                               P300-FIM
               ELSE
                   DISPLAY "**********************************"
                   DISPLAY "VOCE NAO DIGITOU UMA OPCAO VALIDA!"
                   DISPLAY "**********************************"
                   PERFORM PCOND-00.
       P300-FIM.
            DISPLAY "SISTEMA FINALIZADO COM SUCESSO!!"
            STOP RUN.
       END PROGRAM CFPP999D.
