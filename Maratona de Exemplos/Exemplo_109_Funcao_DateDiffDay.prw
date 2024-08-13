/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/25/calculando-a-diferenca-de-dias-entre-duas-datas-com-datediffday-maratona-advpl-e-tl-109/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe109
Retorna a diferen�a em dias entre duas datas
@type Function
@author Atilio
@since 12/12/2022
@obs 
    Fun��o DateDiffDay
    Par�metros
        + Data inicial
        + Data final
    Retorno
        + Retorna a quantidade de dias

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe109()
    Local aArea     := FWGetArea()
    Local dDataIni  := sToD("19930712")
    Local dDataFim  := Date()
    Local nDias     := 0

    //Busca a diferen�a em dias
    nDias     := DateDiffDay(dDataIni, dDataFim)

    //Exibe a diferen�a
    FWAlertInfo("A diferen�a � de " + cValToChar(nDias) + " dia(s)", "Teste DateDiffDay")

    FWRestArea(aArea)
Return
