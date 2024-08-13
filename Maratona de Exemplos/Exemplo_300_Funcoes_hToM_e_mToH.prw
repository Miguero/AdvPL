/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/18/consumindo-um-get-atraves-da-httpget-maratona-advpl-e-tl-301/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe299
Convers�es entre horas e minutos
@type  Function
@author Atilio
@since 22/02/2023
@obs 

    Fun��o hToM
    Par�metros
        Recebe um n�mero de horas
    Retorno
        Retorna o n�mero total de minutos

    Fun��o mToH
    Par�metros
        Recebe um n�mero de minutos
    Retorno
        Retorna a hora, minuto e segundos no formato "hh:mm"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe300()
    Local aArea       := FWGetArea()
    Local nResultado  := 0
    Local cHoras      := ""
    
    //Busca os minutos atrav�s de uma hora
    nResultado := hToM("10:25")
    FWAlertInfo("10:25 horas d� um total de " + cValToChar(nResultado) + " minutos!", "Exemplo hToM")

    //Busca uma hora atrav�s dos minutos
    cHoras := mToH(640)
    FWAlertInfo("640 minutos d� um total de " + cHoras + "!", "Exemplo mToH")

    FWRestArea(aArea)
Return
