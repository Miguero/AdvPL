/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/06/substituindo-parte-de-uma-string-com-strtran-maratona-advpl-e-tl-461/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe461
Substitui parte de uma string por outra
@type Function
@author Atilio
@since 02/04/2023
@see https://tdn.totvs.com/display/tec/StrTran
@obs 
    Fun��o StrTran
    Par�metros
        + cString   , Caractere    , String que ser� analisada
        + cSearch   , Caractere    , Trecho que ser� pesquisado
        + cReplace  , Caractere    , Trecho que ir� substituir o pesquisado
        + nStart    , Num�rico     , Indica a partir de qual recorr�ncia ocorrer� a substitui��o
        + nCount    , Num�rico     , Indica o n�mero de substitui��es a fazer
    Retorno
        + cRet      , Caractere    , A string com as partes substituidas

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe461()
    Local aArea  := FWGetArea()
    Local cTexto := "A aranha arranha a r�. A r� arranha a aranha. Nem a aranha arranha a r�. Nem a r� arranha a aranha."
    Local cNovo  := ""

    //Substitui toda letra "a" min�scula por "-o-"
    cNovo := StrTran(cTexto, "a", "-o-")
    FWAlertInfo(cNovo, "Teste 1 StrTran")

    //Substitui toda letra "a" min�scula por "-o-" somente a partir da 20� recorr�ncia
    cNovo := StrTran(cTexto, "a", "-o-", 20)
    FWAlertInfo(cNovo, "Teste 2 StrTran")

    FWRestArea(aArea)
Return
