/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/23/validando-um-endereco-de-e-mail-com-a-isemail-maratona-advpl-e-tl-310/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zExe311
Valida se um registro esta travado
@type  Function
@author Atilio
@since 23/02/2023
@obs 
    Fun��o IsLocked
    Par�metros
        Recebe o alias
        Recebe o recno
    Retorno
        Retorna .T. se o registro esta travado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe311()
	Local aArea      := FWGetArea()
    Local nRecAtu    := 0
    
    DbSelectArea('SB1')
    SB1->(DbSetOrder(1)) //B1_FILIAL + B1_COD
    SB1->(DbGoTop())

    //Se conseguir posicionar no produto
    If SB1->( MsSeek(FWxFilial('SB1') + 'F0003'))
        //Busca o Recno atual
        nRecAtu := SB1->(RecNo())

        //Trava o registro para atualiza��es
        RecLock('SB1', .F.)

        //Valida se o registro j� foi travado
        If IsLocked("SB1", nRecAtu)
            FWAlertInfo("O registro j� foi travado anteriormente!", "Teste IsLocked")
        Else
            FWAlertInfo("O registro esta dispon�vel para ser travado!", "Teste IsLocked")
        EndIf

        //Destrava o registro
        SB1->(MsUnlock())
    EndIf

    FWRestArea(aArea)
Return
