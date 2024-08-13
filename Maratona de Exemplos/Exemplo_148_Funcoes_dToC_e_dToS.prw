/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/02/convertendo-data-para-caractere-com-as-funcoes-dtoc-e-dtos-maratona-advpl-e-tl-148/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe148
Converte data para texto "DD/MM/YYYY" ou "YYYYMMDD"
@type Function
@author Atilio
@since 16/12/2022
@see https://tdn.totvs.com/display/tec/DToC e https://tdn.totvs.com/display/tec/DToS
@obs 
    Fun��o dToC
    Par�metros
        + dData        , Data         , Indica a data que ser� convertida
    Retorno
        + cRet         , Caractere    , etorna a data no formato "DD/MM/YYYY"

    Fun��o dToS
    Par�metros
        + dData        , Data         , Indica a data que ser� convertida
    Retorno
        + cRet         , Caractere    , Retorna a data no formato "YYYYMMDD"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe148()
    Local aArea       := FWGetArea()
    Local dDataRef    := Date()
    Local cData1      := ""
    Local cData2      := ""
    Local cMensagem   := ""

    //Faz as convers�es
    cData1 := dToC(dDataRef)
    cData2 := dToS(dDataRef)

    //Monta a mensagem e exibe
    cMensagem := "Data Atual: " + dToC(dDataRef) + CRLF + CRLF
    cMensagem += "Data (DD/MM/YYYY): " + cData1 + CRLF
    cMensagem += "Data (YYYYMMDD): " + cData2
    FWAlertInfo(cMensagem, "Teste com dToC e dToS")

    FWRestArea(aArea)
Return
