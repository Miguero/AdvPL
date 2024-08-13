/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/08/calculando-o-total-de-horas-com-a-subthoras-maratona-advpl-e-tl-464/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe464
Calcula o total de horas entre duas datas e hor�rios
@type Function
@author Atilio
@since 02/04/2023
@obs 
    Fun��o SubtHoras
    Par�metros
        Data Inicial para se fazer as contas
        Hora Inicial para se fazer as contas
        Data Final para se fazer as contas
        Hora Final para se fazer as contas
        .T. se retorna a quantidade total de horas ou .F. se considera no m�ximo 9 horas por dia
    Retorno
        Retorna o valor num�rico com a diferen�a em horas

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe464()
    Local aArea     := FWGetArea()
    Local dDataIni  := sToD("20230405")
    Local dDataFim  := sToD("20230406")
    Local cHoraIni  := "08:00"
    Local cHoraFim  := "17:00"
    Local nResult   := 0

    //Aciona a fun��o para verificar o total de horas (18 horas)
    nResult := SubtHoras(dDataIni, cHoraIni, dDataFim, cHoraFim, .F.)
    FWAlertInfo("O resultado �: " + cValToChar(nResult), "Teste 1 - SubtHoras")

    //Aciona a fun��o para verificar o total de horas (33 horas)
    nResult := SubtHoras(dDataIni, cHoraIni, dDataFim, cHoraFim, .T.)
    FWAlertInfo("O resultado �: " + cValToChar(nResult), "Teste 2 - SubtHoras")

    FWRestArea(aArea)
Return
