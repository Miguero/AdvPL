/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/30/buscando-o-numero-do-dia-no-formato-dd-com-a-day2str-maratona-advpl-e-tl-114/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe114
Retorna o dia atual conforme a data informada no formato "DD"
@type Function
@author Atilio
@since 13/12/2022
@obs 
    Fun��o Day2Str
    Par�metros
        + Conte�do que ser� analisado podendo ser: Data (ex: 05/12/2022); Num�rico (ex: 5); Caractere (ex: "5")
    Retorno
        + Retorna uma string com o dia no formato "DD"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe114()
    Local aArea      := FWGetArea()
    Local dDataRef   := sToD("20221203")
    Local cDiaHoje   := ""

    //Busca o dia atual conforme a data
    cDiaHoje         := Day2Str(dDataRef)

    //Exibe a diferen�a
    FWAlertInfo("Hoje � " + cDiaHoje, "Teste Day2Str")

    FWRestArea(aArea)
Return
