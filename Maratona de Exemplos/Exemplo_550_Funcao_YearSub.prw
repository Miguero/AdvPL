/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/21/adicionando-anos-em-uma-data-com-yearsum-maratona-advpl-e-tl-551/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe550
Subtrai anos em uma data
@type Function
@author Atilio
@since 07/04/2023
@obs 
    Fun��o YearSub
    Par�metros
        Data a ser processada
        N�mero de anos a serem subtra�dos
    Retorno
        Retorna a nova data com a subtra��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe550()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local nAnos       := 2
    Local dNovaData

    //Faz a subtra��o
    dNovaData        := YearSub(dDataRef, nAnos)

    //Exibe a diferen�a
    FWAlertInfo("Ap�s a subtra��o de " + cValToChar(nAnos) + " anos, a nova data � " + dToC(dNovaData), "Teste YearSub")

    FWRestArea(aArea)
Return
