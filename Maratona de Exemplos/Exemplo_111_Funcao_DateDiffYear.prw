/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/27/calculando-a-diferenca-de-anos-entre-duas-datas-com-datediffyear-maratona-advpl-e-tl-111/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe111
Retorna a diferen�a em anos entre duas datas
@type Function
@author Atilio
@since 13/12/2022
@obs 
    Fun��o DateDiffYear
    Par�metros
        + Data inicial
        + Data final
    Retorno
        + Retorna a quantidade de anos

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe111()
    Local aArea     := FWGetArea()
    Local dDataIni  := sToD("19930712")
    Local dDataFim  := Date()
    Local nAnos    := 0

    //Busca a diferen�a em dias
    nAnos    := DateDiffYear(dDataIni, dDataFim)

    //Exibe a diferen�a
    FWAlertInfo("A diferen�a � de " + cValToChar(nAnos) + " ano(s)", "Teste DateDiffYear")

    FWRestArea(aArea)
Return
