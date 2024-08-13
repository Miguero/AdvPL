/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/24/buscando-o-numero-da-semana-com-a-semanadia-maratona-advpl-e-tl-434/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe434
Retorna o numero da semana do m�s / dia
@type Function
@author Atilio
@since 30/03/2023
@obs 
    Fun��o SemanaDia
    Par�metros
        Data de Refer�ncia para verifica��o
        .F. se ir� retornar como texto por extenso ou .T. se ir� retornar o n�mero da semana e do dia
    Retorno
        Array com as inforam��es conforme os par�metros passados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe434()
    Local aArea    := FWGetArea()
    Local dDataRef := Date()
    Local aDados   := {}

    //Busca se � a primeira, segunda, terceira, etc dia da semana do m�s
    aDados := SemanaDia(dDataRef, .F.)
    FWAlertInfo(aDados[1], "Teste SemanaDia com .F.")

    //Busca o n�mero da semana e o n�mero do dia atual
    aDados := SemanaDia(dDataRef, .T.)
    FWAlertInfo("Semana: " + cValToChar(aDados[1]) + " ; Dia da Semana: " + cValToChar(aDados[2]), "Teste SemanaDia com .T.")

    FWRestArea(aArea)
Return
