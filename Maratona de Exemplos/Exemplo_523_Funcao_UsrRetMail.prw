/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/07/buscando-os-grupos-de-um-usuario-com-a-usrretgrp-maratona-advpl-e-tl-522/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe523
Retorna o email cadastrado no usu�rio
@type Function
@author Atilio
@since 06/04/2023
@see https://tdn.totvs.com/display/public/framework/UsrRetMail
@obs 

    Fun��o UsrRetMail
    Par�metros
        + cCodUsr    , Caractere        , Informa o c�digo do usu�rio
    Retorno
        + cMail      , Caractere        , Retorna o endere�o de email do usu�rio

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe523()
    Local aArea      := FWGetArea()
    Local cCodUsr    := ""
    Local cNomUsr    := ""
    Local cEmailUsr  := ""
    Local cMensagem  := ""

    //Busca as informa��es do usu�rio
    cCodUsr    := RetCodUsr()
    cNomUsr    := UsrRetName(cCodUsr)
    cEmailUsr  := UsrRetMail(cCodUsr)

    //Monta a mensagem e exibe
    cMensagem := "Usu�rio logado: " + cCodUsr + " (" + cNomUsr + "), tem o seguinte endere�o de email: " + cEmailUsr
    FWAlertInfo(cMensagem, "Teste UsrRetMail")

    FWRestArea(aArea)
Return
