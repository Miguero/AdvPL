/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/23/convertendo-informacoes-base64-com-as-funcoes-decode64-e-encode64-maratona-advpl-e-tl-137/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe137
Exemplo para transformar um conte�do em Base64 ou des-transformar esse conte�do
@type Function
@author Atilio
@since 15/12/2022
@see https://tdn.totvs.com/display/tec/Decode64 e https://tdn.totvs.com/display/tec/Encode64
@obs 
    Fun��o Decode64
    Par�metros
        + cToConvert   , Caractere    , String codificada em Base64 que ser� convertida
        + cFilePath    , Caractere    , Indica um arquivo para salvar o resultado
        + lChangeCase  , L�gico       , Se .T. pastas e arquivos v�o ficar tudo min�sculo sen�o se for .F. ir� manter o nome recebido
    Retorno
        + cRet         , Caractere    , Retorna a string convertida no formato original

    Fun��o Encode64
    Par�metros
        + cToConvert   , Caractere    , String que ser� convertida para Base64
        + cFilePath    , Caractere    , Indica um arquivo para salvar o resultado
        + lZip         , L�gico       , Se .T. ir� compactar o conte�do antes de transformar sen�o se for .F. n�o ir� compactar nada
        + lChangeCase  , L�gico       , Se .T. pastas e arquivos v�o ficar tudo min�sculo sen�o se for .F. ir� manter o nome recebido
    Retorno
        + cRet         , Caractere    , Retorna a string convertida em Base64

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe137()
    Local aArea      := FWGetArea()
    Local cTxtNormal := "Terminal de Informa��o"
    Local cTxtBase64 := "RGFuaWVsIEF0aWxpbw=="
    Local cResultado := ""

    //Convertendo de string normal para base64
    cResultado := Encode64(cTxtNormal)
    FWAlertInfo("A convers�o de '" + cTxtNormal + "' deu '" + cResultado + "'", "Exemplo Encode64")

    //Convertendo e mostrando o resultado (de hexa para decimal)
    cResultado := Decode64(cTxtBase64)
    FWAlertInfo("A convers�o de '" + cTxtBase64 + "' deu '" + cResultado + "'", "Exemplo Decode64")

    FWRestArea(aArea)
Return
