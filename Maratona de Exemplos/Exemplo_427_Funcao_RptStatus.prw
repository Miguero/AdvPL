/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/20/preparando-o-ambiente-com-a-rpcsetenv-maratona-advpl-e-tl-426/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zExe427
Abre uma r�gua simples de processamento
@type Function
@author Atilio
@since 29/03/2023
@obs 
    Fun��o RptStatus
    Par�metros
        Bloco de c�digo que ser� executado
        T�tulo da janela
        Mensagem que ficar� em exibi��o
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe427()
    Local aArea    := FWGetArea()

    RptStatus({|| fExemplo()}, "Aguarde...", "Executando rotina...")

    FWRestArea(aArea)
Return

Static Function fExemplo()
    Local aArea   := FWGetArea()
    Local nAtual  := 0
    Local nTotal  := 0
    Local cQryAux := ""
      
    //Executa a consulta
    cQryAux := " SELECT "                          + CRLF
    cQryAux += "     BM_GRUPO, "                    + CRLF
    cQryAux += "     BM_DESC "                      + CRLF
    cQryAux += " FROM "                            + CRLF
    cQryAux += "     " + RetSQLName("SBM") + " SBM "                   + CRLF
    cQryAux += " WHERE "                           + CRLF
    cQryAux += "     BM_FILIAL = '" + FWxFilial('SBM') + "' "              + CRLF
    cQryAux += "     AND SBM.D_E_L_E_T_ = ' ' "     + CRLF
    TCQuery cQryAux New Alias "QRY_AUX"
      
    //Conta quantos registros existem, e seta no tamanho da regua
    Count To nTotal
    SetRegua(nTotal)
      
    //Percorre todos os registros da query
    QRY_AUX->(DbGoTop())
    While ! QRY_AUX->(EoF())
          
        //Incrementa a mensagem na regua
        nAtual++
        IncRegua()
        Sleep(100)
          
        QRY_AUX->(DbSkip())
    EndDo
    QRY_AUX->(DbCloseArea())
      
    FWRestArea(aArea)
Return
