/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/11/criptografando-strings-atraves-das-webencript-e-embaralha-maratona-advpl-e-tl-530/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe530
Criptografa ou descriptografa uma string (usando criptografia web ou embaralhamento de caracteres)
@type Function
@author Atilio
@since 07/04/2023
@see https://tdn.totvs.com/display/tec/WebEncript e https://tdn.totvs.com/display/tec/Embaralha
@obs 

    Fun��o WebEncript
    Par�metros
        + cContent   , Caractere    , Texto a ser avaliado
        + lDecript   , L�gico       , .T. para descriptografar ou .F. para criptografar
        + lUseInJava , L�gico       , .T. quando for usado em alguma valida��o em Java
    Retorno
        + cRet       , Caractere    , Retorna a string conforme os par�metros informados

    Fun��o Embaralha
    Par�metros
        + cTexto     , Caractere    , Texto a ser avaliado
        + nTipo      , Num�rico     , 0 para embaralhar ou 1 para desembaralhar
    Retorno
        + cRet       , Caractere    , Retorna a string conforme os par�metros informados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe530()
    Local aArea      := FWGetArea()
    Local cWebNormal := ""
    Local cWebCript  := ""
    Local cTxtNormal := ""
    Local cTxtEmbar  := ""
    Local cMensagem  := ""

    //Define um texto normal e um j� encriptado
    cWebNormal := "Daniel Atilio"
    cWebCript  := "V�k-ܰ�+�7���k,ư�"
    
    //Monta uma mensagem e exibe
    cMensagem := "O texto '" + cWebNormal + "' cripotografado �: " + WebEncript(cWebNormal, .F.) + CRLF + CRLF
    cMensagem += "J� o critografado '" + cWebCript + "' �: " + WebEncript(cWebCript, .T.)
    FWAlertInfo(cMensagem, "Teste WebEncript")


    //Define um texto normal e um j� embaralhado
    cTxtNormal := "Daniel Atilio"
    cTxtEmbar  := "n mTaIaeln�r f�mdooier"

    //Monta a mensagem e exibe
    cMensagem := "O texto '" + cTxtNormal + "' embaralhado �: " + Embaralha(cTxtNormal, 0) + CRLF + CRLF
    cMensagem += "J� o embaralhado '" + cTxtEmbar + "' �: " + Embaralha(cTxtEmbar, 1)
    FWAlertInfo(cMensagem, "Teste Embaralha")


    FWRestArea(aArea)
Return
