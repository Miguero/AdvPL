/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/23/formatando-um-texto-com-formatstr-maratona-advpl-e-tl-191/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe190
Cria um texto com separa��es (como por ponto e virgula) deixando no formato para usar em queries SQL
@type Function
@author Atilio
@since 21/12/2022
@obs 
    Fun��o FormatIn
    Par�metros
        + String original com as separa��es (seja ponto virgula; pipe; virgula; etc)
        + Define qual ser� o caractere separador
        + Define se ir� pular mais caracteres ap�s o separador
        + Usado exclusivamente com queries do MV_CARTEIR
    Retorno
        + Retorna o texto formatado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe190()
    Local aArea     := FWGetArea()
    Local cTipos    := ""
    Local cTextoIn  := ""
    Local cQryAux   := ""

    //Definindo os tipos que ser�o filtrados com ponto e v�rgula
    cTipos   := "MP;PI;PA;MO"

    //Quebrando o texto, conforme o ponto e v�rgula
    cTextoIn := FormatIn(cTipos, ";")

    //Montando a query, juntando com o texto j� formatado
    cQryAux := " SELECT " + CRLF
    cQryAux += "     B1_COD, " + CRLF
    cQryAux += "     B1_DESC " + CRLF
    cQryAux += " FROM " + CRLF
    cQryAux += "     " + RetSQLName('SB1') + " SB1 " + CRLF
    cQryAux += " WHERE " + CRLF
    cQryAux += "     B1_FILIAL = '" + FWxFilial('SB1') + "' " + CRLF
    cQryAux += "     AND SB1.D_E_L_E_T_ = ' ' " + CRLF
    cQryAux += "     AND B1_TIPO IN " + cTextoIn + " " + CRLF
    FWAlertInfo(cQryAux, "Teste de FormatIn")

    FWRestArea(aArea)
Return
