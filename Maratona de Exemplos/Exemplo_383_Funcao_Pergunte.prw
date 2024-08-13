/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/28/convertendo-uma-string-sequencial-com-a-pconvsoma1-maratona-advpl-e-tl-382/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe383
Mostra uma tela de par�metros criados na SX1
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=22479548
@obs 
    Fun��o Pergunte
    Par�metros
        Nome da pergunta criada no configurador
        .T. se ir� exibir a pergunta ou .F. se apenas ir� carregar em mem�ria
    Retorno
        .T. se foi clicado em confirmar ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe383()
    Local aArea      := FWGetArea()

    //Exibe a tela de par�metros cadastrada no X1_GRUPO como A311TES
    If Pergunte("A311TES", .T.)
        FWAlertSuccess("A tela de par�metros foi confirmada", "Teste Pergunte")
    EndIf

    FWRestArea(aArea)
Return
