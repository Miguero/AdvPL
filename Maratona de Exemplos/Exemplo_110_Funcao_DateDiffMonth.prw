/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/26/calculando-a-diferenca-de-meses-entre-duas-datas-com-datediffmonth-maratona-advpl-e-tl-110/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe110
Retorna a diferen�a em meses entre duas datas
@type Function
@author Atilio
@since 12/12/2022
@obs 
    Fun��o DateDiffMonth
    Par�metros
        + Data inicial
        + Data final
    Retorno
        + Retorna a quantidade de meses

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe110()
    Local aArea     := FWGetArea()
    Local dDataIni  := sToD("19930712")
    Local dDataFim  := Date()
    Local nMeses    := 0

    //Busca a diferen�a em dias
    nMeses    := DateDiffMonth(dDataIni, dDataFim)

    //Exibe a diferen�a
    FWAlertInfo("A diferen�a � de " + cValToChar(nMeses) + " m�s(es)", "Teste DateDiffMonth")

    FWRestArea(aArea)
Return
