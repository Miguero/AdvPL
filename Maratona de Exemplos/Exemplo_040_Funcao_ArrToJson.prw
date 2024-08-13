/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/17/funcao-arrtojson-para-transformar-um-array-numa-string-json-maratona-advpl-e-tl-040/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe040
Exemplo de fun��o que converte um Array para uma String em JSON
@type Function
@author Atilio
@since 28/11/2022
@obs 
    Fun��o ArrToJson
    Par�metros
        + Array que ser� convertido para uma String em JSON
    Retorno
        + Texto da String em JSON

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe040()
    Local aArea    := FWGetArea()
    Local aDados   := {}
    Local cResult  := ""

    //Adiciona informa��es no Array
    aAdd(aDados, {"Site", "Terminal de Informa��o"})
    aAdd(aDados, {"URL",  "https://terminaldeinformacao.com"})

    //Transforma o Array em uma String JSON
    cResult := ArrToJson(aDados)

    //Mostra o resultado
    FWAlertInfo("cResult � " + cResult, "Resultado do ArrToJson")

    FWRestArea(aArea)
Return
