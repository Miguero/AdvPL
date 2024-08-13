/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/08/pegando-parte-de-uma-string-com-substr-e-substring-maratona-advpl-e-tl-465/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe465
Calcula o total de horas entre duas datas e hor�rios
@type Function
@author Atilio
@since 02/04/2023
@see https://tdn.totvs.com/display/tec/SubStr
@obs
    Fun��o SubStr
    Par�metros
        + cText      , Caractere      , String a ser verificada
        + nIndex     , Num�rido       , Posi��o inicial a ser considerada
        + nLen       , Num�rico       , Quantidade caracteres a serem considerados (opcional)
    Retorno
        + cRet       , Caractere      , Retorna parte da string conforme os par�metros informados

    Fun��o SubString
    Par�metros
        String a ser verificada
        Posi��o inicial a ser considerada
        Quantidade caracteres a serem considerados (obrigat�rio)
    Retorno
        Retorna parte da string conforme os par�metros informados

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe465()
    Local aArea     := FWGetArea()
    Local cNome     := "Daniel Atilio"
    Local cMensagem := ""

    //Utilizando SubStr
    cMensagem := "A partir da posi��o 8: "             + SubStr(cNome, 8)                + CRLF
    cMensagem += "Da posi��o 8 at� o restante: "       + SubStr(cNome, 8, Len(cNome))    + CRLF
    cMensagem += "Da posi��o 1 pegando 3 caracteres: " + SubStr(cNome, 1, 3)             + CRLF
    cMensagem += "Da posi��o 8 pegando 4 caracteres: " + SubStr(cNome, 8, 4)             + CRLF
    FWAlertInfo(cMensagem, "Teste SubStr")

    //Utilizando SubString
    cMensagem := "Da posi��o 8 at� o restante: "       + SubString(cNome, 8, Len(cNome))    + CRLF
    cMensagem += "Da posi��o 1 pegando 3 caracteres: " + SubString(cNome, 1, 3)             + CRLF
    cMensagem += "Da posi��o 8 pegando 4 caracteres: " + SubString(cNome, 8, 4)             + CRLF
    FWAlertInfo(cMensagem, "Teste SubString")

    FWRestArea(aArea)
Return
