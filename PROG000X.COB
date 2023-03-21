      ******************************************************************
      * Author: Uelber Pereira de Jesus
      * Date: 20/03/2023
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      *========================================================================*
       IDENTIFICATION                              DIVISION.
      *========================================================================*
       PROGRAM-ID. PROG0001.

      *========================================================================*
       ENVIRONMENT                                 DIVISION.
      *========================================================================*
      *------------------------------------------------------------------------*
       CONFIGURATION                           SECTION.
      *------------------------------------------------------------------------*

       SPECIAL-NAMES.

      *------------------------------------------------------------------------*
       INPUT-OUTPUT                            SECTION.
      *------------------------------------------------------------------------*
       FILE-CONTROL.

      *========================================================================*
       DATA DIVISION.
      *========================================================================*

      *------------------------------------------------------------------------*
       FILE                                    SECTION.
      *------------------------------------------------------------------------*
      *------------------------------------------------------------------------*
       WORKING-STORAGE                         SECTION.
       77  WS-NUMEROX           PIC 9(07).
       77  WS-NUMEROX-SINAL     PIC S9(07).
       77  WS-NUMEROX-DECIMAL   PIC 9(07).
       77  WS-NOMEX             PIC A(20).
       77  WS-NOMENUMERO        PIC X(30).
       77  WS-NOME              PIC X(20) VALUE SPACES.
       77  WS-DATA              PIC 9(06) VALUE ZEROS.
       77  WS-DATA-JULIANA      PIC 9(05) VALUE ZEROS.
       77  WS-DIA               PIC 9(01) VALUE ZERO.
       77  WS-HORA              PIC 9(8)  VALUE ZEROS.



      *Neste campo vamos declarar uma classe cliente que é de nível 01 e depois*
      *suas variáveis.
       01  CLIENTE.
            02 NOME    PIC X(50) VALUE "UELBER PEREIRA DE JESUS".
            02 RG      PIC 9(15) VALUE 01224512121.
            02 CPF     PIC 9(15) VALUE 4454545454.
            02 ENDERECO    PIC X(25) VALUE "ANOTONIO VALENCA ROSA 000".
            02 DATANASC.
               03 DIA      PIC X(03) VALUE "19/".
               03 MES      PIC XXX VALUE "04/".
               03 ANO      PIC XXXX VALUE "1988".
               66 MES-ANO RENAMES MES THRU ANO.
      *No nível 66, juntamos duas variáveis em uma.
      *>   Os valores que adicionei em xxx são a mesma coisa que declarar x(03)
       01 GENERO PIC X.
           88 MASCULINO VALUE "M".
           88 FEMININO  VALUE "F".


      *------------------------------------------------------------------------*

      *========================================================================*
       PROCEDURE                                   DIVISION.
      *========================================================================*
           SET MASCULINO TO TRUE.

           DISPLAY "||IMPRIMINDO CADASTRO DO CLIENTE||"
           DISPLAY "NOME: " NOME.
           DISPLAY "RG: " RG.
           DISPLAY "CPF: " CPF.
           DISPLAY "ENDERECO: " ENDERECO
           DISPLAY "DATA DE NASCIMENTO: " DATANASC.
           DISPLAY "IMPRIMINDO VARIAVEIS UNIDAS: " MES-ANO.
               IF MASCULINO
           DISPLAY "SEXO: " GENERO.
           DISPLAY "DIGITE O NOME DE MAIS UM USUARIO: ". ACCEPT WS-NOME.
           DISPLAY "NOME DO ULTIMO USUARIO: " WS-NOME.
                   ACCEPT WS-DATA FROM DATE.
           DISPLAY "DATA DE REGISTRO: " WS-DATA.
                   ACCEPT WS-DATA-JULIANA FROM DAY.
           DISPLAY "DATA JULIANA: " WS-DATA-JULIANA.
                   ACCEPT WS-DIA FROM DAY-OF-WEEK.
           DISPLAY "DIA DA SEMANA: " WS-DIA.
                   ACCEPT WS-HORA FROM TIME.
           DISPLAY "HORARIO DA TRANSACAO: " WS-HORA.
           STOP RUN.
