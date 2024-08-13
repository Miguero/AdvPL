/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/15/atualizando-o-cache-de-uma-tabela-com-tcrefresh-maratona-advpl-e-tl-479/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zExe478
Executa uma query e atribui um alias para ela
@type Function
@author Atilio
@since 03/04/2023
@see https://tdn.totvs.com/display/tec/Comando+TCQUERY
@obs 

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe478()
    Local aArea      := FWGetArea()
    Local cQrySBM    := ""

    //Monta uma query para buscar um grupo de produto com o c�digo 0002
    cQrySBM += " SELECT  " + CRLF
    cQrySBM += "     BM_GRUPO, BM_DESC " + CRLF
    cQrySBM += " FROM  " + CRLF
    cQrySBM += "     " + RetSQLName("SBM") + " SBM  " + CRLF
    cQrySBM += " WHERE  " + CRLF
    cQrySBM += "     BM_FILIAL = '" + FWxFilial("SBM") + "' " + CRLF
    cQrySBM += "     AND BM_GRUPO = '0002' " + CRLF
    cQrySBM += "     AND SBM.D_E_L_E_T_ = ' ' " + CRLF

    //Abre o alias em mem�ria
    TCQuery cQrySBM New Alias "QRY_SBM"

    //Exibe alguma mensagem, caso haja dados
    If ! QRY_SBM->(EoF())
        FWAlertInfo("Descri��o do grupo: " + QRY_SBM->BM_DESC, "Teste TCQuery")
    EndIf

    //Fecha o alias
    QRY_SBM->(DbCloseArea())

    FWRestArea(aArea)
Return
