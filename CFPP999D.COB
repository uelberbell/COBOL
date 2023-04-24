      ******************************************************************
      * Author:Uelber Pereira de Jesus
      * Date:21/04/2023
      * Purpose: Calculas Num boletim escolar
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

       01 WS-STATUS                PIC X(10).
           88 APROVADO  VALUE 7,0 THRU 10,00.
           88 REPROVADO VALUE 0,0 THRU 4,5.

       01 WS-MATERIAS.
           02 WS-MATERIA1          PIC A(15) VALUE SPACES.
           02 WS-MATERIA2          PIC A(15) VALUE SPACES.
           02 WS-MATERIA3          PIC A(15) VALUE SPACES.
           02 WS-MATERIA4          PIC A(15) VALUE SPACES.

       01 WS-NOTAS.
           02 WS-NOTA1                PIC 9(02)V99.
           02 WS-NOTA2                PIC 9(02)V99.
           02 WS-NOTA3                PIC 9(02)V99.
           02 WS-NOTA4                PIC 9(02)V99.


       PROCEDURE DIVISION.
                   PERFORM P00-INICIO.
                   PERFORM P200-RESULT.

       P00-INICIO.

            DISPLAY "*********************************************"
            DISPLAY "---------------BOLETIM ESCOLAR--------------"
            DISPLAY "*********************************************".


            DISPLAY "DIGITE O NOME DO ALUNO: "
            ACCEPT WS-NOME.

            DISPLAY "DIGITE A MATERIA 1: "
            ACCEPT WS-MATERIA1
            DISPLAY "DIGITE A NOTA PARA A MATERIA: " WS-MATERIA1
            ACCEPT WS-NOTA1

            DISPLAY "DIGITE A MATERIA 2: "
            ACCEPT WS-MATERIA2
            DISPLAY " DIGITE A NOTA PARA A MATERIA: " WS-MATERIA2
            ACCEPT WS-NOTA2

            DISPLAY "DIGITE A MATERIA 3: "
            ACCEPT WS-MATERIA3
            DISPLAY "DIGITE A NOTA PARA A MATERIA: " WS-MATERIA3
            ACCEPT WS-NOTA3

            DISPLAY "DIGUTE A MATERIA 4: "
            ACCEPT WS-MATERIA4
            DISPLAY "DIGITE A NOTA PARA A MATERIA: " WS-MATERIA4
            ACCEPT WS-NOTA4.

       P99-ERRO.

            DISPLAY "VERIFIQUE OS DADOS DIGITADOS, ALGO ESTÁ ERRADO".

       P100-CALC.
       P200-RESULT.

            DISPLAY "*** RESULTADO DO PROCESSAMENTO ***".

            DISPLAY "NOME DO ALUNO:     " WS-NOME.
            DISPLAY "MATÉRIA:           " WS-MATERIA1.
            DISPLAY "MEDIA:             " WS-MEDIA.
            DISPLAY "STATUS:            " WS-STATUS.

       P300-FIM.

            STOP RUN.
       END PROGRAM CFPP999D.
