/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/24/quebrando-um-texto-em-um-array-com-separa-strtokarr-e-strtokarr2-maratona-advpl-e-tl-435/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe435
Retorna o numero da semana do m�s / dia
@type Function
@author Atilio
@since 30/03/2023
@see https://tdn.totvs.com/display/tec/StrTokArr e https://tdn.totvs.com/display/tec/StrTokArr2
@obs 
    Fun��o Separa
    Par�metros
        Recebe a string com separadores
        Recebe o token para fazer a separa��o
    Retorno
        Array com os elementos separados (considerando posi��es vazias)

    Fun��o StrTokArr
    Par�metros
        + cValue     , Caractere   , Recebe a string com separadores
        + cToken     , Caractere   , Recebe o token para fazer a separa��o
    Retorno
        + aRet       , Array       , Array com os elementos separados conforme par�metros informados

    Fun��o StrTokArr2
    Par�metros
        + cValue     , Caractere   , Recebe a string com separadores
        + cToken     , Caractere   , Recebe o token para fazer a separa��o
        + lEmptyStr  , L�gico      , Define se ir� considerar posi��es vazias
    Retorno
        + aRet       , Array       , Array com os elementos separados conforme par�metros informados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe435()
    Local aArea     := FWGetArea()
    Local cFrase    := ""
    Local cQuebra   := ""
    Local aDadosSep := {}
    Local aDadosSt1 := {}
    Local aDadosSt2 := {}
    Local cMensagem := ""

    //Define um texto que ter� separa��es e sua respectiva quebra
    cFrase  := "Daniel;Jo�o;Maria;;Jos�;"
    cQuebra := ";"

    //Aciona os 3 tipos de separa��es
    aDadosSep := Separa(cFrase, cQuebra)
    aDadosSt1 := StrTokArr(cFrase, cQuebra)
    aDadosSt2 := StrTokArr2(cFrase, cQuebra, .T.)

    //Monta a mensagem e exibe
    cMensagem := "Separa deu [" + cValToChar(Len(aDadosSep)) + "] elemento(s)" + CRLF
    cMensagem += "StrTokArr deu [" + cValToChar(Len(aDadosSt1)) + "] elemento(s)" + CRLF
    cMensagem += "StrTokArr2 deu [" + cValToChar(Len(aDadosSt2)) + "] elemento(s)" + CRLF
    FWAlertInfo(cMensagem, "Teste de Separa, StrTokArr e StrTokArr2")

    FWRestArea(aArea)
Return
