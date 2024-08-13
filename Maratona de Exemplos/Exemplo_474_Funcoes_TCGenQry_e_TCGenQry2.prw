/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/13/criando-um-checkbox-atraves-da-tcheckbox-maratona-advpl-e-tl-475/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe474
Prepara a execu��o de uma query
@type Function
@author Atilio
@since 03/04/2023
@see https://tdn.totvs.com/display/tec/TCGenQry e https://tdn.totvs.com/display/tec/TCGenQry2
@obs 

    TCGenQry
    Par�metros
        + xPar1      , Indefinido     , Compatibilidade
        + xPar2      , Indefinido     , Compatibilidade
        + cQuery     , Caractere      , Query que ser� aberta
    Retorno
        + cRet       , Caractere      , Retorna uma string vazia

    TCGenQry2
    Par�metros
        + xPar1      , Indefinido     , Compatibilidade
        + xPar2      , Indefinido     , Compatibilidade
        + cQuery     , Caractere      , Query que ser� aberta
        + aValues    , Array          , Array com os conte�dos que ser�o inseridos no lugar das interroga��es dentro da query
    Retorno
        + cRet       , Caractere      , Retorna uma string vazia

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe474()
    Local aArea      := FWGetArea()
    Local cQrySBM    := ""
    Local aParSubst  := {}

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
        FWAlertInfo("Descri��o do grupo: " + QRY_TST->BM_DESC, "Teste TCGenQry")
    EndIf
    QRY_TST->(DbCloseArea())




    //Monta uma query para buscar um grupo de produto com o c�digo que ser� substituido
    cQrySBM := " SELECT  " + CRLF
    cQrySBM += "     BM_GRUPO, BM_DESC " + CRLF
    cQrySBM += " FROM  " + CRLF
    cQrySBM += "     " + RetSQLName("SBM") + " SBM  " + CRLF
    cQrySBM += " WHERE  " + CRLF
    cQrySBM += "     BM_FILIAL = '" + FWxFilial("SBM") + "' " + CRLF
    cQrySBM += "     AND BM_GRUPO = ? " + CRLF
    cQrySBM += "     AND SBM.D_E_L_E_T_ = ' ' " + CRLF

    //Adiciona os dados que ir�o substituir as interroga��es
    aAdd(aParSubst, "G001")

    //Abre um novo alias conforme a query passada
    DbUseArea(.T., "TOPCONN", TCGenQry2( , , cQrySBM, aParSubst), "QRY_TST", .F., .T.)

    //Caso haja dados, exibe uma mensagem
    If ! QRY_TST->(EoF())
        FWAlertInfo("Descri��o do grupo: " + QRY_TST->BM_DESC, "Teste TCGenQry2")
    EndIf
    QRY_TST->(DbCloseArea())

    FWRestArea(aArea)
Return
