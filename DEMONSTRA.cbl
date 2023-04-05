      ******************************************************************
      * Author: Uelber
      * Date: 30/03/2023
      * Purpose: Exemplo de um programa
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DEMONSTRA.
       DATA DIVISION.*>FAZ CONFIG DE ACESSO AOS ARQUIVOS
       FILE SECTION.
       WORKING-STORAGE SECTION.*>SECAO DE DECLRACAO DE ITENS

       01 DATAS.
         02 DIA              PIC 9(02) VALUE ZEROS.
         02 MES              PIC 9(02) VALUE ZEROS.
         02 ANO              PIC 9(04) VALUE ZEROS.
           02 NASCIMENTO.
               03 HORAS      PIC X(05) VALUE ZEROS.

       77 WS-DADOS           PIC 9(05) VALUE ZEROS.

       PROCEDURE DIVISION.

           MOVE 04         TO DIA
           MOVE 04         TO MES
           MOVE 1444       TO ANO
           MOVE "14H44"    TO HORAS.



           DISPLAY "DATAS: "DATAS.
           ACCEPT DATAS FROM DATE YYYYMMDD.
           DISPLAY DATAS.

           INSPECT DATAS REPLACING ALL "04" BY "10" AFTER "0".

           DISPLAY "DATAS ALTERADAS: " DATAS.


       MAIN-PROCEDURE.

            STOP RUN.
       END PROGRAM DEMONSTRA.
