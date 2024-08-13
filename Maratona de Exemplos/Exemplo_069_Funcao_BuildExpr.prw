/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/16/montando-filtros-de-tabela-em-tela-com-buildexpr-maratona-advpl-e-tl-069/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe069
Exemplo para filtrar tabelas atrav�s e uma tela de filtro
@type Function
@author Atilio
@since 06/12/2022
@see https://tdn.totvs.com/display/public/framework/BuildExpr
@obs 
    Fun��o BuildExpr
    Par�metros
        + cAlias            , Caractere         , Alias da Tabela
        + oWnd              , Objeto            , Objeto que chamou a fun��o
        + cFilter           , Caractere         , String j� contendo o filtro
        + lTopFilter        , L�gico            , Utiliza express�o SQL (.T.) ou AdvPL (.F.)
        + bOk               , Bloco de C�digo   , Bloco de c�digo executado ao clicar no bot�o Confirmar
        + oDlg              , Objeto            , Dialog onde ser� apresentado o construtor de filtros
        + aUsado            , Array             , Array com os campos que poder�o ser usados nos filtros
        + cDesc             , Caractere         , T�tulo da Janela
        + nRow              , Num�rico          , Posi��o da linha inicial para exibir a tela de filtro
        + nCol              , Num�rico          , Posi��o da coluna inicial para exibir a tela de filtro
        + aCampo            , Array             , Array com os campos que ser�o apresentados
        + lVisibleTopFilter , L�gico            , Verifica express�o do filtro como TopConnect
        + lExpBtn           , L�gico            , Permite habilitar ou desabilitar o bot�o Express�o
        + cTopFilter        , Caractere         , Express�o do filtro do TopConnect
    Retorno
        + cRet              , Caractere         , Express�o do filtro

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe069()
    Local aArea   := FWGetArea()
    Local cFiltro := ""

    //Mostrando a tela de filtro
    DbSelectArea('SA1')
    cFiltro := BuildExpr('SA1')
    
    //Se tiver filtro, usa o DbSetFilter para filtrar a tabela
    If ! Empty(cFiltro)
        SA1->(DbSetFilter({|| &(cFiltro)}, cFiltro))
        
    //Sen�o, limpa qualquer filtragem
    Else
        SA1->(DbClearFilter())
    Endif

    FWRestArea(aArea)
Return
