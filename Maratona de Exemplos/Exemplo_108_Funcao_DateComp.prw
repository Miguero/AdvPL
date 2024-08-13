/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/24/calculando-dias-e-meses-com-a-funcao-datecomp-maratona-advpl-e-tl-108/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe108
Calcula dias ou meses entre duas datas
@type Function
@author Atilio
@since 12/12/2022
@obs 
    Fun��o DateComp
    Par�metros
        + Data inicial
        + Data final
        + Define se quer saber a diferen�a entre: DD ou MM
    Retorno
        + Retorna a quantidade de dias; meses ou anos

    A fun��o at� tem parametriza��o para receber anos (com YY), mas o c�lculo sempre retorna
    incorreto, ent�o evitem usar para anos, usem apenas para dias ou meses

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe108()
    Local aArea     := FWGetArea()
    Local dDataIni  := sToD("19930712")
    Local dDataFim  := Date()
    Local nDias     := 0
    Local nMeses    := 0
    Local cMensagem := ""

    //Busca a diferen�a em dias e meses
    nDias     := DateComp(dDataIni, dDataFim, "DD")
    nMeses    := DateComp(dDataIni, dDataFim, "MM")

    //Monta a mensagem e a exibe
    cMensagem := "Abaixo diferen�a entre as duas datas" + CRLF + CRLF
    cMensagem += "Dias: "  + cValToChar(nDias)  + " ou " + CRLF
    cMensagem += "Meses: " + cValToChar(nMeses) + CRLF
    FWAlertInfo(cMensagem, "Teste DateComp")

    FWRestArea(aArea)
Return
