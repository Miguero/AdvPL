/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/25/decodificando-uma-string-gerada-incremental-com-a-funcao-decodsoma1-maratona-advpl-e-tl-139/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe139
Realiza a convers�o de uma string feita pelo Soma1 (sequencial entre n�meros e caracteres) para o tipo num�rico
@type Function
@author Atilio
@since 16/12/2022
@obs 
    Fun��o DecodSoma1
    Par�metros
        + C�digo da sequencia em Soma1
    Retorno
        + Valor da convers�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe139()
    Local aArea      := FWGetArea()
    Local cSoma1     := ""
    Local nConvert   := 0

    //Faz a convers�o com s� 2 caracteres
    cSoma1   := "9A"
    nConvert := DecodSoma1(cSoma1)
    FWAlertInfo("A string '" + cSoma1 + "' deu o resultado de '" + cValToChar(nConvert) + "'", "Teste 1 do DecodSoma1")

    //Faz a convers�o com 6 caracteres
    cSoma1   := "A147B2"
    nConvert := DecodSoma1(cSoma1)
    FWAlertInfo("A string '" + cSoma1 + "' deu o resultado de '" + cValToChar(nConvert) + "'", "Teste 2 do DecodSoma1")

    FWRestArea(aArea)
Return
