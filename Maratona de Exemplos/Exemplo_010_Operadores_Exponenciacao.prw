/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/18/operador-ou-para-realizar-exponenciacao-maratona-advpl-e-tl-010/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe010
Exemplo de como utilizar os operadores de exponencia��o ** e ^ (eles tamb�m funcionam com atribui��o **= e ^=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe010()
    Local aArea   := FWGetArea()
    Local nVar1   := 2
    Local nVar2   := 5
    Local nResult := 0

    //Faz a exponencia��o de um pelo outro (2 * 2 * 2 * 2 * 2)
    nResult := nVar1 ** nVar2
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Exponencia��o / Potencia��o")

    //Faz a multiplica��o direto pela atribui��o (5 * 5)
    nResult := nVar2 ^ nVar1
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Exponencia��o / Potencia��o")

    FWRestArea(aArea)
Return
