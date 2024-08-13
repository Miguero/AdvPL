/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/29/buscando-o-conteudo-de-um-bloco-de-codigos-com-a-getcbsource-maratona-advpl-e-tl-265/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe265
Busca o c�digo fonte de um bloco de c�digo (code block)
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetCbSource
@obs 

    Fun��o GetCBSource
    Par�metros
        + bBlocoDeCodigo , Bloco de C�digo  , Indica o bloco de c�digo a ser verificado
    Retorno
        + cRet           , Caractere        , Retorna o c�digo do bloco de c�digo no formato texto
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe265()
    Local aArea      := FWGetArea()
    Local nTotal     := 0
    Local bBloco     := {|| Iif("A" $ Upper(SB1->B1_DESC), nTotal++, Nil)}
    Local cMensagem  := ""

    //Busca o conte�do do bloco de c�digo e exibe
    cMensagem := GetCBSource(bBloco)
    FWAlertInfo(cMensagem, "Teste GetCBSource")

    FWRestArea(aArea)
Return
