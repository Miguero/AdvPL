/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/07/restaurando-a-memoria-com-fwgetarea-fwrestarea-getarea-e-restarea-maratona-advpl-e-tl-220/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe221
Efetua a busca ou a cria��o / atualiza��o de conte�dos de uma tabela gen�rica (SX5)
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWGetSX5 e https://tdn.totvs.com/pages/releaseview.action?pageId=286016719
@obs 

    Fun��o FWGetSX5
    Par�metros
        + cTable        , Caractere   , C�digo da tabela gen�rica (X5_TABELA)
        + cKey          , Caractere   , C�digo da chave de pesquisa X5_CHAVE
        + cIdiom        , Caractere   , Idioma de pesquisa sendo poss�vel: pt-br; pt-pt; en; es e ru 
    Retorno
        + xRetorno      , Array       , Array com as posi��es [1] Filial ; [2] Tabela ; [3] Chave ; [4] Descri��o

    Fun��o FWPutSX5
    Par�metros
        + cFlavour      , Caractere   , C�digo do Flavour
        + cTable        , Caractere   , C�digo da tabela gen�rica (X5_TABELA)
        + cChave        , Caractere   , C�digo da chave (X5_CHAVE)
        + cTextoPor     , Caractere   , Texto com conte�do em portugu�s (X5_DESCRI)
        + cTextoEng     , Caractere   , Texto com conte�do em ingl�s (X5_DESCENT)
        + cTextoEsp     , Caractere   , Texto com conte�do em espanhol (X5_DESCSPA)
        + cTextoAlt     , Caractere   , Texto do idioma alternativo
    Retorno
        + Retorna .T. se conseguiu criar / alterar ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe221()
    Local aArea     := FWGetArea()
    Local aEstados
    Local aSaoPaulo
    Local cTabela   := ""
    Local cChave    := ""
    Local cConteudo := ""

    //Busca a informa��o de todos os estados
    aEstados := FWGetSX5("12")
    FWAlertInfo("Foi encontrado " + cValToChar(Len(aEstados)) + " estados", "Teste 1 FWGetSX5")

    //Busca somente de 1 estado
    aSaoPaulo := FWGetSX5("12", "SP")

    //Se houver dados
    If Len(aSaoPaulo) > 0
        FWAlertInfo("A descri��o do estado � '" + aSaoPaulo[1][4] + "'", "Teste 2 FWGetSX5")
    EndIf

    //Faz a grava��o de um conte�do existente na SX5
    cTabela   := "01"
    cChave    := "B"
    cConteudo := StrTran(Time(), ":", "")
    FwPutSX5(, cTabela, cChave, cConteudo, cConteudo, cConteudo)

    //Cria um novo registro na SX5 caso n�o exista
    cTabela   := "01"
    cChave    := "DAN"
    cConteudo := "000000001"
    FwPutSX5(, cTabela, cChave, cConteudo, cConteudo, cConteudo)

    FWRestArea(aArea)
Return
