/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/22/validando-se-o-sistema-esta-rodando-sem-interface-com-isblind-maratona-advpl-e-tl-308/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe308
Valida se a fun��o esta rodando sem interface gr�fica para o usu�rio (ideal para jobs ou webservices)
@type  Function
@author Atilio
@since 23/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814878
@obs 

    Fun��o IsBlind
    Par�metros
        N�o tem par�metros
    Retorno
        + lIsBlind   , L�gico      , .T. se tiver rodando sem interface gr�fica (n�o passou pelo SIGAADV / SIGAMDI / etc) ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe308()
	Local aArea      := FWGetArea()
    Local cMensagem  := ""
    
    //Verifica o tipo de conex�o com o Protheus
    If IsBlind()
        cMensagem := "Estamos executando sem interface do Protheus"
    Else
        cMensagem := "Estamos executando normalmente"
    EndIf

    //Exibe o resultado, esse � apenas um Teste, se rodar mesmo o IsBlind evite ficar mostrando alerts e mensagens
    FWAlertInfo(cMensagem, "Teste IsBlind")

    FWRestArea(aArea)
Return
