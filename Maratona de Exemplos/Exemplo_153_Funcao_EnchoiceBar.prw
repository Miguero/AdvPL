/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/04/validando-se-uma-expressao-esta-vazia-com-a-funcao-empty-maratona-advpl-e-tl-152/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe153
Cria uma barra na tela com bot�es como Confirmar, Cancelar e Outras A��es
@type Function
@author Atilio
@since 18/12/2022
@obs 
    Fun��o EnchoiceBar
    Par�metros
        + Nome da Dialog que a EnchoiceBar ser� vinculada
        + A��o ao clicar no bot�o Confirmar
        + A��o ao clicar no bot�o Cancelar
        + Se for .T. mostra uma mensagem de deseja realmente excluir
        + Bot�es do Outras A��es
        + N�mero do Recno que ser� posicionado da tabela
        + Tabela de onde esta sendo feito as opera��es
        + Ativa a fun��o Mashups no Outras A��es
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe153()
    Local aArea       := FWGetArea()
    Local nJanAltu   := 200
    Local nJanLarg   := 600
    Local lDimPixels := .T.
    Local lCentraliz := .T.
    Local bBlocoOk   := {|| lOk := .T., oDlgAux:End()}
    Local bBlocoCan  := {|| lOk := .F., oDlgAux:End()}
    Local aOutrasAc  := { {"BMP", {|| Alert("Cliquei no 1")}, "Bot�o 1"}, {"BMP", {|| Alert("Cliquei no 2")}, "Bot�o 2"} }
    Local bBlocoIni  := {|| EnchoiceBar(oDlgAux, bBlocoOk, bBlocoCan, , aOutrasAc)}
    Local cJanTitulo := "Tela usando TDialog com EnchoiceBar"
    Private oDlgAux
    Private lOk      := .F.

    //Cria a dialog
    oDlgAux := TDialog():New(0, 0, nJanAltu, nJanLarg, cJanTitulo, , , , , , /*nCorFundo*/, , , lDimPixels)

    //Ativa e exibe a janela
    oDlgAux:Activate(, , , lCentraliz, , , bBlocoIni)

    //Se o retorno for positivo, foi clicado no bot�o Confirmar ao inv�s do Cancelar
    If lOk
        FWAlertSuccess("Foi clicado no bot�o Confirmar!", "OK")
    EndIf

    FWRestArea(aArea)
Return
