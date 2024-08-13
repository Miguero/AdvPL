/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/22/buscando-o-nome-do-dia-com-a-funcao-cdow-maratona-advpl-e-tl-075/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe075
Exemplo de como buscar qual � o nome do dia da semana de uma determinada data
@type Function
@author Atilio
@since 07/12/2022
@see https://tdn.totvs.com/display/tec/CDow
@obs 
    Fun��o cDow
    Par�metros
        + dExp         , Data         , Data a ser analisada
    Retorno
        + cRet         , Caractere    , Nome do dia em ingl�s

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe075()
    Local aArea     := FWGetArea()
    Local dDataHoje := Date()
    Local dMesPass  := MonthSub(dDataHoje, 1)
    Local dPrimDia  := sToD("20230101")
    Local cDataHoje := ""
    Local cMesPass  := ""
    Local cPrimDia  := ""
    Local cMensagem := ""
    
    //Busca o nome do dia
    cDataHoje := cDow(dDataHoje)
    cMesPass  := cDow(dMesPass )
    cPrimDia  := cDow(dPrimDia )

    //Monta a mensagem a ser exibida
    cMensagem := "'" + dToS(dDataHoje) + "' : '" + cDataHoje + "'" + CRLF
    cMensagem += "'" + dToS(dMesPass ) + "' : '" + cMesPass  + "'" + CRLF
    cMensagem += "'" + dToS(dPrimDia ) + "' : '" + cPrimDia  + "'"
    FWAlertInfo(cMensagem, "Exemplo cDow")

    FWRestArea(aArea)
Return
