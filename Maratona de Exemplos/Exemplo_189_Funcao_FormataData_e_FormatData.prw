/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/22/formatando-uma-data-para-exibicao-com-formatadata-e-formatdata-maratona-advpl-e-tl-189/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe189
Formata a data para exibi��o
@type Function
@author Atilio
@since 21/12/2022
@obs 
    Fun��o FormataData
    Par�metros
        + Data de refer�ncia
        + Tipo de formata��o (1= DDMMAA; 2= Compatibilidade; 3= DD/MM/AA; 4= DD/MM/AAAA; 5= AAAAMMDD)
    Retorno
        + Retorna o texto formatado

    Fun��o FormatData
    Par�metros
        + Data de refer�ncia
        + Se ir� ter uma "/" separando os dias dos meses e dos anos
        + Tipo de formata��o (1= DDMMAA; 2= MMDDAA; 3= AADDMM; 4= AAMMDD; 5= DDMMAAAA; 6= MMDDAAAA; 7= AAAADDMM; 8= AAAAMMDD)
    Retorno
        + Se o lBarra for .F. retorna o texto formatado sen�o ele retorna uma vari�vel do tipo data

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe189()
    Local aArea     := FWGetArea()
    Local dDataRef  := Date()
    Local cMensagem := ""

    //Monta uma mensagem com todos os tipos
    cMensagem := ""
    cMensagem += "#1: " + FormataData(dDataRef, 1) + CRLF
    cMensagem += "#3: " + FormataData(dDataRef, 3) + CRLF
    cMensagem += "#4: " + FormataData(dDataRef, 4) + CRLF
    cMensagem += "#5: " + FormataData(dDataRef, 5) + CRLF
    FWAlertInfo(cMensagem, "Teste FormataData")

    //Monta uma mensagem com todos os tipos e com barras
    cMensagem := ""
    cMensagem += "#1: " + FormatData(dDataRef, .F., 1) + CRLF
    cMensagem += "#2: " + FormatData(dDataRef, .F., 2) + CRLF
    cMensagem += "#3: " + FormatData(dDataRef, .F., 3) + CRLF
    cMensagem += "#4: " + FormatData(dDataRef, .F., 4) + CRLF
    cMensagem += "#5: " + FormatData(dDataRef, .F., 5) + CRLF
    cMensagem += "#6: " + FormatData(dDataRef, .F., 6) + CRLF
    cMensagem += "#7: " + FormatData(dDataRef, .F., 7) + CRLF
    cMensagem += "#8: " + FormatData(dDataRef, .F., 8) + CRLF
    FWAlertInfo(cMensagem, "Teste FormatData")

    FWRestArea(aArea)
Return
