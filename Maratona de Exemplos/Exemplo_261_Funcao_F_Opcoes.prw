/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/27/compactando-e-descompactando-arquivos-com-fzip-e-funzip-maratona-advpl-e-tl-260/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe261
Fun��o que abre uma tela para sele��o de registros conforme um Array
@type  Function
@author Atilio
@since 21/02/2023
@obs 

    Fun��o F_Opcoes
    Par�metros
        + Define a vari�vel de retorno
        + Define o texto do t�tulo da janela
        + Define o array de linhas da grid
        + Define os c�digos das linhas da grid
        + Mantido por compatibilidade
        + Mantido por compatibilidade
        + Define se ser� a sele��o de apenas 1 linha por vez
        + Tamanho da string da chave
        + N�mero m�ximo de elementos
        + Inclui bot�es para m�ltipla sele��o
        + Define se ser� montado atrav�s de um X3_CBOX
        + Qual � o campo para montagem das op��es
        + N�o permite ordena��o
        + N�o permite pesquisar
        + For�a o retorno como Array
        + Acionado em consulta F3
    Retorno
        Retorna .T. se foi confirmado ou .F. se foi cancelado
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe261()
    Local aArea      := FWGetArea()
    Local aRet       := {}
    Local cTitulo    := "Regi�es do Brasil"
    Local aOpc       := {}
    Local cRet       := ""

    //Define as op��es que ser�o exibidas
    aAdd(aOpc, "Norte")
    aAdd(aOpc, "Nordeste")
    aAdd(aOpc, "Centro Oeste")
    aAdd(aOpc, "Sudeste")
    aAdd(aOpc, "Sul")

    //Define as op��es de retorno (conforme o aOpc acima)
    cRet := "000000001000000002000000003000000004000000005"

    //Abre a tela para a sele��o
    If F_Opcoes(@aRet       ,;    //uVarRet
                cTitulo     ,;    //cTitulo
                aOpc        ,;    //aOpcoes
                cRet        ,;    //cOpcoes
                12          ,;    //nLin1
                49          ,;    //nCol1
                .T.         ,;    //l1Elem
                9           ,;    //nTam
                999         ,;    //nElemRet
                .F.         ,;    //lMultSelect
                .F.         ,;    //lComboBox
                Nil         ,;    //cCampo
                .F.         ,;    //lNotOrdena
                .F.         ,;    //lNotPesq
                .T.         ,;    //lForceRe
                Nil          ;    //cF3
        )

        FWAlertInfo("A op��o marcada foi " + aRet[1], "Teste F_Opcoes")
    EndIf

    FWRestArea(aArea)
Return
