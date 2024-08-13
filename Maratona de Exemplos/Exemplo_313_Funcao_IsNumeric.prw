/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/24/validando-se-uma-string-possui-apenas-numeros-com-isnumeric-maratona-advpl-e-tl-313/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe313
Valida se uma string possui apenas n�meros
@type  Function
@author Atilio
@since 23/02/2023
@obs 

    Fun��o IsNumeric
    Par�metros
        Recebe o n�mero a ser validado (no formato Caractere)
    Retorno
        Retorna .T. se a string tiver apenas n�meros se n�o retorna .F.

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe313()
	Local aArea      := FWGetArea()
    Local cTexto     := ""
    
    //Teste de somente letras
    cTexto := "3.14"
    If IsNumeric(cTexto)
        FWAlertSuccess("O texto possui apenas n�meros", "Teste 1 IsNumeric")
    EndIf

    //Teste de letras com n�meros
    cTexto := "3.a14"
    If IsNumeric(cTexto)
        FWAlertSuccess("O texto possui apenas n�meros", "Teste 2 IsNumeric")
    EndIf

    //Teste come�ando com n�meros
    cTexto := "314"
    If IsNumeric(cTexto)
        FWAlertSuccess("O texto possui apenas n�meros", "Teste 3 IsNumeric")
    EndIf

    FWRestArea(aArea)
Return
