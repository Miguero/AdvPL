/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/10/buscando-a-versao-do-rpo-com-a-getrporelease-maratona-advpl-e-tl-285/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe284
Buscando informa��es do remote
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetRmtInfo
@obs 
    
    Fun��o GetRmtInfo
    Par�metros
        N�o tem par�metros
    Retorno
        + aRet        , Array       , Retorna um array com detalhes do computador e SmartClient

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe284()
    Local aArea      := FWGetArea()
    Local aInfo      := {}
    Local cMensagem  := ""

    //Busca as informa��es da m�quina
    aInfo := GetRmtInfo()

    //Monta a mensagem e exibe
    cMensagem += "Nome Computador:  " + aInfo[01] + CRLF
    cMensagem += "S.O.:             " + aInfo[02] + CRLF
    cMensagem += "Inf. Adicional:   " + aInfo[03] + CRLF
    cMensagem += "Mem. Fisica:      " + aInfo[04] + CRLF
    cMensagem += "Nr.Processadores: " + aInfo[05] + CRLF
    cMensagem += "MHz Processador:  " + aInfo[06] + CRLF
    cMensagem += "Descr. Process.:  " + aInfo[07] + CRLF
    cMensagem += "Linguagem:        " + aInfo[08] + CRLF
    cMensagem += "Navegador:        " + aInfo[09] + CRLF
    cMensagem += "Android ou iOS:   " + aInfo[10] + CRLF
    cMensagem += "Arquitetura:      " + aInfo[11] + CRLF
    cMensagem += "Est�t. ou Dinam:  " + aInfo[12] + CRLF
    cMensagem += "Pasta do execut:  " + aInfo[13]
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
