/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/06/efetivando-manipulacoes-de-registros-com-dbcommit-e-dbcommitall-maratona-advpl-e-tl-120/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe120
Efetiva a grava��o de dados de um alias ou de todos os alias alterados
@type Function
@author Atilio
@since 13/12/2022
@see https://tdn.totvs.com/display/tec/DBCommit e https://tdn.totvs.com/display/tec/DBCommitAll
@obs 
    Fun��o DbCommit
    N�o possui par�metros nem retorno

    Fun��o DbCommitAll
    N�o possui par�metros nem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe120()
    Local aArea      := FWGetArea()
    Local cDescAtu   := ""
    Local cNomeAtu   := ""
    
    DbSelectArea('SB1')
    SB1->(DbSetOrder(1)) //B1_FILIAL + B1_COD
    SB1->(DbGoTop())

    DbSelectArea('SA1')
    SA1->(DbSetOrder(1)) //A1_FILIAL + A1_COD + A1_LOJA
    SA1->(DbGoTop())

    //Exemplo com apenas 1 alias
    Begin Transaction

        //Se conseguir posicionar no produto
        If SB1->( MsSeek(FWxFilial('SB1') + 'F0003'))
            cDescAtu := Alltrim(SB1->B1_DESC)+"..."
            
            //Atualiza a Descri��o
            RecLock('SB1', .F.)
                SB1->B1_DESC := cDescAtu
            SB1->(MsUnlock())
        EndIf

        //Salva todas as altera��es pendentes
        If FWAlertYesNo("Deseja salvar a altera��o no produto?", "Continua (DbCommit)?")
            SB1->(DbCommit())
        Else
            DisarmTransaction()
        EndIf
    End Transaction



    

    //Inicia o controle de transa��es
    Begin Transaction
        
        //Se conseguir posicionar no produto
        If SB1->( MsSeek(FWxFilial('SB1') + 'F0003'))
            cDescAtu := Alltrim(SB1->B1_DESC)+"..."
            
            //Atualiza a Descri��o
            RecLock('SB1', .F.)
                SB1->B1_DESC := cDescAtu
            SB1->(MsUnlock())
        EndIf
        
        //Se conseguir posicionar no cliente
        If SA1->( MsSeek(FWxFilial('SA1') + 'C00003'))
            cNomeAtu := Alltrim(SA1->A1_NOME)+"..."
            
            //Atualiza o nome
            RecLock('SA1', .F.)
                SA1->A1_NOME := cNomeAtu
            SA1->(MsUnlock())
        EndIf
        
        //Salva todas as altera��es pendentes
        If FWAlertYesNo("Deseja salvar todas as altera��es?", "Continua (DbCommitAll)")
            DbCommitAll()
        Else
            DisarmTransaction()
        EndIf

    //Encerra a transa��o
    End Transaction

    FWRestArea(aArea)
Return
