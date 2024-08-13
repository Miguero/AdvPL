/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/14/buscando-registros-que-estao-travados-com-dbrlocklist-maratona-advpl-e-tl-128/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe128
Retorna uma lista com registros que foram travados (com RecLock) de um alias
@type Function
@author Atilio
@since 14/12/2022
@see https://tdn.totvs.com/display/tec/DBRLockList
@obs 
    Fun��o DbRLockList
    Par�metros
        N�o possui par�metros
    Retorno
        + aRet         , Array        , Lista com o n�mero dos registros que est�o com lock ativo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe128()
    Local aArea      := FWGetArea()
    Local aTravas    := {}
    
    //Abre o cadastro de produtos
    DbSelectArea('SB1')
    SB1->(DbSetOrder(1)) //B1_FILIAL + B1_COD
    SB1->(DbGoTop())

    //Trava o registro para altera��o
    RecLock("SB1", .F.)

    //Busca os registros travados
    aTravas := SB1->(DBRLockList())

    //Destrava o registro
    SB1->(MsUnlock())

    //Mostra quantas travas foram encontradas
    FWAlertInfo("Existe(m) " + cValToChar(Len(aTravas)) + " registro(s) com lock na SB1", "Teste DBRLockList")

    FWRestArea(aArea)
Return
