/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/12/buscando-alguma-informacao-da-sx3-com-a-getsx3cache-maratona-advpl-e-tl-288/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe288
Busca um conte�do de uma informa��o da SX3
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815033
@obs 
    
    Fun��o GetSX3Cache
    Par�metros
        + cSX3Campo   , Caractere       , Nome do campo que ser� buscado
        + cCampo      , Caractere       , Nome do campo do dicion�rio
    Retorno
        + uValor      , Indefinido      , Retorna o conte�do do campo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe288()
    Local aArea      := FWGetArea()
    Local cCampo     := "A1_HRCAD"
    Local cMensagem  := ""

    //Busca as informa��es do campo
    cMensagem += "Inic. Padr�o: " + GetSX3Cache(cCampo, "X3_RELACAO") + CRLF
    cMensagem += "Tipo: " + GetSX3Cache(cCampo, "X3_TIPO") + CRLF
    cMensagem += "T�tulo: " + GetSX3Cache(cCampo, "X3_TITULO") + CRLF
    cMensagem += "Contexto: " + GetSX3Cache(cCampo, "X3_CONTEXT")

    //Exibe uma mensagem
    FWAlertInfo(cMensagem, "Teste GetSX3Cache")

    FWRestArea(aArea)
Return
