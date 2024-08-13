/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/09/validando-acessos-de-um-usuario-atraves-da-versenha-maratona-advpl-e-tl-527/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe527
Verificando se usu�rio tem determinado acesso
@type Function
@author Atilio
@since 06/04/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815010
@obs 

    Fun��o VerSenha
    Par�metros
        + nOpc      , Num�rico     , N�mero do acesso a ser verificado
    Retorno
        + lAcess    , L�gico       , Retorna .T. caso o usu�rio tenha acesso ou .F. se n�o

    Para ver a lista de acessos, veja no link: https://tdn.totvs.com/pages/releaseview.action?pageId=221546134

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe527()
    Local aArea      := FWGetArea()
    Local nAcesso    := 138

    If VerSenha(nAcesso)
        FWAlertSuccess("O usu�rio pode usar o acesso 138 (Localizar Rotinas / Ctrl+R)", "Teste VerSenha")
    Else
        FWAlertError("Usu�rio n�o pode usar o acesso 138!", "Teste VerSenha")
    EndIf

    FWRestArea(aArea)
Return
