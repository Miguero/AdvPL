/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/04/manipulando-filtros-em-um-alias-com-dbclearfilter-e-dbsetfilter-maratona-advpl-e-tl-118/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe118
Realiza (ou limpa) o filtro em um alias
@type Function
@author Atilio
@since 13/12/2022
@see https://tdn.totvs.com/display/tec/DBClearFilter e https://tdn.totvs.com/display/tec/DBSetFilter
@obs 
    Fun��o DBClearFilter
    N�o possui par�metros nem retorno

    Fun��o DBSetFilter
    Par�metros
        + bCond       , Bloco de C�digo  , Bloco de c�digo a ser executado em AdvPL
        + cCond       , Caractere        , Condi��o a ser avaliada em AdvPL
    Retorno
        + N�o possui retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe118()
    Local aArea      := FWGetArea()
    Local nAntes     := 0
    Local nComFiltro := 0
    Local nDepois    := 0
    Local cFiltro    := ""
    Local cMensagem  := ""

    DbSelectArea("SBM")
    SBM->(DbSetOrder(1)) // Filial + C�digo do Grupo

    //Conta quantos registros tem antes do filtro
    Count To nAntes
    SBM->(DbGoTop())

    //Monta o filtro que ser� usado, aplica e conta quantos registros ficaram
    cFiltro := "! Empty(SBM->BM_GRUPO) .And. ! Empty(SBM->BM_PROORI)"
    SBM->(DbSetFilter({|| &(cFiltro)}, cFiltro))
    Count To nComFiltro
    SBM->(DbGoTop())

    //Agora limpa o filtro e conta quantos registros ficaram
    SBM->(DbClearFilter())
    Count To nDepois
    SBM->(DbGoTop())

    //Monta a mensagem e exibe
    cMensagem := "Antes (ao abrir a tabela): " + cValToChar(nAntes) + CRLF
    cMensagem += "Com o Filtro: " + cValToChar(nComFiltro) + CRLF
    cMensagem += "Ap�s a Limpeza do Filtro: " + cValToChar(nDepois)
    FWAlertInfo(cMensagem, "Teste DbSetFilter e DbClearFilter")

    FWRestArea(aArea)
Return
