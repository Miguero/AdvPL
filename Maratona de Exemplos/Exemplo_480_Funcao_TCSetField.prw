/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/16/definindo-o-tipo-de-um-campo-atraves-da-tcsetfield-maratona-advpl-e-tl-480/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zExe480
Atualiza as defini��es de uma tabela no Cache do DBAccess
@type Function
@author Atilio
@since 03/04/2023
@see https://tdn.totvs.com/display/tec/TCSetField
@obs 

    TCSetField
    Par�metros
        + cAlias      , Caractere      , Alias da Query
        + cField      , Caractere      , Nome do campo da Query
        + cType       , Caractere      , Indica o tipo que ser� definido (D de Data; N de Num�rico; L de L�gico)
        + nSize       , Num�rico       , Tamanho do campo
        + nPrecision  , Num�rico       , Quantidade de decimais do campo
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe480()
    Local aArea      := FWGetArea()
    Local cQrySB1    := ""

    //Monta uma query para buscar um grupo de produto com o c�digo G001
    cQrySB1 += " SELECT  " + CRLF
    cQrySB1 += "     B1_COD, B1_DESC, B1_UREV, B1_DATREF " + CRLF
    cQrySB1 += " FROM  " + CRLF
    cQrySB1 += "     " + RetSQLName("SB1") + " SB1  " + CRLF
    cQrySB1 += " WHERE  " + CRLF
    cQrySB1 += "     B1_FILIAL = '" + FWxFilial("SB1") + "' " + CRLF
    cQrySB1 += "     AND B1_GRUPO = 'G001' " + CRLF
    cQrySB1 += "     AND SB1.D_E_L_E_T_ = ' ' " + CRLF

    //Abre o alias em mem�ria
    TCQuery cQrySB1 New Alias "QRY_SB1"

    //Define o campo B1_UREV como do tipo Data
    TCSetField("QRY_SB1", "B1_UREV", "D")

    //Exibe alguma mensagem, caso haja dados
    If ! QRY_SB1->(EoF())
        FWAlertInfo("Descri��o do primeiro registro: " + QRY_SB1->B1_DESC, "Teste TCSetField")
    EndIf

    //Fecha o alias
    QRY_SB1->(DbCloseArea())

    FWRestArea(aArea)
Return
