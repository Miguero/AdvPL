/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/21/subtraindo-anos-de-uma-data-com-yearsub-maratona-advpl-e-tl-550/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe551
Adiciona anos em uma data
@type Function
@author Atilio
@since 07/04/2023
@obs 
    Fun��o YearSum
    Par�metros
        Data a ser processada
        N�mero de anos a serem adicionados
    Retorno
        Retorna a nova data com a adi��o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe551()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local nAnos      := 2
    Local dNovaData

    //Faz a adi��o
    dNovaData        := YearSum(dDataRef, nAnos)

    //Exibe a diferen�a
    FWAlertInfo("Ap�s a soma de " + cValToChar(nAnos) + " anos, a nova data � " + dToC(dNovaData), "Teste YearSum")

    FWRestArea(aArea)
Return
