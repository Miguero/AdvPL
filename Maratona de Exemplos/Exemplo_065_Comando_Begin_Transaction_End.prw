/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/12/controlando-transacoes-com-o-banco-de-dados-usando-begin-transaction-end-maratona-advpl-e-tl-065/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe065
Exemplo de como realizar grava��es, mas em caso de falha seja abortado
@type Function
@author Atilio
@since 06/12/2022
@see https://tdn.totvs.com/display/public/framework/BEGIN+TRANSACTION
@obs 

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe065()
    Local aArea    := FWGetArea()

    //Iniciando controle de transa��es
    Begin Transaction
        //Inclui um novo produto
        RecLock('SBM', .T.)
            SBM->BM_GRUPO := "TST1"
            SBM->BM_DESC  := "Teste " + Time()
        SBM->(MsUnlock())
        
        //Se a pergunta foi confirmada, cancela os lan�amentos na transa��o
        If FWAlertYesNo("Deseja cancelar e disarmar a transa��o?", "Aten��o")
            DisarmTransaction()
        EndIf
        
    //Finalizando controle de transa��es
    End Transaction

    FWRestArea(aArea)
Return
