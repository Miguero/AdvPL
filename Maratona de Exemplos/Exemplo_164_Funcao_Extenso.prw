/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/10/buscando-a-extensao-do-arquivo-com-a-funcao-extractext-maratona-advpl-e-tl-165/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe164
Retorna um valor num�rico em texto extenso
@type Function
@author Atilio
@since 19/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=604534431
@obs 
    Fun��o Extenso
    Par�metros
        + nNumToExt    , Num�rico    , Valor num�rico
        + lQuantid     , L�gico      , Determina se ser� valor monet�rio (.F.) ou quantidade (.T.)
        + nMoeda       , Num�rico    , Define qual texto ser� usado conforme MV_MOEDA*
        + cPrefixo     , Caractere   , Prefixo alternativo
        + cIdioma      , Caractere   , Qual idioma ser� a tradu��o (1=Portugues; 2=Espanhol; 3=Ingles)
        + lCent        , L�gico      , Especifica se deve retornar os centavos (.T.) ou n�o (.F.)
        + lFrac        , L�gico      , Especifica se os centavos devem retornar em modo fracionado (somente em ingl�s)
        + lUsaCon      , L�gico      , Especifica se ser� usado "y" ou "con" (somente em espanhol)
        + cPosMoed     , Caractere   , Especifica a posi��o da descri��o da moeda (1= antes do texto; 2= entre valores e centavos; 3=no final do texto)
    Retorno
        + cExt         , Caractere   , Retorna o valor em texto extenso

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe164()
    Local aArea     := FWGetArea()
    Local nValor    := 2.87
    Local cValor    := ""
    Local cMensagem := ""

    //Montando uma mensagem com as op��es
    cMensagem := Extenso(nValor)                                                                + CRLF
    cMensagem += Capital(Extenso(nValor))                                                       + CRLF
    cMensagem += Capital(Extenso(nValor, /*lQuantid*/, /*nMoeda*/, /*cPrefixo*/, "2"))          + CRLF
    cMensagem += Capital(Extenso(nValor, /*lQuantid*/, /*nMoeda*/, /*cPrefixo*/, "3"))          + CRLF
    FWAlertInfo(cMensagem, "Teste 1 com Extenso")

    //Armazenando o resultado em uma vari�vel
    nValor := 10.79
    cValor := Extenso(nValor)
    FWAlertInfo("O valor � de " + cValToChar(nValor) + " (" + cValor + ")", "Teste 2 com Extenso")

    FWRestArea(aArea)
Return
