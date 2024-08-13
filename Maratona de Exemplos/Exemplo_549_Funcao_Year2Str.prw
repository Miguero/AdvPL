/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/20/pegando-o-numero-do-ano-com-year-maratona-advpl-e-tl-548/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe549
Pega uma express�o e retorna o ano dela (se for data) ou converte para caractere (se for num�rica) ou adiciona zeros a esquerda (se for caractere)
@type Function
@author Atilio
@since 07/04/2023
@obs 

    Fun��o Year2Str
    Par�metros
        Recebe a express�o no formato Data ou Num�rico ou Caractere
    Retorno
        Retorna o ano no formato caractere com 4 digitos "YYYY"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe549()
	Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Monta a mensagem que ser� exibida
    cMensagem := "Via Data: "      + Year2Str(Date()) + CRLF
    cMensagem += "Via N�mero: "    + Year2Str(1993)   + CRLF
    cMensagem += "Via Caractere: " + Year2Str("123")  + CRLF
    FWAlertInfo(cMensagem, "Teste Year2Str")

    FWRestArea(aArea)
Return
