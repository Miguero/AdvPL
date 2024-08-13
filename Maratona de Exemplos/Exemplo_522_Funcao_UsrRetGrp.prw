/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/07/buscando-o-email-de-um-usuario-atraves-da-usrretmail-maratona-advpl-e-tl-523/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe522
Retorna os grupos de um usu�rio
@type Function
@author Atilio
@since 06/04/2023
@see https://tdn.totvs.com/display/public/framework/UsrRetGrp
@obs 

    Fun��o UsrRetGrp
    Par�metros
        + cUser      , Caractere        , Informa o nome do usu�rio
        + cCodUser   , Caractere        , Informa o c�digo do usu�rio
    Retorno
        + aGrupos    , Array            , Retorna um array com os grupos que o usu�rio tem acesso

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe522()
    Local aArea      := FWGetArea()
    Local cCodUsr    := ""
    Local cNomUsr    := ""
    Local aGrupos    := {}
    Local cMensagem  := ""
    Local nGrpAtu    := 0

    //Busca as informa��es do usu�rio
    cCodUsr    := RetCodUsr()
    cNomUsr    := UsrRetName(cCodUsr)
    aGrupos    := UsrRetGrp(cNomUsr, cCodUsr)

    //Percorre os grupos e vai montando a mensagem
    cMensagem := "Usu�rio logado: " + cCodUsr + " (" + cNomUsr + "), tem acesso ao(s) seguinte(s) grupo(s): " + CRLF
    For nGrpAtu := 1 To Len(aGrupos)
        cMensagem += "+ " + aGrupos[nGrpAtu] + CRLF
    Next

    //Exibe uma mensagem com as informa��es
    FWAlertInfo(cMensagem, "Teste UsrRetGrp")

    FWRestArea(aArea)
Return
