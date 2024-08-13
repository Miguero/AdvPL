/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/28/mostrando-mensagens-com-icone-azul-atraves-das-fwalertinfo-e-msginfo-maratona-advpl-e-tl-201/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe200
Fun��o que exibe uma mensagem em tela com um s�mbolo de erro
@type Function
@author Atilio
@since 11/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889111 e https://tdn.totvs.com/pages/releaseview.action?pageId=24346998
@obs 
    Fun��o Alert
    Par�metros
        + cTexto      , Caractere        , Texto da mensagem
    Retorno
        Fun��o n�o tem retorno

    Fun��o MsgStop
    Par�metros
        + cTexto      , Caractere        , Texto da mensagem
        + cTitulo     , Caractere        , T�tulo da janela da mensagem
    Retorno
        Fun��o n�o tem retorno

    Fun��o FWAlertError
    Par�metros
        + Texto da mensagem
        + T�tulo da janela da mensagem
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe200()
    Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Monta uma mensagem normal e exibe
    cMensagem := "Hoje � " + dToC(Date())
    FWAlertError(cMensagem, "Teste FWAlertError")
    MsgStop(cMensagem, "Teste MsgStop")
    Alert(cMensagem)

    //Monta uma mensagem com quebra de linhas
    cMensagem := "Hoje � " + dToC(Date()) + CRLF + "Terminal de Informa��o"
    FWAlertError(cMensagem, "Teste 2 FWAlertError")
    MsgStop(cMensagem, "Teste 2 MsgStop")
    Alert(cMensagem)

    //Monta uma mensagem com tags html
    cMensagem := "Hoje � <strong>" + dToC(Date()) +"</strong><br><font color='red'>Terminal de Informa��o</font>"
    FWAlertError(cMensagem, "Teste 3 FWAlertError")
    MsgStop(cMensagem, "Teste 3 MsgStop")
    Alert(cMensagem)

    FWRestArea(aArea)
Return
