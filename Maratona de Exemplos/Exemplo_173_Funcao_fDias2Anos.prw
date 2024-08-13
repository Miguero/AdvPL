/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/14/calculando-numero-de-anos-e-meses-com-a-funcao-fdias2anos-maratona-advpl-e-tl-173/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe173
Calcula um n�mero de anos, meses e dias conforme a quantidade de dias passadas em um par�metro
@type Function
@author Atilio
@since 20/12/2022
@obs 
    Fun��o fDias2Anos
    Par�metros
        + Tempo total em dias
        + N�mero de anos que ser� calculado
        + N�mero de meses que ser� calculado
        + N�mero de dias que ser� calculado
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe173()
    Local aArea      := FWGetArea()
    Local nDiasTot   := 1054
    Local nAnos      := 0
    Local nMeses     := 0
    Local nDias      := 0
    Local cMensagem  := ""

    //Calcula o total de anos, meses e dias
    fDias2Anos(nDiasTot, @nAnos, @nMeses, @nDias)

    //Monta uma mensagem de teste e exibe
    cMensagem := "Em um total de " + cValToChar(nDiasTot) + " dia(s), o resultado �: " + CRLF + CRLF
    cMensagem += cValToChar(nAnos) + " anos, " + cValToChar(nMeses) + " meses e " + cValToChar(nDias) + " dias"
    FWAlertInfo(cMensagem, "Teste com fDias2Anos")

    FWRestArea(aArea)
Return
