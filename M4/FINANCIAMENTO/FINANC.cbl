      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: ARRAY DINAMICO
      * Update: Tratando de parcela menor que zero ou maior que 420.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FINANC.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 FINANCIAMENTO.
           03 WS-NOME      PIC A(18) VALUE SPACES.
           03 WS-NM-PRODUTO        PIC A(18) VALUE SPACES.
           03 WS-VALOR             PIC 9(06)V99.
           03 WS-NUM-PARCELAS      PIC 999.
           03 WS-PARCELAS       PIC $$.$$9,99 OCCURS 1 TO 420 TIMES
                                DEPENDING ON WS-NUM-PARCELAS.

       01 WS-VARIAVEIS.
           03 WS-VL-PARCELAS       PIC 9(05)V99.
           03 WS-IND               PIC 999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INITIALISE      WS-VARIAVEIS

               DISPLAY "INFORME O NOME DO CLIENTE: "
               ACCEPT WS-NOME
               DISPLAY "INFORME QUAL O PRODUTO: "
               ACCEPT WS-NM-PRODUTO.
               DISPLAY "INFORME O VALOR DO PRODUTO: "
               ACCEPT WS-VALOR.
           P00PARC.
               DISPLAY "INFORME O NUMERO DE VEZES QUE DESEJA PORCELAR: "
               ACCEPT WS-NUM-PARCELAS

                IF WS-NUM-PARCELAS = 0 OR > 420 THEN
                DISPLAY "VALOR DE PARCELA PRECISA SER MAIOR QUE ZERO(0)"
                        "OU MENOR QUE 420"
                 PERFORM P00PARC
                .

               COMPUTE WS-VL-PARCELAS = WS-VALOR / WS-NUM-PARCELAS

               PERFORM UNTIL WS-IND EQUAL WS-NUM-PARCELAS
               ADD 1       TO WS-IND
               MOVE WS-VL-PARCELAS     TO WS-PARCELAS(WS-IND)
               END-PERFORM

               PERFORM VARYING WS-IND FROM 1 BY 1 UNTIL
                               WS-IND > WS-NUM-PARCELAS
                   DISPLAY "PARCELA " WS-IND ": " WS-PARCELAS(WS-IND)

               END-PERFORM.
           P00FIM.
            STOP RUN.
       END PROGRAM FINANC.
