/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/21/abrindo-um-alias-ou-query-com-dbusearea-maratona-advpl-e-tl-135/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe135
Abre uma tabela ou uma query
@type Function
@author Atilio
@since 15/12/2022
@see https://tdn.totvs.com/display/tec/DBUseArea
@obs 
    Fun��o DbUseArea
    Par�metros
        + lNewArea       , L�gico      , .T. se ser� um novo alias na mem�ria ou .F. se j� ir� utilizar um que j� esta aberto
        + cDriver        , Caractere   , Informa o RDD de conex�o
        + cFile          , Caractere   , Arquivo/Tabela/Query a ser aberta
        + cAlias         , Caractere   , Nome do alias que ser� atribu�do
        + lShared        , L�gico      , Se .T. outras threads v�o poder usar essa tabela sen�o se for .F. somente a thread que abriu
        + lReadOnly      , L�gico      , Se .T. � apenas para leitura de dados e n�o aceitar� locks sen�o se for .F. permitir� manipula��o de dados
    Retorno
        N�o possui retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe135()
    Local aArea      := FWGetArea()
    Local cQrySBM    := ""

    //Monta uma query para buscar um grupo de produto com o c�digo 0002
    cQrySBM := " SELECT  " + CRLF
    cQrySBM += "     BM_GRUPO, BM_DESC " + CRLF
    cQrySBM += " FROM  " + CRLF
    cQrySBM += "     " + RetSQLName("SBM") + " SBM  " + CRLF
    cQrySBM += " WHERE  " + CRLF
    cQrySBM += "     BM_FILIAL = '" + FWxFilial("SBM") + "' " + CRLF
    cQrySBM += "     AND BM_GRUPO = '0002' " + CRLF
    cQrySBM += "     AND SBM.D_E_L_E_T_ = ' ' " + CRLF

    //Abre um novo alias conforme a query passada
    DbUseArea(.T., "TOPCONN", TCGenQry( , , cQrySBM), "QRY_TST", .F., .T.)

    //Caso haja dados, exibe uma mensagem
    If ! QRY_TST->(EoF())
        FWAlertInfo("Descri��o do grupo: " + QRY_TST->BM_DESC, "Teste DbUseArea")
    EndIf
    QRY_TST->(DbCloseArea())

    FWRestArea(aArea)
Return
