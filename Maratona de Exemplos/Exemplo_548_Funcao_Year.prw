/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/20/busca-um-ano-ja-formatado-como-string-atraves-da-year2str-maratona-advpl-e-tl-549/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe548
Retorna o n�mero do ano conforme data informada
@type Function
@author Atilio
@since 07/04/2023
@see https://tdn.totvs.com/display/tec/Year
@obs 

    Fun��o Year
    Par�metros
        + dDate    , Data      , Data a ser validada
    Retorno
        + nYear    , Num�rico  , N�mero do ano

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe548()
	Local aArea    := FWGetArea()
    Local dDtHoje  := Date()
    Local nAno

    //Pega o ano da data de hoje
    nAno := Year(dDtHoje)
    FWAlertInfo("O ano � " + cValToChar(nAno), "Teste - Year")

    FWRestArea(aArea)
Return
