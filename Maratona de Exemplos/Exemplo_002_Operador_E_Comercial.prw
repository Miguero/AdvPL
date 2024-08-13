/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/08/10/operador-de-macro-substituicao-maratona-advpl-e-tl-002/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe002
Exemplo de como utilizar o operador & (E Comercial), para fazer uma macro execu��o / substitui��o
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/pages/viewpage.action?pageId=6063087
@obs
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe002()
    Local aArea  := FWGetArea()
    Local nVar   := 10
    Local cTeste := "'Aaaa' + 'Bbbb'"
    Local cProgr := "FWAlertInfo"
    
    //Mostrando o conte�do da vari�vel com macro execu��o
    FWAlertInfo(&cTeste, "& Apenas vari�vel")

    //Executando uma fun��o
    &cProgr.("Atilio Sistemas", "& Apenas programa")

    //Executando uma express�o inteira
    &("FWAlertInfo('Mensagem de Teste', '& Express�o inteira')")

    FWRestArea(aArea)
Return
