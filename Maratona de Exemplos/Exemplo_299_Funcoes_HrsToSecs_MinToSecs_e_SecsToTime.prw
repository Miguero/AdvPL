/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/17/convertendo-segundos-com-as-hrstosecs-mintosecs-e-secstotime-maratona-advpl-e-tl-299/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe299
Convers�o com segundos
@type  Function
@author Atilio
@since 22/02/2023
@obs 

    Fun��o HrsToSecs
    Par�metros
        Recebe um n�mero de horas
    Retorno
        Retorna o n�mero total de segundos

    Fun��o MinToSecs
    Par�metros
        Recebe um n�mero de minutos
    Retorno
        Retorna o n�mero total de segundos

    Fun��o SecsToTime
    Par�metros
        Recebe um n�mero de segundos
    Retorno
        Retorna a hora, minuto e segundos no formato "hh:mm:ss"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe299()
    Local aArea       := FWGetArea()
    Local nResultado  := 0
    Local cHoras      := ""
    
    //Busca o total de segundos conforme uma hora passada
    nResultado := HrsToSecs(10)
    FWAlertInfo("10 horas d� um total de " + cValToChar(nResultado) + " segundos!", "Exemplo HrsToSecs")

    //Busca o total de segundos conforme uma quantidade de minutos
    nResultado := MinToSecs(640)
    FWAlertInfo("640 minutos d� um total de " + cValToChar(nResultado) + " segundos!", "Exemplo MinToSecs")

    //Busca o total de horas, minutos e segundos conforme uma quantidade de segundos
    cHoras := SecsToTime(4590)
    FWAlertInfo("4590 segundos d� o total de " + cHoras + " segundos!", "Exemplo SecsToTime")

    FWRestArea(aArea)
Return
