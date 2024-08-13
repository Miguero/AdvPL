/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/21/tratando-caracteres-de-uma-ulr-com-cbiurlencode-e-cbiurldecode-maratona-advpl-e-tl-074/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe074
Exemplo para transforma��o de URL tratando caracteres especiais
@type Function
@author Atilio
@since 07/12/2022
@obs 
    Fun��o cBIURLEncode
    Par�metros
        + URL a ser convertida
    Retorno
        + URL convertida

    Fun��o cBIURLDecode
    Par�metros
        + URL com caracteres j� formatados
    Retorno
        + URL convertida

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe074()
    Local aArea     := FWGetArea()
    Local cOriginal := ""
    Local cConverti := ""

    //Convertendo uma URL que possua espa�os
    cOriginal := "terminal de informacao"
    cConverti := cBIURLEncode(cOriginal)
    cOriginal := "https://www.google.com/search?q=" + cOriginal
    cConverti := "https://www.google.com/search?q=" + cConverti
    FWAlertInfo("A convers�o de '" + cOriginal + "' deu '" + cConverti + "' ", "Exemplo cBIURLEncode")

    //Convertendo e mostrando o resultado (de hexa para string)
    cOriginal := "terminal%20de%20informacao"
    cConverti := cBIURLDecode(cOriginal)
    cOriginal := "https://www.google.com/search?q=" + cOriginal
    cConverti := "https://www.google.com/search?q=" + cConverti
    FWAlertInfo("A convers�o de '" + cOriginal + "' deu '" + cConverti + "' ", "Exemplo cBIURLDecode")

    FWRestArea(aArea)
Return
