/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/07/definindo-se-um-mbrowse-ira-executar-acao-em-loop-com-mbrchgloop-maratona-advpl-e-tl-341/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe340
Pega o valor minimo entre dois valores e o m�ximo entre dois valores
@type Function
@author Atilio
@since 12/03/2023
@see https://tdn.totvs.com/display/tec/Min e https://tdn.totvs.com/display/tec/Max
@obs 

    Fun��o Min
    Par�metros
        + xExp1     , Indefinido      , Primeiro valor a ser comparado
        + xExp2     , Indefinido      , Segundo valor a ser comparado
    Retorno
        + xMenor    , Indefinido      , Retorna o menor valor

    Fun��o Max
    Par�metros
        + xExp1     , Indefinido      , Primeiro valor a ser comparado
        + xExp2     , Indefinido      , Segundo valor a ser comparado
    Retorno
        + xMaior    , Indefinido      , Retorna o maior valor

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe340()
    Local aArea     := FWGetArea()
    Local nValor1   := 5
    Local nValor2   := 2
    Local dData1    := sToD("20230304")
    Local dData2    := sTod("20230310")
    Local cMensagem := ""

    //Monta a mensagem, buscando o menor e maior valor entre as datas e n�meros
    cMensagem += "Num�rico" + CRLF
    cMensagem += "Menor: " + cValToChar( Min(nValor1, nValor2) ) + CRLF
    cMensagem += "Maior: " + cValToChar( Max(nValor1, nValor2) ) + CRLF
    cMensagem += CRLF
    cMensagem += "Data" + CRLF
    cMensagem += "Menor: " + cValToChar( Min(dData1, dData2) ) + CRLF
    cMensagem += "Maior: " + cValToChar( Max(dData1, dData2) )
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
