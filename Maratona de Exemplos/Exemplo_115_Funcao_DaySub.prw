/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/01/subtraindo-dias-de-uma-data-com-daysub-maratona-advpl-e-tl-115/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe115
Subtrai dias em uma data
@type Function
@author Atilio
@since 13/12/2022
@obs 
    Fun��o DaySub
    Par�metros
        + Data que ser� processada
        + N�mero de dias a serem subtra�dos
    Retorno
        + Retorna a nova data com a subtra��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe115()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local nDias      := 15
    Local dNovaData

    //Faz a subtra��o dos dias
    dNovaData        := DaySub(dDataRef, nDias)

    //Exibe a diferen�a
    FWAlertInfo("Ap�s a subtra��o de " + cValToChar(nDias) + " dia(s), a nova data � " + dToC(dNovaData), "Teste DaySub")

    FWRestArea(aArea)
Return
