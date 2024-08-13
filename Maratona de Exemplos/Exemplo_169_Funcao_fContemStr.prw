/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/12/validando-se-uma-string-esta-contida-na-outra-com-fcontemstr-maratona-advpl-e-tl-169/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe169
Verifica se uma string esta contida em outra
@type Function
@author Atilio
@since 19/12/2022
@obs 
    Fun��o fContemStr
    Par�metros
        + Primeira string
        + Segunda string
        + Define se o teste � das duas strings serem iguais (.T.) ou uma estiver contida na outra (.F.)
    Retorno
        + Retorna .T. se uma string estiver contida na outra / ou for igual sen�o retorna .F.

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe169()
    Local aArea     := FWGetArea()
    Local cTexto1   := "daniel"
    Local cTexto2   := "DAN"

    //Se uma string estiver contida na outra
    If fContemStr(cTexto1, cTexto2)
        FWAlertSuccess("A string '" + cTexto1 + "' esta contida ou cont�m a string '" + cTexto2 + "'", "Teste com fContemStr")
    Else
        FWAlertError("Falha na valida��o, uma string n�o esta contida na outra", "Teste com fContemStr")
    EndIf

    FWRestArea(aArea)
Return
