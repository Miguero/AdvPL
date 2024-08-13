/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/30/mostrando-perguntas-com-fwalertyesno-fwalertnoyes-msgyesno-e-msgnoyes-maratona-advpl-e-tl-204/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe204
Fun��o que exibe uma mensagem em tela com uma pergunta com as op��es "sim" e "n�o"
@type Function
@author Atilio
@since 12/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24347000 e https://tdn.totvs.com/display/tec/MsgNoYes
@obs 
    Fun��o MsgYesNo
    Par�metros
        + cTexto      , Caractere        , Texto da mensagem
        + cTitulo     , Caractere        , T�tulo da janela da mensagem
    Retorno
        + lRet        , L�gico           , .T. se foi clicado em 'Sim' e .F. se n�o foi

    Fun��o FWAlertYesNo
    Par�metros
        + Texto da mensagem
        + T�tulo da janela da mensagem
    Retorno
        + .T. se foi clicado em 'Sim' e .F. se n�o foi

    Fun��o MsgNoYes
    Par�metros
        + cTexto      , Caractere        , Texto da mensagem
        + cTitulo     , Caractere        , T�tulo da janela da mensagem
    Retorno
        + lRet        , L�gico           , .T. se foi clicado em 'Sim' e .F. se n�o foi

    Fun��o FWAlertNoYes
    Par�metros
        + Texto da mensagem
        + T�tulo da janela da mensagem
    Retorno
        + .T. se foi clicado em 'Sim' e .F. se n�o foi

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe204()
    Local aArea     := FWGetArea()
    Local cMensagem := ""

    //Monta uma mensagem e pergunta para o usu�rio
    cMensagem := "Voc� realmente deseja prosseguir com a <strong>exclus�o das informa��es</strong> da tabela?"
    If FWAlertYesNo(cMensagem, "Continuar (FWAlertYesNo)?")
        Alert("Teste 1 - Usu�rio clicou no -Sim-")
    Else
        Alert("Teste 1 - Usu�rio n�o clicou no -Sim-")
    EndIf



    If MsgYesNo(cMensagem, "Continuar (MsgYesNo)?")
        Alert("Teste 2 - Usu�rio clicou no -Sim-")
    Else
        Alert("Teste 2 - Usu�rio n�o clicou no -Sim-")
    EndIf



    If FWAlertNoYes(cMensagem, "Continuar (FWAlertNoYes)?")
        Alert("Teste 3 - Usu�rio clicou no -Sim-")
    Else
        Alert("Teste 3 - Usu�rio n�o clicou no -Sim-")
    EndIf



    If MsgNoYes(cMensagem, "Continuar (MsgNoYes)?")
        Alert("Teste 4 - Usu�rio clicou no -Sim-")
    Else
        Alert("Teste 4 - Usu�rio n�o clicou no -Sim-")
    EndIf



    FWRestArea(aArea)
Return
