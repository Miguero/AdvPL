/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/09/incluindo-registros-com-as-funcoes-axincluiauto-e-enchauto-maratona-advpl-e-tl-062/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe062
Exemplo de fun��o para inclus�o de registros quando a rotina n�o � em MVC e n�o tem ExecAuto
@type Function
@author Atilio
@since 06/12/2022
@see https://tdn.totvs.com/display/public/framework/EnchAuto
@obs 
    Fun��o AxIncluiAuto
    Par�metros
        + cAlias     , Caractere  , Alias da Tabela
        + cTudoOk    , Caractere  , Fun��o que ser� executada antes de confirmar a grava��o (pra validar se est� tudo ok)
        + cTransact  , Caractere  , Fun��o que ser� executada dentro da transa��o
        + nOpcaoAuto , Num�rico   , Op��o que ser� executada sendo 3 inclus�o e 4 altera��o
        + nLinha     , Num�rico   , N�mero do RecNo caso seja uma altera��o
    Retorno
        + Retorna 1 em caso de sucesso ou 3 em caso de falha

    Fun��o EnchAuto
    Par�metros
        + cAlias     , Caractere  , Alias da Tabela
        + aField     , Array      , Campos utilizados sendo que as posi��es da linha devem ser [1] nome do campo; [2] conte�do; [3] nulo
        + uTudoOk    , Indefinido , Bloco de c�digo ou fun��o executada antes de confirmar a grava��o (pra validar se esta tudo ok)
        + nOpc       , Num�rico   , Op��o que ser� executada sendo 3 inclus�o; 4 altera��o e 5 exclus�o
        + aCpos      , Array      , Indica campos que ser�o considerados mesmo que n�o estejam usados na SX3
    Retorno
        + lValido    , L�gico     , .T. em caso de sucesso ou .F. em caso de falha

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe062()
    Local aArea     := FWGetArea()
    Local cTabela   := "RC1"
    Local aDados    := {}
    Local cTudoOk   := "Gpm660Vld(1)"
    Local cTransact := "Gpm660_PCO()"
    Local nRetorno  := 0
    Private lMsErroAuto := .F.

    //Adiciona os campos para o ExecAuto
    aAdd(aDados, {"RC1_FILTIT", "01",                                Nil})
    aAdd(aDados, {"RC1_PREFIX", "GPE",                               Nil})
    aAdd(aDados, {"RC1_NUMTIT", "000000006",                         Nil})
    aAdd(aDados, {"RC1_CODTIT", "GPE",                               Nil})
    aAdd(aDados, {"RC1_DESCRI", "GPE - Teste 3",                     Nil})
    aAdd(aDados, {"RC1_VALOR",  250,                                 Nil})
    aAdd(aDados, {"RC1_EMISSA", dDataBase,                           Nil})
    aAdd(aDados, {"RC1_VENCTO", DaySum(dDataBase, 5),                Nil})
    aAdd(aDados, {"RC1_VENREA", DaySum(dDataBase, 5),                Nil})
    aAdd(aDados, {"RC1_TIPO",   "NF",                                Nil})
    aAdd(aDados, {"RC1_NATURE", "NATDES0001",                        Nil})
    aAdd(aDados, {"RC1_FORNEC", "F00003",                            Nil})
    aAdd(aDados, {"RC1_LOJA",   "01",                                Nil})
    aAdd(aDados, {"RC1_DTBUSI", FirstDate(MonthSub(dDataBase, 1)),   Nil})
    aAdd(aDados, {"RC1_DTBUSF", LastDate(MonthSub(dDataBase, 1)),    Nil})

    //Inicializa a transa��o
    Begin Transaction
        //Joga a tabela para a mem�ria (M->)
        RegToMemory(;
            cTabela,; // cAlias - Alias da Tabela
            .T.,;     // lInc   - Define se � uma opera��o de inclus�o ou atualiza��o
            .F.;      // lDic   - Define se ir� inicilizar os campos conforme o dicion�rio
        )

        //Se conseguir fazer a execu��o autom�tica
        If EnchAuto(;
            cTabela,; // cAlias  - Alias da Tabela
            aDados,;  // aField  - Array com os campos e valores
            cTudoOk,; // uTUDOOK - Valida��o do bot�o confirmar
            3;        // nOPC    - Opera��o do Menu (3=inclus�o, 4=altera��o, 5=exclus�o)
        )

            //Aciona a efetiva��o da grava��o
            nRetorno := AxIncluiAuto(;
                cTabela,;   // cAlias     - Alias da Tabela
                ,;          // cTudoOk    - Opera��o do TudoOk (se usado no EnchAuto n�o precisa usar aqui)
                cTransact,; // cTransact  - Opera��o acionada ap�s a grava��o mas dentro da transa��o
                3;          // nOpcaoAuto - Opera��o do Menu (3=inclus�o, 4=altera��o, 5=exclus�o)
            )

        Else
            AutoGrLog("Falha na gera��o da RC1!")
            MostraErro()
            DisarmTransaction()
        EndIf
    End Transaction

    FWRestArea(aArea)
Return
