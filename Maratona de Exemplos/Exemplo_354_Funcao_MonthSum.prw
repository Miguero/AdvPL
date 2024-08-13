/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/14/exibindo-uma-tela-de-logs-com-a-mostraerro-maratona-advpl-e-tl-355/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe354
Adiciona meses em uma data
@type Function
@author Atilio
@since 26/03/2023
@obs 
    Fun��o MonthSum
    Par�metros
        Data a ser processada
        N�mero de meses a serem adicionados
    Retorno
        Retorna a nova data com a adi��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe354()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local nMeses     := 2
    Local dNovaData

    //Faz a adi��o
    dNovaData        := MonthSum(dDataRef, nMeses)

    //Exibe a diferen�a
    FWAlertInfo("Ap�s a soma de " + cValToChar(nMeses) + " meses, a nova data � " + dToC(dNovaData), "Teste MonthSum")

    FWRestArea(aArea)
Return
