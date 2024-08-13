/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/01/somando-informacoes-de-uma-tabela-atraves-da-somar-maratona-advpl-e-tl-451/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe451
Realiza a soma de informa��es de uma tabela
@type Function
@author Atilio
@since 31/03/2023
@obs 

    Fun��o Somar
    Par�metros
        + Alias da Tabela
        + Condi��o que ser� avaliada para efetuar a soma
        + Campo ou express�o que ser� somado para retornar
    Retorno
        + Retorna a soma conforme condi��o e campo (ou express�o)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe451()
    Local aArea     := FWGetArea()
    Local cTabela   := ""
    Local cCondicao := ""
    Local cCampo    := ""
    Local nTotal    := 0

    //Define a tabela, condi��o e o campo a ser somado
    cTabela   := "SB2"
    cCondicao := "SB2->B2_LOCAL == '01' .And. Left(SB2->B2_COD, 1) == 'F'"
    cCampo    := "SB2->B2_QATU"
    nTotal    := Somar(cTabela, cCondicao, cCampo)

    //Mostra uma mensagem com o resultado
    FWAlertInfo("O resultado � " + cValToChar(nTotal), "Teste Somar")

    FWRestArea(aArea)
Return
