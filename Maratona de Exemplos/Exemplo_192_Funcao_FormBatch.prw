/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/24/abrindo-uma-tela-com-botoes-atraves-da-formbatch-maratona-advpl-e-tl-192/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe192
Fun��o que abre uma tela com a op��o de continuar, cancelar ou setar par�metros
@type Function
@author Atilio
@since 11/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24346908
@obs 
    Fun��o FormBatch
    Par�metros
        + cTitle       , Caractere         , T�tulo da Janela
        + aSays        , Array             , Array com as linhas que ser�o exibidas na tela
        + aButtons     , Array             , Array com as a��es dos bot�es
        + bValid       , Bloco de C�digo   , Bloco de C�digo na valida��o da tela
        + nAltura      , Num�rico          , Altura da janela em Pixels
        + nLargura     , Num�rico          , Largura da janela em Pixels
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe192()
    Local aArea     := FWGetArea()
    Local aTexto    := {}
	Local aBotoes   := {}
	Local nContinua := 0
    Local cTitulo   := "Processamento de Dados"

    //Monta o texto que ser� exibido na tela
    aAdd(aTexto, "Essa � uma rotina para processamento de informa��es")
    aAdd(aTexto, "--")
    aAdd(aTexto, "A primeira linha do arquivo deve conter o nome dos campos")
    aAdd(aTexto, "ex.: B1_COD;B1_TIPO;B1_DESC;B1_GRUPO;")
    aAdd(aTexto, "")
    aAdd(aTexto, "As demais linhas devem conter o conte�do que ser� importado")
    aAdd(aTexto, "ex.: 00001;PA;Banana;G001;")
    aAdd(aTexto, "")
    aAdd(aTexto, "Para prosseguir com o processamento clique no bot�o Ok")

    //Monta os bot�es que ser�o exibidos
    aAdd(aBotoes, {1, .T., {|| nContinua := 1, FechaBatch()} })
	aAdd(aBotoes, {2, .T., {|| nContinua := 2, FechaBatch()} })	
    aAdd(aBotoes, {5, .T., {|| Pergunte("XTESTE", .T.)} })

    //Abre a tela
    FormBatch(cTitulo, aTexto, aBotoes) 

    //Se o usu�rio clicou no Confirmar
    If nContinua == 1
        //Aqui voc� aciona a sua fun��o se o usu�rio clicou no bot�o confirmar
    EndIf

    FWRestArea(aArea)
Return
