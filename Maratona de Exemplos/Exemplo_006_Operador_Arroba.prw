/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/14/operador-para-passagem-de-parametro-por-referencia-maratona-advpl-e-tl-006/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe006
Exemplo de como utilizar o operador @ (Arroba), passando uma vari�vel por refer�ncia (similar a um ponteiro)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Especiais
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe006()
    Local aArea   := FWGetArea()
    Local cTexto1 := "Daniel"
    Local cTexto2 := "Atilio"

    //Aciona a fun��o est�tica
    fTrocaTxt(cTexto1, @cTexto2)

    //Mostrando como ficaram as vari�veis
    FWAlertInfo("Vari�veis - cTexto1: " + cTexto1 + ", cTexto2: " + cTexto2, "Exemplo de passagem por refer�ncia")

    FWRestArea(aArea)
Return

Static Function fTrocaTxt(cVar01, cVar02)
    cVar01 := "aaa"
    cVar02 := "bbb"
Return
