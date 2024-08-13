/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/20/buscando-a-semana-do-ano-com-nbiweekofyear-maratona-advpl-e-tl-366/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe366
Busca o n�mero da semana no ano
@type Function
@author Atilio
@since 27/03/2023
@obs 

    Fun��o nBIWeekOfYear
    Par�metros
        Recebe a data a ser verificada
    Retorno
        Retorna o n�mero da semana do ano

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe366()
    Local aArea     := FWGetArea()
    Local dDataHoje := Date()
    Local nSemana

    //Busca a semana do ano
    nSemana := nBIWeekOfYear(dDataHoje)

    //Exibe em tela
    FWAlertInfo("Na data '" + dToC(dDataHoje) + "', estamos na semana '" + cValToChar(nSemana) + "'", "Teste nBIWeekOfYear")
 
    FWRestArea(aArea)
Return
