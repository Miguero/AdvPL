/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/15/operador-para-pegar-resto-de-divisao-maratona-advpl-e-tl-007/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe007
Exemplo de como utilizar o operador % (Percentual) para pegar o resto de uma divis�o
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe007()
    Local aArea   := FWGetArea()
    Local nResto1 := 10 % 3
    Local nResto2 := 9 % 3
    Local nValor  := 41

    //Mostra os resultados
    FWAlertInfo("nResto1: " + cValToChar(nResto1) + ", nResto2: " + cValToChar(nResto2), "Restos de divis�es")

    //Realiza o teste, se o resto da divis�o por 2 for 0
    If nValor % 2 == 0
        FWAlertInfo("O valor � -PAR-", "Resultado")
    Else
        FWAlertInfo("O valor � -�MPAR-", "Resultado")
    EndIf

    FWRestArea(aArea)
Return
