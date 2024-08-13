/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/13/subtraindo-meses-de-uma-data-com-a-monthsub-maratona-advpl-e-tl-353/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe353
Subtrai meses em uma data
@type Function
@author Atilio
@since 26/03/2023
@obs 
    Fun��o MonthSub
    Par�metros
        Data a ser processada
        N�mero de meses a serem subtra�dos
    Retorno
        Retorna a nova data com a subtra��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe353()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local nMeses     := 2
    Local dNovaData

    //Faz a subtra��o
    dNovaData        := MonthSub(dDataRef, nMeses)

    //Exibe a diferen�a
    FWAlertInfo("Ap�s a subtra��o de " + cValToChar(nMeses) + " meses, a nova data � " + dToC(dNovaData), "Teste MonthSub")

    FWRestArea(aArea)
Return
