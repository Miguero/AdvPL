/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/14/gerando-e-abrindo-o-excel-com-fwmsexcel-fwmsexcelxlsx-e-msexcel-maratona-advpl-e-tl-234/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe235
Exemplo de barras de processamento
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWMsgRun e https://tdn.totvs.com/display/tec/MsgRun
@obs 
    Fun��o FWMsgRun
    Par�metros
        + oComponent    , Objeto            , Componente que ser� sobreposto com o painel
        + bAction       , Bloco de C�digo   , Bloco que ser� executado
        + cHeader       , Caractere         , T�tulo da janela
        + cText         , Caractere         , Texto que ser� apresentado
    Retorno
        N�o tem retorno

    Fun��o MsgRun
    Par�metros
        + cText         , Caractere         , Texto que ser� apresentado
        + cHeader       , Caractere         , T�tulo da janela
        + bBlock        , Bloco de C�digo   , Bloco que ser� executado
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe235()
    Local aArea     := FWGetArea()
    Local nTotal    := 0
    Private aDados  := Array(1000000)

    //Mostra qualquer mensagem
    MsgRun("Lendo informa��es...", "Teste", {|| aEval(aDados, {|x| nTotal++}) })

    //Mostra a barra que fica carregando
    FWMsgRun(, {|oSay| fCorre(oSay) }, "Processando", "Buscando informa��es")

    FWRestArea(aArea)
Return

Static Function fCorre(oSay)
    Local nAtual := 0

    //Percorre o array e define o texto
    For nAtual := 1 To Len(aDados)
        //oSay:SetText("Registro " + cValToChar(nAtual) + " de " + cValToChar(Len(aDados)))
    Next
Return
