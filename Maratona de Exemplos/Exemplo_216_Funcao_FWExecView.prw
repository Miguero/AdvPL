/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/05/abrindo-uma-tela-mvc-com-fwexecview-maratona-advpl-e-tl-216/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "FWMVCDef.ch"

/*/{Protheus.doc} User Function zExe216
Exemplo de fun��o que abre uma tela em MVC
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWExecView
@obs 

    Fun��o FWExecView
    Par�metros
        + cTitulo        , Caractere       , T�tulo da Janela
        + cPrograma      , Caractere       , Nome do programa em MVC
        + nOperation     , Num�rico        , Indica a opera��o se � inclus�o (3); altera��o (4) ou exclus�o (5)
        + oDlg           , Objeto          , Par�metro descontinuado
        + bCloseOnOK     , Bloco de C�digo , Bloco de c�digo acionado no fechamento da janela
        + bOk            , Bloco de C�digo , Bloco de c�digo acionado na valida��o ao clicar em Confirmar
        + nPercReducao   , Num�rico        , Percentual de redu��o do tamanho da Janela
        + aEnableButtons , Array           , Bot�es que ser�o habilitados na Janela
        + bCancel        , Bloco de C�digo , Bloco de c�digo na valida��o ao clicar em Cancelar / Fechar
        + cOperatId      , Caractere       , Identifica��o da opera��o (usado quando tem mais de um 4 no nOperation no programa MVC)
        + cToolBar       , Caractere       , Indica o relacionamento dos bot�es com a tela
        + oModelAct      , Objeto          , Model instanciado que ser� usado pela View
    Retorno
        + nValor        , Num�rico  , 0 se foi clicado em Ok e 1 se foi clicado em Cancelar

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe216()
    Local aArea := FWGetArea()
    Local cFunBkp := FunName()
     
    DbSelectArea('SA2')
    SA2->(DbSetOrder(1)) //Filial + C�digo + Loja
     
    //Se conseguir posicionar
    If SA2->(DbSeek(FWxFilial('SA2') + "F00002"))
        SetFunName("MATA020")
        FWExecView('Visualizacao Teste', 'MATA020', MODEL_OPERATION_VIEW)
        SetFunName(cFunBkp)
    EndIf

    FWRestArea(aArea)
Return
