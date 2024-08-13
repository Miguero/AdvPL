/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/28/buscando-varias-informacoes-de-uma-tabela-com-getadvfval-maratona-advpl-e-tl-263/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe262
Fun��es para manipular as grids e atualizar objetos na tela
@type  Function
@author Atilio
@since 21/02/2023
@obs 

    Fun��o GDDeleted
    Par�metros
        + N�mero da linha do aCols
        + aHeader para valida��o (caso a tela tenha mais de uma grid)
        + aCols para valida��o (caso a tela tenha mais de uma grid)
    Retorno
        Retorna .T. se a linha esta apagada ou .F. se n�o

    Fun��o GDFieldGet
    Par�metros
        + Nome do campo
        + N�mero da linha do aCols
        + Se .T. busca conte�do na mem�ria sen�o se .F. busca do aCols (padr�o � .F.)
        + aHeader para valida��o (caso a tela tenha mais de uma grid)
        + aCols para valida��o (caso a tela tenha mais de uma grid)
    Retorno
        Retorna o valor do campo digitado na grid

    Fun��o GDFieldPos
    Par�metros
        + Nome do campo
        + aHeader para valida��o (caso a tela tenha mais de uma grid)
    Retorno
        Retorna o n�mero da coluna encontrada na grid

    Fun��o GDFieldPut
    Par�metros
        + Nome do campo
        + Conte�do que ser� atribu�do ao campo
        + N�mero da linha do aCols
        + aHeader para valida��o (caso a tela tenha mais de uma grid)
        + aCols para valida��o (caso a tela tenha mais de uma grid)
        + Define se ir� buscar o valor da mem�ria (.T.) ou do aCols (.F.)
    Retorno
        Retorna o valor antes da atribui��o

    GetDRefresh
    Fun��o n�o tem par�metros nem retorno
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe262()
    Local aArea      := FWGetArea()
    Local nLinha     := 1
    Local nPosDatEnt := GDFieldPos("C6_ENTREG")
    Local cMensagem  := ""

    //Se a pergunta for confirmada
    If FWAlertYesNo("Confirma a altera��o da Data de Entrega para Hoje (coluna " + cValToChar(nPosDatEnt) + ")?", "Continua")
        //Percorre as linhas digitadas na grida
        For nLinha := 1 To Len(aCols)

            //Se a linha atual n�o estiver apagada
            If ! GDDeleted(nLinha)
                //A opera��o abaixo de buscar com GDFieldGet, � o mesmo que: aCols[nLinha][nPosDatEnt]
                cMensagem += "Era " + dToC( GDFieldGet("C6_ENTREG", nLinha) ) + CRLF

                //A opera��o abaixo de atualizar com GDFieldPut, � o mesmo que: aCols[nLinha][nPosDatEnt] := Date()
                GDFieldPut("C6_ENTREG", Date(), nLinha)
            EndIf
        Next

        //Se tiver mensagem, exibe em tela
        If ! Empty(cMensagem)
            ShowLog(cMensagem)
        EndIf

        //Atualiza a tela
        GetDRefresh()
    EndIf

    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function A410CONS
Ponto de Entrada para adicionar bot�es no Outras A��es dentro do Pedido de Venda
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6784033
/*/

User Function A410CONS()
    Local aArea   := FWGetArea()
    Local aBotoes := {}

    aAdd(aBotoes, {'DBG07', {|| u_zExe262()}, "* Atualizar Data de Entrega","* Entrega"} )

    FWRestArea(aArea)
Return aBotoes
