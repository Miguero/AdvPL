/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/21/operador-de-divisao-maratona-advpl-e-tl-013/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe013
Exemplo de como utilizar os operadores de divis�o e divis�o com atribui��o / e /=
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe013()
    Local aArea   := FWGetArea()
    Local nResult := 0

    //Faz a divis�o de um pelo outro
    nResult := 100 / 2
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Divis�o")

    //Faz a divis�o direto pela atribui��o
    nResult /= 5
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Divis�o")

    FWRestArea(aArea)
Return
