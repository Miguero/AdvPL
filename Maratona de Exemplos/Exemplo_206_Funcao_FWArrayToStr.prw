/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/31/convertendo-um-array-para-string-com-fwarraytostr-maratona-advpl-e-tl-206/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe206
Exemplo de fun��o que converte um Array para uma String mostrando o tamanho da cada posi��o
@type Function
@author Atilio
@since 12/02/2023
@obs 
    Fun��o FWArrayToStr
    Par�metros
        + Array que ser� convertido para uma String
    Retorno
        + Texto com as posi��es do Array

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe206()
    Local aArea    := FWGetArea()
    Local aDados   := {}
    Local cResult  := ""

    //Adiciona informa��es no Array
    aAdd(aDados, {"Site", "Terminal de Informa��o"})
    aAdd(aDados, {"URL",  "https://terminaldeinformacao.com"})

    //Transforma o Array em uma String
    cResult := FWArrayToStr(aDados)

    //Mostra o resultado
    FWAlertInfo("O Resultado � " + CRLF + cResult, "Resultado do FWArrayToStr")

    FWRestArea(aArea)
Return
