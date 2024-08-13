/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/22/buscando-o-numero-da-thread-atraves-da-threadid-maratona-advpl-e-tl-493/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe493
Retorna o n�mero da Thread da conex�o atual
@type Function
@author Atilio
@since 04/04/2023
@see https://tdn.totvs.com/display/tec/ThreadID
@obs 

    ThreadID
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + nRet        , Num�rico     , Retorna o n�mero da Thread

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe493()
    Local aArea      := FWGetArea()
    Local nID        := 0

    //Busca a thread
    nID := ThreadID()

    //Mostra uma mensagem
    FWAlertInfo("A thread da conex�o atual �: " + cValToChar(nID), "Teste ThreadID")

    FWRestArea(aArea)
Return
