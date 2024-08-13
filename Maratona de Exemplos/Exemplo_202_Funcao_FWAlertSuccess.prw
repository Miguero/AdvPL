/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/29/mostrando-mensagens-com-icone-amarelo-usando-fwalertwarning-e-msgalert-maratona-advpl-e-tl-203/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe202
Fun��o que exibe uma mensagem em tela com um s�mbolo de �xito
@type Function
@author Atilio
@since 12/02/2023
@obs 

    Fun��o FWAlertSuccess
    Par�metros
        + Texto da mensagem
        + T�tulo da janela da mensagem
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe202()
    Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Monta uma mensagem normal e exibe
    cMensagem := "Hoje � " + dToC(Date())
    FWAlertSuccess(cMensagem, "Teste FWAlertSuccess")

    //Monta uma mensagem com quebra de linhas
    cMensagem := "Hoje � " + dToC(Date()) + CRLF + "Terminal de Informa��o"
    FWAlertSuccess(cMensagem, "Teste 2 FWAlertSuccess")

    //Monta uma mensagem com tags html
    cMensagem := "Hoje � <strong>" + dToC(Date()) +"</strong><br><font color='red'>Terminal de Informa��o</font>"
    FWAlertSuccess(cMensagem, "Teste 3 FWAlertSuccess")

    FWRestArea(aArea)
Return
