/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/24/aplicando-a-codificacao-utf-8-com-decodeutf8-e-encodeutf8-maratona-advpl-e-tl-138/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe138
Exemplo para transformar um texto com a codifica��o UTF-8
@type Function
@author Atilio
@since 16/12/2022
@see https://tdn.totvs.com/display/tec/DecodeUTF8 e https://tdn.totvs.com/display/tec/EncodeUTF8
@obs 
    Fun��o DecodeUTF8
    Par�metros
        + cText        , Caractere    , String codificada em UTF-8 que ser� convertida
        + cEncoding    , Caractere    , Indica qual � o encoding do retorno
    Retorno
        + cRet         , Caractere    , Retorna a string convertida

    Fun��o EncodeUTF8
    Par�metros
        + cText        , Caractere    , String que ser� convertida para UTF-8
        + cEnconding   , Caractere    , Indica qual � o enconding original (por padr�o � o cp1252)
    Retorno
        + cRet         , Caractere    , Retorna a string convertida em UTF-8

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe138()
    Local aArea       := FWGetArea()
    Local cTexto      := ""
    Local cEncode     := ""
    Local cDecode     := ""
    Local cMensagem   := ""
    
    //Monta o texto e faz a convers�o
    cTexto := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    cEncode := EncodeUTF8(cTexto,  "cp1252")
    cDecode := DecodeUTF8(cEncode, "cp1252")

    //Monta a mensagem que ser� exibida
    cMensagem := "Texto Original: '" + cTexto + "'" + CRLF + CRLF
    cMensagem += "CP1252 para UTF8: '" + cEncode + "'" + CRLF + CRLF
    cMensagem += "UTF8 para CP1252: '" + cDecode + "'"
    FWAlertInfo(cMensagem, "Exemplo EncodeUTF8 e DecodeUTF8")

    FWRestArea(aArea)
Return
