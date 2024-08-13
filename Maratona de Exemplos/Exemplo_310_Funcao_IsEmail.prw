/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/23/validando-se-um-registro-esta-travado-com-islocked-maratona-advpl-e-tl-311/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe310
Valida se um endere�o de email � v�lido
@type  Function
@author Atilio
@since 23/02/2023
@obs 

    Fun��o IsEmail
    Par�metros
        Recebe o endere�o de email
    Retorno
        Retorna .T. se conseguiu validar o endere�o de eMail ou .F. se possui algum caractere inv�lido ou inconsist�ncia

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe310()
	Local aArea      := FWGetArea()
    Local cMensagem  := ""
    
    //Valida um email comum
    cEmail := "contato@atiliosistemas.com"
    If IsEmail(cEmail)
        cMensagem := "O e-Mail '" + cEmail + "' � v�lido!"
    Else
        cMensagem := "N�o foi poss�vel validar o e-Mail '" + cEmail + "'!"
    EndIf
    FWAlertInfo(cMensagem, "Teste 1 IsEmail")


    //Valida um email com erros (espa�o e dois arrobas)
    cEmail := "con t@ato@atiliosistemas.com"
    If IsEmail(cEmail)
        cMensagem := "O e-Mail '" + cEmail + "' � v�lido!"
    Else
        cMensagem := "N�o foi poss�vel validar o e-Mail '" + cEmail + "'!"
    EndIf
    FWAlertInfo(cMensagem, "Teste 2 IsEmail")

    FWRestArea(aArea)
Return
