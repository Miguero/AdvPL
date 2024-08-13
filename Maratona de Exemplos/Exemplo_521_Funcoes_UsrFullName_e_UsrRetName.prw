/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/06/encerrando-uma-rotina-atraves-da-userexception-maratona-advpl-e-tl-520/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe521
Retorna o nome de um usu�rio (login) ou o nome completo
@type Function
@author Atilio
@since 06/04/2023
@see https://tdn.totvs.com/display/public/framework/UsrRetName e https://tdn.totvs.com/display/public/framework/UsrFullName
@obs 

    Fun��o UsrFullName
    Par�metros
        + cCodUsr    , Caractere        , Informa o c�digo do usu�rio
    Retorno
        + cFullName  , Caractere        , Retorna o nome completo do usu�rio

    Fun��o UsrRetName
    Par�metros
        + cCodUsr    , Caractere        , Informa o c�digo do usu�rio
    Retorno
        + cName      , Caractere        , Retorna o nome do usu�rio (login)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe521()
    Local aArea      := FWGetArea()
    Local cCodUsr    := ""
    Local cNomUsr    := ""
    Local cNomComUsr := ""

    //Busca as informa��es do usu�rio
    cCodUsr    := RetCodUsr()
    cNomUsr    := Alltrim( UsrRetName(cCodUsr)  )
    cNomComUsr := Alltrim( UsrFullName(cCodUsr) )

    //Exibe uma mensagem com as informa��es
    FWAlertInfo("Usu�rio logado: " + cCodUsr + ", nome: " + cNomUsr + ", nome completo: " + cNomComusr, "Teste UsrRetName e UsrFullName")

    FWRestArea(aArea)
Return
