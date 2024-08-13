/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/14/pegando-a-largura-de-um-texto-com-a-gettextwidth-maratona-advpl-e-tl-292/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe293
Busca as informa��es das threads abertas no slave onde esta rodando a aplica��o
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetUserInfoArray
@obs 

    Fun��o GetUserInfoArray
    Par�metros
        + lShowMoreInfo     , L�gico        , Se .T. retorna mais informa��es (apenas para 4GL)
    Retorno
        + aRet              , Array         , Array com as informa��es

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe293()
    Local aArea      := FWGetArea()
    Local aThreads   := {}
    Local nConexAtu  := 1
    Local cMensagem  := ""
     
    //Pega todos os usu�rios conectados
    aThreads := GetUserInfoArray()
     
    //Percorre todas as conex�es
    For nConexAtu := 1 To Len(aThreads)
        cMensagem += "Conex�o #" + StrZero(nConexAtu, 4) + "|"
        cMensagem += "Usuario     '" + Alltrim(aThreads[nConexAtu][1])    + "', " 
        cMensagem += "Server      '" + aThreads[nConexAtu][4]             + "', " 
        cMensagem += "Thread      '" + cValToChar(aThreads[nConexAtu][3]) + "', " 
        cMensagem += "Tempo Total '" + aThreads[nConexAtu][8]             + "' "
        cMensagem += CRLF
    Next

    //Mostra a mensagem
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
