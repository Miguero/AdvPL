/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/05/buscando-o-nome-do-ambiente-com-a-getenvserver-maratona-advpl-e-tl-274/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe275
Busca informa��es de uma fun��o (ou de v�rias dependendo da m�scara)
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetFuncArray
@obs 

    Fun��o GetFuncArray
    Par�metros
        + cMascara  , Caractere    , Nome da m�scara de pesquisa
        + aTipo     , Array        , Tipos de arquivos
        + aArquivo  , Array        , Nome dos arquivos
        + aLinha    , Array        , Linha da compila��o das fun��es
        + aData     , Array        , Data da modifica��o dos arquivos
        + aHora     , Array        , Hora da modifica��o dos arquivos
    Retorno
        + aScr      , Array        , Retorna um array que cont�m o nome das fun��es
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe275()
    Local aArea   := FWGetArea()
    Local cFuncao := "MATA???"
    Local cTexto  := ""
    Local nAtual  := 0
    Local aRet    := {}
    Local aType   := {}
    Local aFile   := {}
    Local aLine   := {}
    Local aDate   := {}
    Local aTime   := {}

    //Busca as informa��es da fun��o
    aRet := GetFuncArray(cFuncao, @aType, @aFile, @aLine, @aDate, @aTime)
    For nAtual := 1 To Len(aRet)
        cTexto += "Fun��o "    + cValtoChar(nAtual) + "= " + aRet[nAtual] + CRLF
        cTexto += "> Arquivo " + cValtoChar(nAtual) + "= " + aFile[nAtual] + CRLF
        cTexto += "> Linha "   + cValtoChar(nAtual) + "= " + aLine[nAtual] + CRLF
        cTexto += "> Tipo "    + cValtoChar(nAtual) + "= " + aType[nAtual] + CRLF
        cTexto += "> Data "    + cValtoChar(nAtual) + "= " + dToC(aDate[nAtual]) + CRLF
        cTexto += "> Hora "    + cValtoChar(nAtual) + "= " + aTime[nAtual] + CRLF
        cTexto += CRLF + CRLF
    Next

    //Exibe o que encontrou
    ShowLog(cTexto)

    FWRestArea(aArea)
Return
