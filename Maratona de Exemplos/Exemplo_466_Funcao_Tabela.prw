/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/09/busca-nomes-dos-campos-de-uma-tabela-com-a-tablefields-maratona-advpl-e-tl-467/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe466
Fun��o para trazer a descri��o de um registro de uma tabela gen�rica (SX5)
@type Function
@author Atilio
@since 02/04/2023
@obs 
    Tabela
    Par�metros
        Nome da Tabela Gen�rica
        Chave da Tabela Gen�rica
        .T. se ir� exibir mensagem de erro caso n�o encontre ou .F. se n�o
    Retorno
        Descri��o do registro na SX5

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe466()
    Local aArea      := FWGetArea()
    Local cTpProd    := ""
    Local cDescTp    := ""

    //Efetua a busca na tabela gen�rica "02" com a chave "PI"
    cTpProd := "PI"
    cDescTp := Tabela("02", cTpProd, .F.)
    FWAlertInfo("O resultado �: " + cDescTp, "Teste 1 - Tabela")

    //Efetua a busca na tabela gen�rica "02" com a chave "XX" (que n�o existe)
    cTpProd := "XX"
    cDescTp := Tabela("02", cTpProd, .T.)
    If ! Empty(cDescTp)
        FWAlertInfo("O resultado �: " + cDescTp, "Teste 2 - Tabela")
    EndIf

    FWRestArea(aArea)
Return
