/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/17/buscando-o-plano-de-execucao-de-uma-query-com-tcsqlplan-maratona-advpl-e-tl-483/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe482
Executa uma opera��o de atualiza��o no Banco de Dados
@type Function
@author Atilio
@since 03/04/2023
@see https://tdn.totvs.com/display/tec/TCSQLExec e https://tdn.totvs.com/display/tec/TCSQLError
@obs 

    TCSQLExec
    Par�metros
        + cStatement  , Caractere      , Query que ser� executada
    Retorno
        + nStatus     , Num�rico       , Retorna um n�mero com o resultado de execu��o da query (se menor que 0 aconteceu algum erro)

    TCSQLError
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + cReturn     , Caractere      , Retorna o texto com o erro ap�s acionar o TCSQLExec

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe482()
    Local aArea := FWGetArea()
    Local cQuery   := ""

    //Monta uma query normal de atualiza��o
    cQuery := " UPDATE " + RetSQLName("SB1") + " " + CRLF
    cQuery += " SET B1_X_TESTE = 'ZZ" + Time() + "'  " + CRLF
    cQuery += " WHERE B1_COD = 'F0001' " + CRLF

    //Se houve falha, mostra uma mensagem
    If TCSqlExec(cQuery) < 0
        FWAlertInfo("Falha: " + TCSQLError(), "Teste 1 TCSQLExec e TCSQLError")
    Else
        FWAlertSuccess("Registro alterado com sucesso", "Teste 1 TCSQLExec e TCSQLError")
    EndIf

    //Monta uma query normal que conter� um erro
    cQuery := " UPDATE " + RetSQLName("SB1") + "aaa " + CRLF
    cQuery += " SET B1_X_TESTE = 'ZZ" + Time() + "'  " + CRLF
    cQuery += " WHERE B1_COD = 'F0001' " + CRLF

    //Se houve falha, mostra uma mensagem
    If TCSqlExec(cQuery) < 0
        FWAlertInfo("Falha: " + TCSQLError(), "Teste 2 TCSQLExec e TCSQLError")
    Else
        FWAlertSuccess("Registro alterado com sucesso", "Teste 2 TCSQLExec e TCSQLError")
    EndIf

    FWRestArea(aArea)
Return
