/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/28/mostrando-mensagens-com-icone-vermelho-fwalerterror-alert-e-msgstop-maratona-advpl-e-tl-200/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe201
Fun��o que exibe uma mensagem em tela com um s�mbolo de informa��o
@type Function
@author Atilio
@since 12/02/2023
@see https://tdn.totvs.com/display/tec/MsgInfo
@obs 
    Fun��o MsgInfo
    Par�metros
        + cTexto      , Caractere        , Texto da mensagem
        + cTitulo     , Caractere        , T�tulo da janela da mensagem
    Retorno
        Fun��o n�o tem retorno

    Fun��o FWAlertInfo
    Par�metros
        + Texto da mensagem
        + T�tulo da janela da mensagem
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe201()
    Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Monta uma mensagem normal e exibe
    cMensagem := "Hoje � " + dToC(Date())
    FWAlertInfo(cMensagem, "Teste FWAlertInfo")
    MsgInfo(cMensagem, "Teste MsgInfo")

    //Monta uma mensagem com quebra de linhas
    cMensagem := "Hoje � " + dToC(Date()) + CRLF + "Terminal de Informa��o"
    FWAlertInfo(cMensagem, "Teste 2 FWAlertInfo")
    MsgInfo(cMensagem, "Teste 2 MsgInfo")

    //Monta uma mensagem com tags html
    cMensagem := "Hoje � <strong>" + dToC(Date()) +"</strong><br><font color='red'>Terminal de Informa��o</font>"
    FWAlertInfo(cMensagem, "Teste 3 FWAlertInfo")
    MsgInfo(cMensagem, "Teste 3 MsgInfo")

    FWRestArea(aArea)
Return
