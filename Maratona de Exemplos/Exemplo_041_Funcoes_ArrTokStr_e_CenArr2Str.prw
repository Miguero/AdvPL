/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/18/transformar-array-em-string-com-arrtokstr-e-cenarr2str-maratona-advpl-e-tl-041/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe041
Exemplo de fun��o que converte um Array para uma String
@type Function
@author Atilio
@since 29/11/2022
@obs 
    Fun��o ArrTokStr
    Par�metros
        + Array a ser convertido
        + Delimitador de separa��o
        + N�mero de caracteres caso deseja quebra de linha com CRLF
    Retorno
        + Texto da String convertida

    Fun��o CenArr2Str
    Par�metros
        + Array monodimensional a ser convertido
        + Delimitador de separa��o
    Retorno
        + Texto da String convertida

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe041()
    Local aArea    := FWGetArea()
    Local aDados   := {}
    Local aNomes   := {}
    Local cResult1 := ""
    Local cResult2 := ""

    //Adiciona informa��es no Array (multidimensional)
    aAdd(aDados, {"Site", "Terminal de Informa��o"})
    aAdd(aDados, {"URL",  "https://terminaldeinformacao.com"})
    cResult1 := ArrTokStr(aDados, ";")

    //Transforma o Array em uma String JSON
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Jo�o")
    aAdd(aNomes, "Maria")
    aAdd(aNomes, "Jos�")
    cResult2 := CenArr2Str(aNomes, ";")

    //Mostra o resultado
    FWAlertInfo("cResult1 � " + cResult1 + ", cResult2 � " + cResult2, "Resultado de convers�o de Array para TXT")

    FWRestArea(aArea)
Return
