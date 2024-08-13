/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/15/abrindo-uma-tela-de-carregamento-com-a-msaguarde-maratona-advpl-e-tl-357/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe356
Valida se o dicion�rio de dados esta no Banco de Dados
@type Function
@author Atilio
@since 26/03/2023
@see https://tdn.totvs.com/display/public/framework/MPDicInDB
@obs 
    Fun��o MPDicInDB
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + lRet    , L�gico    , Se .T. o dicion�rio est� no banco de dados se n�o ainda esta em arquivos dentro da Protheus Data

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe356()
    Local aArea         := FWGetArea()
    
    //Valida se o dicion�rio esta no banco de dados
    If MPDicInDB()
        FWAlertSuccess("O dicion�rio est� no banco de dados (SQL)!", "Teste MPDicInDB")
    Else
        FWAlertError("O dicion�rio ainda n�o esta no banco de dados (CTREE / DBF)!", "Teste MPDicInDB")
    EndIf

    FWRestArea(aArea)
Return
