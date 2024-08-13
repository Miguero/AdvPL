/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/25/realizando-a-troca-de-empresa-e-filial-com-a-openfile-maratona-advpl-e-tl-376/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe377
Realiza a abertura de alguma tabela do dicion�rio em um alias definido em uma vari�vel
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o OpenSXs
    Par�metros
        + Objeto que ser� atualizado enquanto � realizado a abertura da tabela
        + Objeto (arquivo) que ser� atualizado enquanto � realizado a abertura da tabela
        + Define se o processo poder� ser cancelado caso seja uma r�gua no objeto
        + Compatibilidade
        + C�digo da empresa
        + Nome do Alias que ser� usado
        + Nome da Tabela do dicion�rio
        + Objeto do tipo r�gua que ser� usado na tela
        + Define se ser� encerrado o processo caso n�o seja encontrado a tabela do dicion�rio
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe377()
    Local aArea      := FWGetArea()
    Local cEmpresa   := ""
    Local cAliasSX   := ""
    Local cFiltro    := ""
    Local cMensagem  := ""
    
    //Define a empresa que vou buscar, o nome do alias que vou usar e o filtro que ser� aplicado
    cEmpresa := "99"
    cAliasSX := "SX3TST"
    cFiltro  := "X3_ARQUIVO $ 'SA1;SA2;' .And. Alltrim(X3_TIPO) == 'D'"

    //Faz a abertura da tabela do dicion�rio no alias que foi definido
    OpenSXs(NIL, NIL, NIL, NIL, cEmpresa, cAliasSX, "SX3", NIL, .F.)

    //Aplica o filtro no alias e posiciona no topo
    (cAliasSX)->(DbSetFilter({|| &(cFiltro)}, cFiltro))
    (cAliasSX)->(DbGoTop())

    //Percorre os dados e incrementa a mensagem
    While ! (cAliasSX)->(EoF())
        cMensagem += "+ " + (cAliasSX)->X3_CAMPO + " (" + (cAliasSX)->X3_TITULO + ")" + CRLF

        (cAliasSX)->(DbSkip())
    EndDo
    (cAliasSX)->(DbCloseArea())

    //Exibe a mensagem em tela
    cMensagem := "Campos do Tipo Data que foram encontrados: " + CRLF + cMensagem
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
