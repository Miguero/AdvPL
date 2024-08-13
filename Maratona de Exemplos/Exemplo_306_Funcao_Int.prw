/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/21/buscando-a-parte-inteira-de-um-numero-com-int-maratona-advpl-e-tl-306/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe306
Retorna um valor num�rico inteiro
@type  Function
@author Atilio
@since 23/02/2023
@see https://tdn.totvs.com/display/tec/Int
@obs 

    Fun��o Int
    Par�metros
        + nValue    , Num�rico    , Valor que ser� analisado
    Retorno
        + nRet      , Num�rico    , Parte inteira do valor analisado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe306()
	Local aArea      := FWGetArea()
    Local nValorOrig := 3.14
    Local nValorInt  := 0

    //Pega a parte inteira do valor original
    nValorInt := Int(nValorOrig)

    //Exibe uma mensagem de aviso
    FWAlertInfo("A parte inteira do valor '" + cValToChar(nValorOrig) + "' � de '" + cValToChar(nValorInt) + "'", "Teste Int")

    FWRestArea(aArea)
Return
