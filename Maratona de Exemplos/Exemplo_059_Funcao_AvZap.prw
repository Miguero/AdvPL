/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/06/excluindo-os-dados-de-uma-tabela-com-a-funcao-avzap-maratona-advpl-e-tl-059/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe059
Exemplo de fun��o que executa o ZAP (limpeza) em uma tabela do Protheus apagando todos os dados
@type Function
@author Atilio
@since 05/12/2022
@obs 
    Fun��o AvZap
    Par�metros
        + Alias da Tabela que ter� os dados apagados
    Retorno
        + .T. em caso de sucesso ou .F. em caso de falha

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe059()
    Local aArea      := FWGetArea()
    Local cTable     := "ZD4990"
    Local cTabAlias  := "ZD4"

    //Tenta executar o zap na tabela
    USE (cTable) ALIAS (cTabAlias) EXCLUSIVE NEW VIA "TOPCONN"
    If (cTabAlias)->(AvZap())
        FWAlertSuccess("Limpeza executada com sucesso!", "Teste AvZap")
    Else
        FWAlertError("N�o foi poss�vel excluir os dados da tabela, ela pode estar em uso!", "Teste AvZap")
    EndIf

    FWRestArea(aArea)
Return
