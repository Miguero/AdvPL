/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/31/validando-se-uma-linha-esta-apagada-numa-grid-com-a-lindelet-maratona-advpl-e-tl-327/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe327
Fun��o que verifica se a linha esta apagada
@type  Function
@author Atilio
@since 12/03/2023
@obs 

    Fun��o LinDelet
    Par�metros
        Recebe um array com a linha atual
    Retorno
        Retorna .T. se a linha esta apagada ou .F. se n�o
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe327()
    Local aArea      := FWGetArea()
    Local nLinha     := 1
    Local cApagadas  := ""

    //Se a pergunta for confirmada
    If FWAlertYesNo("Deseja validar todas as linhas?", "Continua")
        //Percorre as linhas digitadas na grid
        For nLinha := 1 To Len(aCols)

            //Se a linha atual estiver apagada
            If LinDelet(aCols[nLinha])
                cApagadas += "+ Linha " + cValToChar(nLinha) + CRLF
            EndIf
        Next

        //Se a variavel estiver vazia, apenas mostra mensagem, sen�o mostra quais foram as linhas
        If Empty(cApagadas)
            FWAlertSuccess("N�o h� linha(s) apagada(s)", "Sucesso")
        Else
            FWAlertError(cApagadas, "Linhas Excluidas")
        EndIf
    EndIf

    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function A410CONS
Ponto de Entrada para adicionar bot�es no Outras A��es dentro do Pedido de Venda
@type  Function
@author Atilio
@since 12/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6784033
/*/

User Function A410CONS()
    Local aArea   := FWGetArea()
    Local aBotoes := {}

    aAdd(aBotoes, {'DBG07', {|| u_zExe327()}, "* Ver Linhas Apagadas", "* Apagadas"} )

    FWRestArea(aArea)
Return aBotoes
