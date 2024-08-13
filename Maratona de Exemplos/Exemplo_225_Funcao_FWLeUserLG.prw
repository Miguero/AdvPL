/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/09/montando-o-relacionamento-entre-duas-tabelas-com-a-fwjoinfilial-maratona-advpl-e-tl-224/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe225
Retorna o usu�rio e data dos logs de inclus�o e altera��o de campos
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6814934
@obs 

    Fun��o FWLeUserLg
    Par�metros
        + cCampo        , Caractere   , Nome do Campo
        + nTipo         , Num�rico    , 1 para retornar o nome do usu�rio e 2 para retornar a data
    Retorno
        + cRet          , Caractere   , Nome do Usu�rio ou Data

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe225()
    Local aArea := FWGetArea()
    Local cMensagem := ""
     
    DbSelectArea('SB1')
    SB1->(DbSetOrder(1)) //Filial + C�digo
     
    //Se conseguir posicionar, monta a mensagem para exibir
    If SB1->(DbSeek(FWxFilial('SB1') + "F0003"))
        cMensagem += "Produto: " + Alltrim(SB1->B1_COD) + " - " + Alltrim(SB1->B1_DESC) + CRLF

        //Logs de Inclus�o
        cMensagem += CRLF
        cMensagem += "** Inclus�o **" + CRLF
        cMensagem += "Usu�rio: " + FWLeUserLg("B1_USERLGI", 1) + CRLF
        cMensagem += "Data:    " + FWLeUserLg("B1_USERLGI", 2) + CRLF

        //Logs de Altera��o
        cMensagem += CRLF
        cMensagem += "** Altera��o **" + CRLF
        cMensagem += "Usu�rio: " + FWLeUserLg("B1_USERLGA", 1) + CRLF
        cMensagem += "Data:    " + FWLeUserLg("B1_USERLGA", 2) + CRLF
        
        //Exibe a mensagem
        FWAlertInfo(cMensagem, "Teste FWLeUserLg")
    EndIf

    FWRestArea(aArea)
Return
