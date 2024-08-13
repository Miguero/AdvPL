/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/05/convertendo-uma-string-de-uma-codificacao-para-outra-com-a-striconv-maratona-advpl-e-tl-458/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe458
Converte uma string de uma codifica��o para outra
@type Function
@author Atilio
@since 31/03/2023
@see https://tdn.totvs.com/display/tec/STRICONV
@obs 
    Fun��o StrIConv
    Par�metros
        + cText        , Caractere    , Texto a ser analisado
        + fromCodePage , Caractere    , Codifica��o de origem
        + toCodePage   , Caractere    , Codifica��o de destino
    Retorno
        + cRet         , Caractere    , Retorna o texto formatado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe458()
    Local aArea     := FWGetArea()
    Local cTexto    := ""
    Local cNovo     := ""

    //Monta as informa��es e aciona a remo�a� de caracteres
    cTexto    := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    cNovo     := StrIConv(cTexto, "CP1252", "UTF-8")

    //Exibe a mensagem
    FWAlertInfo(cNovo, "Teste de StrIConv")

    FWRestArea(aArea)
Return
