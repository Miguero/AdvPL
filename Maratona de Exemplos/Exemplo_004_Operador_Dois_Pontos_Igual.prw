/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/12/operador-para-atribuicao-de-variaveis-maratona-advpl-e-tl-005/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe004
Exemplo de como utilizar o operador := (Dois Pontos e Igual), para atribuir um valor a uma vari�vel
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/pages/viewpage.action?pageId=6063089
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe004()
    Local aArea   := FWGetArea()
    Local nValor
    Local nValor2 AS Numeric

    //Atribui os valores das duas vari�veis
    nValor  := 5
    nValor2 := 10
    FWAlertInfo("Ap�s as primeiras astribui��es", "Aten��o")

    //Atribui os valores das duas vari�veis
    nValor  := "aaa"
    //nValor2 := "bbb"
    FWAlertInfo("Ap�s as segundas astribui��es", "Aten��o")

    FWRestArea(aArea)
Return
