/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/17/operador-para-multiplicacoes-maratona-advpl-e-tl-009/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe009
Exemplo de como utilizar os operadores de multiplica��o e multiplica��o com atribui��o * e *=
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe009()
    Local aArea   := FWGetArea()
    Local nVar1   := 2
    Local nVar2   := 5
    Local nResult := 0

    //Faz a multiplica��o de um pelo outro
    nResult := nVar1 * nVar2
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Multiplica��o")

    //Faz a multiplica��o direto pela atribui��o
    nResult *= 3
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Multiplica��o")

    FWRestArea(aArea)
Return
