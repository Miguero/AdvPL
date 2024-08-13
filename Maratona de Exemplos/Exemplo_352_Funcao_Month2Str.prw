/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/13/buscando-o-mes-de-uma-data-no-formato-mm-com-a-month2str-maratona-advpl-e-tl-352/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe352
Retorna o m�s conforme data informada no formato "MM"
@type Function
@author Atilio
@since 26/03/2023
@obs 

    Fun��o Month
    Par�metros
        Data a ser verificada
    Retorno
        N�mero do m�s no formato "MM"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe352()
	Local aArea    := FWGetArea()
    Local dDtHoje  := Date()
    Local cMes

    //Pega o m�s da data de hoje
    cMes := Month2Str(dDtHoje)
    FWAlertInfo("O m�s � " + cMes, "Teste - Month2Str")

    FWRestArea(aArea)
Return
