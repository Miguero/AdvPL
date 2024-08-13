/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/29/buscando-o-numero-do-dia-de-uma-data-com-a-funcao-day-maratona-advpl-e-tl-113/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe113
Retorna o dia atual conforme a data informada
@type Function
@author Atilio
@since 13/12/2022
@see https://tdn.totvs.com/display/tec/Day
@obs 
    Fun��o Day
    Par�metros
        + dData         , Data         , Data que ser� analisada
    Retorno
        + nDia          , Num�rico     , Retorna o n�mero do dia de 1 a 31 conforme a data passada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe113()
    Local aArea      := FWGetArea()
    Local dDataRef   := sToD("20221203")
    Local nDiaHoje   := 0

    //Busca o dia atual conforme a data
    nDiaHoje         := Day(dDataRef)

    //Exibe a diferen�a
    FWAlertInfo("Hoje � " + cValToChar(nDiaHoje), "Teste Day")

    FWRestArea(aArea)
Return
