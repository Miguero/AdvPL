/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/02/somando-dias-em-uma-data-com-a-daysum-maratona-advpl-e-tl-116/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe116
Adiciona dias em uma data
@type Function
@author Atilio
@since 13/12/2022
@obs 
    Fun��o DaySum
    Par�metros
        + Data que ser� processada
        + N�mero de dias a serem somados
    Retorno
        + Retorna a nova data com a soma

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe116()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local nDias      := 10
    Local dNovaData

    //Faz a adi��o dos dias
    dNovaData        := DaySum(dDataRef, nDias)

    //Exibe a diferen�a
    FWAlertInfo("Ap�s a adi��o de " + cValToChar(nDias) + " dia(s), a nova data � " + dToC(dNovaData), "Teste DaySum")

    FWRestArea(aArea)
Return
