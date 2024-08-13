/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/05/convertendo-variaveis-com-string_to_qqtipo-e-qqtipo_to_string-maratona-advpl-e-tl-459/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe459
Realiza a convers�o de valores com strings
@type Function
@author Atilio
@since 31/03/2023
@obs 
    Fun��o QQTipo_To_String
    Par�metros
        Valor a ser convertido
        Tipo da convers�o
    Retorno
        Retorna a string convertida

    Fun��o String_To_QQTipo
    Par�metros
        String a ser convertido
        Tipo da convers�o
    Retorno
        Retorna o valor

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe459()
    Local aArea     := FWGetArea()
    Local dData     := Date()
    Local nValor    := 13.8
    Local lLogico   := .T.
    Local cMensagem := ""

    //Monta a mensagem de teste
    cMensagem += "Data: "     + QQTipo_To_String(dData,   "D")    + CRLF
    cMensagem += "Num�rico: " + QQTipo_To_String(nValor,  "N")   + CRLF
    cMensagem += "L�gico: "   + QQTipo_To_String(lLogico, "L")
    FWAlertInfo(cMensagem, "Teste de QQTipo_To_String")

    //Pega informa��es de String e converte
    nValor  := String_To_QQTipo("15.34",      "N")
    dData   := String_To_QQTipo("10/03/2023", "D")
    lLogico := String_To_QQTipo(".F.",        "L")
    cMensagem := "nValor: " + cValToChar(nValor) + " . dData: " + cValToChar(dData) + " . lLogico: " + cValToChar(lLogico)
    FWAlertInfo(cMensagem, "Teste de String_To_QQTipo")

    FWRestArea(aArea)
Return
