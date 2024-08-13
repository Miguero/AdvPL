/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/30/validando-se-uma-tabela-existe-no-dicionario-com-fwaliasindic-maratona-advpl-e-tl-205/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe205
Fun��o que valida se uma tabela existe no dicion�rio do Protheus
@type Function
@author Atilio
@since 12/02/2023
@see https://tdn.totvs.com/display/public/framework/FWAliasInDic
@obs 
    Fun��o FWAliasInDic
    Par�metros
        + cAlias      , Caractere        , Alias da tabela a ser procurada
        + lHelp       , L�gico           , Define se ir� mostrar uma mensagem de aviso caso n�o encontre a tabela
    Retorno
        + lRet        , L�gico           , .T. se a tabela foi encontrada no dicion�rio ou .F. se n�o foi

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe205()
    Local aArea     := FWGetArea()

    //Verifica se uma tabela existe no dicion�rio    
    If FWAliasInDic("SB1")
        FWAlertInfo("A tabela SB1 foi encontrada, voc� pode fazer queries, locks, etc", "Teste de FWAliasInDic")
    EndIf

    FWRestArea(aArea)
Return
