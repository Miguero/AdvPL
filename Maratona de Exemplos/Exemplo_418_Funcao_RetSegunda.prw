/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/16/buscando-a-ultima-segunda-feira-atraves-da-retsegunda-maratona-advpl-e-tl-418/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe418
Busaca a �ltima segunda feira
@type Function
@author Atilio
@since 22/02/2023
@obs 

    Fun��o RetSegunda
    Par�metros
        Recebe uma data de refer�ncia
    Retorno
        Se recebeu um domingo no par�metro avan�a pra pr�xima segunda do contr�rio se for outros dias (ter�a; quarta; etc) vem retroagindo at� a �ltima segunda

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe418()
    Local aArea      := FWGetArea()
    Local dDataRef   := sToD("20230329")
    Local dUltSegun

    //Busca a �ltima segunda feira, conforme data passada
    dUltSegun := RetSegunda(dDataRef)

    //Exibe uma mensagem
    FWAlertInfo("Para a data '" + dToC(dDataRef) + "', a �ltima segunda � '" + dToC(dUltSegun) + "'", "Teste RetSegunda")

    FWRestArea(aArea)
Return
