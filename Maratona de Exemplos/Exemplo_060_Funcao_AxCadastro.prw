/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/07/criando-uma-tela-simples-de-cadastro-com-axcadastro-maratona-advpl-e-tl-060/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe060
Exemplo de fun��o que cria uma tela de cadastro (o indicado � usar MVC, mas esse exemplo � apenas para demonstrar)
@type Function
@author Atilio
@since 05/12/2022
@see https://tdn.totvs.com/display/public/framework/AxCadastro
@obs 
    Fun��o AxCadastro
    Par�metros
        + cAlias      , Caractere       , Alias da tabela
        + cTitle      , Caractere       , T�tulo da janela
        + cDel        , Caractere       , Fun��o executada ao confirmar uma exclus�o
        + cOk         , Caractere       , Fun��o executada ao clicar no confirmar
        + aRotAdic    , Array           , Rotinas adicionais para serem acrescentadas no menu
        + bPre        , Bloco de C�digo , Bloco de c�digo executado antes de abrir a tela de manuten��o do cadastro
        + bOK         , Bloco de C�digo , Bloco de c�digo executado ao clicar no bot�o Confirmar na tela de manuten��o do cadastro
        + bTTS        , Bloco de C�digo , Bloco de c�digo executado durante a transa��o ap�s clicar no Confirmar na tela de manuten��o do cadastro
        + bNoTTS      , Bloco de C�digo , Bloco de c�digo executado fora da transa��o ap�s clicar no Confirmar na tela de manuten��o do cadastro
        + aAuto       , Array           , Array com nome dos campos a serem considerados nas rotinas autom�ticas
        + nOpcAuto    , Num�rico        , N�mero da op��o selecionada em caso de rotinas autom�ticas
        + aButtons    , Array           , Array com os bot�es dentro da rotina de manuten��o do cadastro
        + aACS        , Array           , Array com os controles de acessos das fun��es
        + cTela       , Caractere       , Nome da vari�vel que ser� utilizada no lugar da aTela
        + lMenuDef    , L�gico          , Indica se usar� um MenuDef com fun��es padronizadas

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe060()
    Local aArea      := FWGetArea()
    Local cDelOk   := ".T."
    Local cFunTOk  := ".T." // Pode ser colocado como "u_zVldTst()"

    //Chamando a tela de cadastros
    AxCadastro('SBM', 'Grupo de Produtoss', cDelOk, cFunTOk)

    FWRestArea(aArea)
Return
