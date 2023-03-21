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
       77  NUMEROX           PIC 9(07).
       77  NUMEROX-SINAL     PIC S9(07).
       77  NUMEROX-DECIMAL   PIC 9(07).
       77  NOMEX             PIC A(20).
       77  NOMENUMERO        PIC X(30).
      *Neste campo vamos declarar uma classe cliente que é de nível 01 e depois*
      *suas variáveis.
       01  CLIENTE.
            02 NOME    PIC X(50) VALUE "UELBER PEREIRA DE JESUS".
            02 RG      PIC 9(15) VALUE 01224512121.
            02 CPF     PIC 9(15) VALUE 4454545454.
            02 ENDERECO    PIC X(50) VALUE "ANOTONIO VALENCA ROSA 000".
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

           STOP RUN.
