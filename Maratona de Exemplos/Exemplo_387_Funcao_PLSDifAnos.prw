/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/30/transformando-as-linhas-em-colunas-em-um-array-com-pivottable-maratona-advpl-e-tl-386/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe387
Calcula a diferen�a em meses ou anos de dois per�odos
@type Function
@author Atilio
@since 28/03/2023
@obs 
    Fun��o PivotTable
    Par�metros
        Ano inicial para c�lculo
        M�s inicial para c�lculo
        Ano final para c�lculo
        M�s final para c�lculo
        Tipo do retorno (M = em meses; A = em anos;)
    Retorno
        Retorna o n�mero da diferen�a encontrada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe387()
    Local aArea      := FWGetArea()
    Local cAnoIni    := "1993"
    Local cMesIni    := "07"
    Local cAnoFim    := "2023"
    Local cMesFim    := "03"
    Local nDifer     := 0

    //Busca a diferen�a em anos entre duas datas
    nDifer := PLSDifAnos(cAnoIni, cMesIni, cAnoFim, cMesFim, "A")
    FWAlertInfo("A diferen�a em anos � de " + cValToChar(nDifer), "Teste 1 PLSDifAnos")

    //Busca a diferen�a em meses entre duas datas
    nDifer := PLSDifAnos(cAnoIni, cMesIni, cAnoFim, cMesFim, "M")
    FWAlertInfo("A diferen�a em meses � de " + cValToChar(nDifer), "Teste 2 PLSDifAnos")

    FWRestArea(aArea)
Return
