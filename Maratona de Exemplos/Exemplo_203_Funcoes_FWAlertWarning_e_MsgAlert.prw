/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/29/mostrando-mensagens-com-icone-verde-atraves-da-fwalertsuccess-maratona-advpl-e-tl-202/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe203
Fun��o que exibe uma mensagem em tela com um s�mbolo de cuidado / aten��o
@type Function
@author Atilio
@since 12/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24346992
@obs 
    Fun��o MsgAlert
    Par�metros
        + cTexto      , Caractere        , Texto da mensagem
        + cTitulo     , Caractere        , T�tulo da janela da mensagem
    Retorno
        Fun��o n�o tem retorno

    Fun��o FWAlertWarning
    Par�metros
        + Texto da mensagem
        + T�tulo da janela da mensagem
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe203()
    Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Monta uma mensagem normal e exibe
    cMensagem := "Hoje � " + dToC(Date())
    FWAlertWarning(cMensagem, "Teste FWAlertWarning")
    MsgAlert(cMensagem, "Teste MsgAlert")

    //Monta uma mensagem com quebra de linhas
    cMensagem := "Hoje � " + dToC(Date()) + CRLF + "Terminal de Informa��o"
    FWAlertWarning(cMensagem, "Teste 2 FWAlertWarning")
    MsgAlert(cMensagem, "Teste 2 MsgAlert")

    //Monta uma mensagem com tags html
    cMensagem := "Hoje � <strong>" + dToC(Date()) +"</strong><br><font color='red'>Terminal de Informa��o</font>"
    FWAlertWarning(cMensagem, "Teste 3 FWAlertWarning")
    MsgAlert(cMensagem, "Teste 3 MsgAlert")

    FWRestArea(aArea)
Return
