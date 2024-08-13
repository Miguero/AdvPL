/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/15/atualizando-uma-tabela-atraves-da-x31updtable-maratona-advpl-e-tl-539/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe538
Busca a informa��o de registro �nico da tabela (X2_UNICO)
@type Function
@author Atilio
@since 07/04/2023
@obs 

    Fun��o GetSX2Unico
    Par�metros
        Recebe o alias da tabela que ser� analisada
    Retorno
        Retorna a chave de registro �nico

    Fun��o X2Unique2Index
    Par�metros
        Recebe o alias da tabela que ser� analisada
    Retorno
        Retorna a chave de registro �nico

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe538()
    Local aArea      := FWGetArea()
    Local cTabela    := ""
    Local cChaveUni  := ""

    //Busca a informa��o de chave �nica
    cTabela   := "SE2"
    cChaveUni := GetSX2Unico(cTabela)
    ShowLog("GetSX2Unico: Para a tabela '" + cTabela + "' a chave � '" + cChaveUni + "'")

    //Efetua a busca novamente com outra fun��o
    cTabela   := "SE1"
    cChaveUni := X2Unique2Index(cTabela)
    ShowLog("X2Unique2Index: Para a tabela '" + cTabela + "' a chave � '" + cChaveUni + "'")

    FWRestArea(aArea)
Return
