/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/23/buscando-o-texto-numeral-de-um-valor-com-a-funcao-numeral-maratona-advpl-e-tl-372/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe372
Retorna o nome numeral de um valor (at� 100)
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o Numeral
    Par�metros
        Recebe o valor num�rico (inteiro)
    Retorno
        Retorna o nome numeral desse valor (ex.: primeiro; segundo; terceiro; quarto; etc...)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe372()
    Local aArea     := FWGetArea()
    Local nValor    := 0
    Local cTexto    := ""

    //Define o valor e busca o numeral dele
    nValor  := 5
    cTexto  := Numeral(nValor)
    FWAlertInfo("O valor '" + cValToChar(nValor) + "' � o numeral '" + cTexto + "'", "Teste 1 Numeral")

    //Define o valor e busca o numeral dele
    nValor  := 83
    cTexto  := Numeral(nValor)
    FWAlertInfo("O valor '" + cValToChar(nValor) + "' � o numeral '" + cTexto + "'", "Teste 2 Numeral")
 
    FWRestArea(aArea)
Return
