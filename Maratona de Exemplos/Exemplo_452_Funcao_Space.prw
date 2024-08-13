/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/02/replica-espacos-com-a-funcao-space-maratona-advpl-e-tl-452/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe452
Retorna uma string com a quantidade de espa�os replicada
@type Function
@author Atilio
@since 31/03/2023
@see https://tdn.totvs.com/display/tec/Space
@obs 

    Fun��o Space
    Par�metros
        + nCount    , Num�rico      , Tamanho de espa�o que ser� replicado
    Retorno
        + cRet      , Caractere     , Retorna a string com espa�os

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe452()
    Local aArea     := FWGetArea()
    Local nTamanho  := 0
    Local cString   := ""

    //Deixa com 10 espa�os
    nTamanho := 10
    cString  := Space(nTamanho)
    FWAlertInfo("O Resultado �: '" + cString + "'", "Teste 1 Space")

    //Deixa com o tamanho de um campo
    nTamanho := TamSX3("B1_DESC")[1]
    cString  := Space(nTamanho)
    FWAlertInfo("O Resultado �: '" + cString + "'", "Teste 2 Space")

    FWRestArea(aArea)
Return
