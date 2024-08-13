/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/20/buscando-o-proximo-numero-sequencial-com-a-nextnumero-maratona-advpl-e-tl-367/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe367
Retorna o pr�ximo n�mero dispon�vel na tabela
@type Function
@author Atilio
@since 27/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814928
@obs 

    Fun��o NextNumero
    Par�metros
        + cAlias      , Caractere     , Alias da Tabela
        + nOrdem      , Num�rico      , �ndice utilizado
        + cNomeCpo    , Caractere     , Nome do campo a ser verificado
        + lSomar      , L�gico        , .T. se ir� incrementar ou .F. se n�o
        + cVar        , Caractere     , Valor a ser pesquisado caso o lSomar seja .F.
    Retorno
        + cNumero     , Caractere     , Retorna o n�mero conforme os par�metros informados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe367()
    Local aArea     := FWGetArea()
    Local cProximo  := ""

    //Busca o pr�ximo pedido de compra
    cProximo := NextNumero("SC7", 1, "C7_NUM", .T.)

    //Exibe em uma mensagem
    FWAlertInfo("O pr�ximo pedido de compra � '" + cProximo + "'", "Teste NextNumero")
 
    FWRestArea(aArea)
Return
