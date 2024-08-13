/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/29/buscando-o-tempo-total-entre-dois-periodos-com-attothora-e-difperiodo-maratona-advpl-e-tl-052/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe052
Exemplo de fun��o que retorna o tempo total entre duas datas e hor�rios
@type Function
@author Atilio
@since 05/12/2022
@obs 
    Fun��o AtTotHora
    Par�metros
        + Data inicial
        + Hora inicial
        + Data final
        + Hora final
        + M�scara que ir� formatar o retorno (sendo opcional com o conte�do default "999D 99:99")
    Retorno
        + Retorna o tempo total encontrado

    Fun��o DifPeriodo
    Par�metros
        + Data inicial
        + Hora inicial
        + Data final
        + Hora final
    Retorno
        + Retorna o tempo total encontrado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe052()
    Local aArea      := FWGetArea()
    Local dDataIni   := sToD("20221201")
    Local cHoraIni   := "06:30:00"
    Local dDataFim   := sToD("20221205")
    Local cHoraFim   := "14:15:00"
    Local cResult1   := ""
    Local cResult2   := ""

    //Busca o total com AtTotHora (que retorna o n�mero de dias com horas)
    cResult1 := AtTotHora(dDataIni, cHoraIni, dDataFim, cHoraFim)
    FWAlertInfo("Resultado da fun��o �: " + cResult1, "Teste AtTotHora")

    //Busca o total com DifPeriodo (que retorna o n�mero total de horas entre duas datas)
    cResult2 := DifPeriodo(dDataIni, cHoraIni, dDataFim, cHoraFim)
    FWAlertInfo("Resultado da fun��o �: " + cResult2, "Teste DifPeriodo")

    FWRestArea(aArea)
Return
