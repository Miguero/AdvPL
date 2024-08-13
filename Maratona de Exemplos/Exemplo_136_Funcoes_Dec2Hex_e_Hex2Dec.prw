/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/22/convertendo-valores-dentre-decimal-e-hexa-com-dec2hex-e-hex2dec-maratona-advpl-e-tl-136/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe136
Exemplo para convers�o entre n�meros inteiros para hexadecimal e vice versa
@type Function
@author Atilio
@since 15/12/2022
@obs 
    Fun��o Dec2Hex
    Par�metros
        + Valor a ser convertido
    Retorno
        + Retorna a String com valor Hexadecimal

    Fun��o Hex2Dec
    Par�metros
        + String em hexadecimal a ser convertida
    Retorno
        + Valor convertido

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe136()
    Local aArea   := FWGetArea()
    Local nValor  := 0
    Local cHexa   := ""

    //Convertendo e mostrando o resultado (de decimal para hexa)
    nValor := 100
    cHexa  := Dec2Hex(nValor)
    FWAlertInfo("A convers�o de '" + cValToChar(nValor) + "' deu '" + cHexa + "' em hexa", "Exemplo Dec2Hex")

    //Convertendo e mostrando o resultado (de hexa para decimal)
    cHexa  := "FFF"
    nValor := Hex2Dec(cHexa)
    FWAlertInfo("A convers�o de '" + cHexa + "' deu '" + cValToChar(nValor) + "' em decimal", "Exemplo Hex2Dec")

    FWRestArea(aArea)
Return
