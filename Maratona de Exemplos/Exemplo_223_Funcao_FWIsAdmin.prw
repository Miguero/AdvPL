/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/08/verificando-se-um-usuario-e-administrador-atraves-da-fwisadmin-maratona-advpl-e-tl-223/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe223
Verifica se um usu�rio tem privil�gio de Administrador (grupo de Administradores)
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814856
@obs 

    Fun��o FWIsAdmin
    Par�metros
        + cID           , Caractere   , C�digo do usu�rio que ser� validado (caso n�o seja informado usar� o c�digo do usu�rio logado)
    Retorno
        + lRet          , L�gico      , .T. se o usu�rio for administrador ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe223()
    Local aArea     := FWGetArea()
    
    //Verifica se o usu�rio � administrador, se sim exibe mensagem
    If FWIsAdmin()
        FWAlertSuccess("O usu�rio � adminstrador, logo poder� fazer opera��es de manipula��o do BD", "Teste FWIsAdmin")
    EndIf

    FWRestArea(aArea)
Return
