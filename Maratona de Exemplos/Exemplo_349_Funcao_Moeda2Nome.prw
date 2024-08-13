/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/11/buscando-o-nome-do-mes-com-a-mesextenso-maratona-advpl-e-tl-348/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe349
Retorna o nome da moeda cadastra conforme os par�metros MV_MOEDA1 ao MV_MOEDA5
@type Function
@author Atilio
@since 25/03/2023
@obs 

    Fun��o Moeda2Nome
    Par�metros
        Recebe o n�mero da moeda de 1 a 5
    Retorno
        Retorna o nome da moeda usada no sistema

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe349()
	Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Monta a mensagem a ser exibida com as 5 moedas
    cMensagem := "Moeda 1: " + Moeda2Nome(1) + CRLF
    cMensagem += "Moeda 2: " + Moeda2Nome(2) + CRLF
    cMensagem += "Moeda 3: " + Moeda2Nome(3) + CRLF
    cMensagem += "Moeda 4: " + Moeda2Nome(4) + CRLF
    cMensagem += "Moeda 5: " + Moeda2Nome(5)
    FWAlertInfo(cMensagem, "Teste Moeda2Nome")

    FWRestArea(aArea)
Return
