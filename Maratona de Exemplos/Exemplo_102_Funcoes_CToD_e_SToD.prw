/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/18/convertendo-texto-para-data-com-as-funcoes-ctod-e-stod-maratona-advpl-e-tl-102/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe102
Exemplo de como converter conte�dos em string para o tipo Data
@type Function
@author Atilio
@since 12/12/2022
@see https://tdn.totvs.com/display/tec/CToD e https://tdn.totvs.com/display/tec/SToD
@obs 
    Fun��o CToD
    Par�metros
        + cData         , Caractere    , Texto com a data no formato "DD/MM/YYYY" ou "DD/MM/YY"
    Retorno
        + dRet          , Array        , Retorna a data convertida

    Fun��o SToD
    Par�metros
        + cData         , Caractere    , Texto com a data no formato "YYYYMMDD"
    Retorno
        + dRet          , Array        , Retorna a data convertida

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe102()
    Local aArea     := FWGetArea()
    Local dData1
    Local dData2
    Local dData3

    //Monta as vari�veis do tipo Data
    dData1 := CToD("12/07/1993")
    dData2 := SToD("19930712")
    dData3 := SToD("")

    //Exibe uma mensagem
    FWAlertInfo("Datas convertidas", "Teste CToD e SToD")

    FWRestArea(aArea)
Return
