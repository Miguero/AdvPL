/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/24/validando-se-na-string-possui-apenas-numero-e-ponto-com-isnumdot-maratona-advpl-e-tl-312/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe312
Valida se uma string possui apenas n�mero e ponto
@type  Function
@author Atilio
@since 23/02/2023
@obs 

    Fun��o IsNumDot
    Par�metros
        Recebe o n�mero a ser validado (no formato Caractere)
    Retorno
        Retorna .T. se a string tiver apenas n�mero ou "." se n�o retorna .F.

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe312()
	Local aArea      := FWGetArea()
    Local cTexto     := ""
    
    //Teste de somente letras
    cTexto := "3.14"
    If IsNumDot(cTexto)
        FWAlertSuccess("O texto possui apenas n�meros ou pontos", "Teste 1 IsNumDot")
    EndIf

    //Teste de letras com n�meros
    cTexto := "3.a14"
    If IsNumDot(cTexto)
        FWAlertSuccess("O texto possui apenas n�meros ou pontos", "Teste 2 IsNumDot")
    EndIf

    //Teste come�ando com n�meros
    cTexto := "314"
    If IsNumDot(cTexto)
        FWAlertSuccess("O texto possui apenas n�meros ou pontos", "Teste 3 IsNumDot")
    EndIf

    FWRestArea(aArea)
Return
