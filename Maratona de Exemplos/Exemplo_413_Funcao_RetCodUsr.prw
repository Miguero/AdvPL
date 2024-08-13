/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/13/salvando-uma-imagem-do-rpo-em-uma-pasta-com-a-resource2file-maratona-advpl-e-tl-412/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe413
Retorna o c�digo do usu�rio logado no sistema
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/public/framework/RetCodUsr
@obs 

    Fun��o RetCodUsr
    Par�metros
        Fun��o n�o tem Par�metros
    Retorno
        + cCodUsr    , Caractere        , Retorna o c�digo do usu�rio logado no sistema

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe413()
    Local aArea     := FWGetArea()
    Local cCodUsr   := ""
    Local cNomUsr   := ""

    //Busca as informa��es do usu�rio
    cCodUsr := RetCodUsr()
    cNomUsr := UsrRetName(cCodUsr)

    //Exibe uma mensagem com as informa��es
    FWAlertInfo("Usu�rio logado: " + cCodUsr + " (" + cNomUsr + ")", "Teste RetCodUsr")

    FWRestArea(aArea)
Return
