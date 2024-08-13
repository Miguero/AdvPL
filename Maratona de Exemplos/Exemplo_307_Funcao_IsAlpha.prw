/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/21/validando-se-uma-variavel-possui-letras-com-isalpha-maratona-advpl-e-tl-307/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe307
Valida se dentro de uma string ela possui letras (.T.) ou se come�a com n�meros (.F.)
@type  Function
@author Atilio
@since 23/02/2023
@see https://tdn.totvs.com/display/tec/IsAlpha
@obs 

    Fun��o IsAlpha
    Par�metros
        + cString   , Caractere   , Texto a ser validado
    Retorno
        + lRet      , L�gico      , .T. se tiver letras do alfabeto ou .F. se come�ar com n�meros

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe307()
	Local aArea      := FWGetArea()
    Local cTexto     := ""
    
    //Teste de somente letras
    cTexto := "Daniel"
    If IsAlpha(cTexto)
        FWAlertSuccess("O texto possui letras", "Teste 1 IsAlpha")
    EndIf

    //Teste de letras com n�meros
    cTexto := "Daniel 123 Atilio"
    If IsAlpha(cTexto)
        FWAlertSuccess("O texto possui letras", "Teste 2 IsAlpha")
    EndIf

    //Teste come�ando com n�meros
    cTexto := "3.14"
    If IsAlpha(cTexto)
        FWAlertSuccess("O texto possui letras", "Teste 3 IsAlpha")
    EndIf

    FWRestArea(aArea)
Return
