/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/19/conversao-entre-decimal-e-hexa-com-as-funcoes-cbiint2hex-e-nbihex2int-maratona-advpl-e-tl-072/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe072
Exemplo para convers�o entre n�meros inteiros para hexadecimal e vice versa
@type Function
@author Atilio
@since 07/12/2022
@obs 
    Fun��o cBIInt2Hex
    Par�metros
        + Valor a ser convertido
        + N�mero de casas a esquerda caso seja preenchido com 0
    Retorno
        + Retorna a String com valor Hexadecimal

    Fun��o nBIHex2Int
    Par�metros
        + String em hexadecimal a ser convertida
    Retorno
        + Valor convertido

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe072()
    Local aArea   := FWGetArea()
    Local nValor  := 0
    Local cHexa   := ""

    //Convertendo e mostrando o resultado (de decimal para hexa)
    nValor := 100
    cHexa  := cBIInt2Hex(nValor)
    FWAlertInfo("A convers�o de '" + cValToChar(nValor) + "' deu '" + cHexa + "' em hexa", "Exemplo cBIInt2Hex")

    //Convertendo e mostrando o resultado (de hexa para decimal)
    cHexa  := "FFF"
    nValor := nBIHex2Int(cHexa)
    FWAlertInfo("A convers�o de '" + cHexa + "' deu '" + cValToChar(nValor) + "' em decimal", "Exemplo nBIHex2Int")

    FWRestArea(aArea)
Return
