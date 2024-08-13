/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/06/buscando-o-nome-do-usuario-com-usrfullname-e-usrretname-maratona-advpl-e-tl-521/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe520
Abre uma tela de error log com a pilha de chamadas
@type Function
@author Atilio
@since 05/04/2023
@see https://tdn.totvs.com/display/tec/UserException
@obs 

    Fun��o Upper
    Par�metros
        + cDescricao    , Caractere   , String que indica a descri��o do erro for�ado
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe520()
    Local aArea   := FWGetArea()
    Local cQuery   := ""
    
    //Monta uma query normal que conter� um erro
    cQuery := " UPDATE " + RetSQLName("SB1") + "aaa " + CRLF
    cQuery += " SET B1_X_TESTE = 'ZZ" + Time() + "'  " + CRLF
    cQuery += " WHERE B1_COD = 'F0001' " + CRLF

    //Se houve falha, mostra uma mensagem
    If TCSqlExec(cQuery) < 0
        UserException("Falha na atualizacao: " + TCSQLError())
    EndIf

    FWAlertInfo("Processo concluido!", "Teste UserException")

    FWRestArea(aArea)
Return
