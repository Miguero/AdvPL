/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/12/pegando-informacoes-basicas-de-um-campo-atraves-da-getsx3info-maratona-advpl-e-tl-289/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe289
Busca um conte�do de uma informa��o da SX3
@type  Function
@author Atilio
@since 21/02/2023
@obs 
    
    Fun��o GetSX3Info
    Par�metros
        Recebe o nome do campo
    Retorno
        Retorna um array com informa��es do campo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe289()
    Local aArea      := FWGetArea()
    Local cCampo     := "A1_HRCAD"
    Local cMensagem  := ""
    Local aDados     := {}

    //Busca as informa��es do campo
    aDados := GetSX3Info(cCampo)
    cMensagem += "T�tulo: "  + aDados[1] + CRLF
    cMensagem += "Tipo: "    + aDados[2] + CRLF
    cMensagem += "Tamanho: " + cValToChar(aDados[3]) + CRLF
    cMensagem += "Decimal: " + cValToChar(aDados[4]) 

    //Exibe uma mensagem
    FWAlertInfo(cMensagem, "Teste GetSX3Info")

    FWRestArea(aArea)
Return
