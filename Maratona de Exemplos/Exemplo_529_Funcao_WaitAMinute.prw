/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/10/pausando-a-execucao-por-3-segundos-com-a-waitaminute-maratona-advpl-e-tl-529/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe529
Pausa a execu��o da fun��o por 3 segundos
@type Function
@author Atilio
@since 06/04/2023
@obs 

    Fun��o WaitAMinute
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe529()
    Local aArea      := FWGetArea()
    Local cInicio    := ""
    Local cTermino   := ""

    //Aciona a rotina para esperar 3 segundos e marca o tempo antes e depois
    cInicio := Time()
    WaitAMinute()
    cTermino := Time()

    //Mostra a diferen�a de tempo
    FWAlertInfo("Total espera: " + ElapTime(cInicio, cTermino), "Teste WaitAMinute")

    FWRestArea(aArea)
Return
