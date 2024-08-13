/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/15/pegando-siglas-dos-estados-com-festibge-lj901auf-ufcodibge-retufibge-maratona-advpl-e-tl-175/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe175
Fun��es que retornam as siglas dos estados (UF)
@type Function
@author Atilio
@since 20/12/2022
@obs 
    fEstIBGE
    Par�metros
        + Sigla do estado no formato "XX"
    Retorno
        + C�digo do estado conforme IBGE

    Lj901AUF
    Par�metros
        + C�digo do estado conforme IBGE
    Retorno
        + Sigla do estado no formato "XX"

    UfCodIBGE
    Par�metros
        + Sigla do estado no formato "XX"
        + .T. se deve retornar s� o estado ou .F. se retorna array com todos os estados
    Retorno
        + Se n�o enviar o cUF e o lForceUF for .F. ele retorna um array com os estados sen�o retorna o c�digo conforme IBGE

    RetUfIBGE
    Par�metros
        + Sigla do estado no formato "XX"
        + .T. se deve retornar s� o estado ou .F. se retorna array com todos os estados
    Retorno
        + Se n�o enviar o cUF e o lForceUF for .F. ele retorna um array com os estados sen�o retorna o c�digo conforme IBGE

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe175()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""
    Local aEstados   := {}

    //Monta a mensagem
    cMensagem += "A sigla do estado do PI �: " + fEstIBGE("PI")  + CRLF + CRLF
    cMensagem += "O estado da sigla 29 �: "    + Lj901AUF("29")  + CRLF + CRLF
    cMensagem += "A sigla do estado de SP �: " + UfCodIBGE("SP") + CRLF + CRLF
    cMensagem += "A sigla do estado de SC �: " + RetUfIBGE("SC") + CRLF + CRLF
    FWAlertInfo(cMensagem, "Teste de Siglas dos Estados")

    //Busca todos os estados e siglas
    aEstados := UfCodIBGE("", .F.) //ou RetUfIBGE("", .F.)
    FWAlertInfo("Foi encontrado " + cValToChar(Len(aEstados)) + " estado(s)", "Teste de Siglas dos Estados")

    FWRestArea(aArea)
Return
