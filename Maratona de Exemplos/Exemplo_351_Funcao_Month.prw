/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/12/gerando-uma-tabela-em-html-com-a-montatabelahtml-maratona-advpl-e-tl-350/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe351
Retorna o n�mero do m�s conforme data informada
@type Function
@author Atilio
@since 26/03/2023
@see https://tdn.totvs.com/display/tec/Month
@obs 

    Fun��o Month
    Par�metros
        + dData    , Data      , Data a ser validada
    Retorno
        + nRet     , Num�rico  , N�mero do m�s

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe351()
	Local aArea    := FWGetArea()
    Local dDtHoje  := Date()
    Local nMes

    //Pega o m�s da data de hoje
    nMes := Month(dDtHoje)
    FWAlertInfo("O m�s � " + cValToChar(nMes), "Teste - Month")

    FWRestArea(aArea)
Return
