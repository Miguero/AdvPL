/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/19/operador-para-soma-ou-incremento-concatenacao-maratona-advpl-e-tl-011/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe011
Exemplo de como utilizar os operadores de soma e incremento + (eles tamb�m funcionam com atribui��o +=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe011()
    Local aArea   := FWGetArea()
    Local nVar1   := 12
    Local nVar2   := 15
    Local nResult := 0
    Local cVar1   := "Daniel"
    Local cVar2   := "Atilio"
    Local cResult := ""

    //Faz a soma de uma vari�vel com outra
    nResult := nVar1 + nVar2
    nResult += 5
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Soma")

    //Faz a multiplica��o direto pela atribui��o (5 * 5)
    cResult := cVar1 + " " + cVar2
    cResult += " aaaa"
    FWAlertInfo("O resultado � " + cResult, "Resultado do Incremento")

    FWRestArea(aArea)
Return
