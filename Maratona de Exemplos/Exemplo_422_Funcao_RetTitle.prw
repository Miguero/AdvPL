/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/18/buscando-o-titulo-de-um-campo-atraves-da-rettitle-maratona-advpl-e-tl-422/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe422
Retorna o t�tulo de um campo conforme a SX3
@type Function
@author Atilio
@since 29/03/2023
@obs 
    Fun��o RetTitle
    Par�metros
        Recebe o nome do campo
        Tamanho a se considerar do retorno (por exemplo trazer apenas as 5 primeiras letras)
        Define se ir� restaurar a posi��o que estava da SX3 (.T. ou .F.)
    Retorno
        Retorna uma string com o t�tulo do campo conforme o idioma

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe422()
    Local aArea      := FWGetArea()
    Local cCampo     := ""
    Local cTitulo    := ""

    //Buscando o t�tulo de um campo
    cCampo     := "A1_RECISS"
    cTitulo    := RetTitle(cCampo)
    FWAlertInfo("O titulo do campo '" + cCampo + "' � '" + cTitulo + "'", "Teste RetTitle")

    FWRestArea(aArea)
Return
