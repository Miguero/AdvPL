/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/19/travando-registros-para-atualizacao-com-msunlock-reclock-e-softlock-maratona-advpl-e-tl-365/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe365
Trava uma tabela para atualiza��es de informa��es
@type Function
@author Atilio
@since 27/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24347005 e https://tdn.totvs.com/pages/releaseview.action?pageId=24347041 e https://tdn.totvs.com/pages/releaseview.action?pageId=24347081
@obs 

    Fun��o MsUnlock
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Fun��o n�o tem retorno

    Fun��o SoftLock
    Par�metros
        + cAlias    , Caractere    , Indica o alias que ser� verificado
    Retorno
        Retorna .T. ou .F. se conseguiu encontrar e travar

    Fun��o RecLock
    Par�metros
        + cAlias    , Caractere    , Indica o alias que ser� verificado
        + lAdd      , L�gico       , .T. se ser� inclus�o ou .F. se ser� altera��o
        + l1        , L�gico       , Compatibilidade
        + lSoft     , L�gico       , Pergunta para o usu�rio se deseja lockar novamente
        + lInJob    , L�gico       , Indica se ta rodando dentro de um Job
    Retorno
        + lRet      , L�gico       , Retorna .T. ou .F. se conseguiu encontrar e travar

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe365()
    Local aArea    := FWGetArea()
    Local cCodProd := "F0001"
 
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) // B1_FILIAL + B1_COD
 
    //Posiciona no produto
    If SB1->(MsSeek(FWxFilial("SB1") + cCodProd))
        If SoftLock("SB1")
            Alert("Aqui pode ser feito valida��es antes do reclock...")
 
            RecLock("SB1", .F.)
                //SB1->B1_X_CAMPO := 'aaaa'
            SB1->(MsUnlock())
        EndIf
    EndIf
 
    FWRestArea(aArea)
Return
