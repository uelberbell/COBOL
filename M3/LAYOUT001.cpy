       01 CADASTRO-PF.
          03 WS-NOME.
             05 WS-PRIMEIRO-NOME     PIC X(20).
             05 WS-SEGUNDO-NOME      PIC X(20).
          03 WS-TELEFONE.
             05 WS-PAIS              PIC 99.
             05 WS-DDD               PIC 99.
             05 WS-PREFIXO           PIC 9(04).
             05 WS-SUFIXO            PIC 9(04).
          03 WS-ENDERECO.
             05 WS-RUA               PIC X(15).
             05 WS-BAIRRO            PIC X(15).
             05 WS-CIDADE            PIC X(15).
             05 WS-UF                PIC XX.
             05 WS-CEP.
                 07 WS-CEP1          PIC X(4).
                 07 WS-CEP2          PIC X(3).
          03 WS-NACIONALIDADE         PIC X(20).
          03 WS-PROFISSAO             PIC X(20).
