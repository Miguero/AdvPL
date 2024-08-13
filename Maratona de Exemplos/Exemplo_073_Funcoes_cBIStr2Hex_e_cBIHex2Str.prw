/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/20/conversao-entre-string-e-hexa-com-as-funcoes-cbistr2hex-e-cbihex2str-maratona-advpl-e-tl-073/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe073
Exemplo para convers�o entre strings para hexadecimal e vice versa
@type Function
@author Atilio
@since 07/12/2022
@obs 
    Fun��o cBIStr2Hex
    Par�metros
        + String a ser convertida
    Retorno
        + String convertida em hexadecimal

    Fun��o cBIHex2Str
    Par�metros
        + String em hexadecimal a ser convertida (tem que ser passado tudo mai�sculo)
    Retorno
        + String convertida

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe073()
    Local aArea   := FWGetArea()
    Local cString := ""
    Local cHexa   := ""

    //Convertendo e mostrando o resultado (de string para hexa)
    cString := "Daniel"
    cHexa   := cBIStr2Hex(cString)
    FWAlertInfo("A convers�o de '" + cString + "' deu '" + cHexa + "' em hexa", "Exemplo cBIStr2Hex")

    //Convertendo e mostrando o resultado (de hexa para string)
    cHexa   := "4174696C696F"
    cString := cBIHex2Str(cHexa)
    FWAlertInfo("A convers�o de '" + cHexa + "' deu a string '" + cString + "' ", "Exemplo cBIHex2Str")

    FWRestArea(aArea)
Return
