/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/04/adicionando-aspas-nos-extremos-de-uma-string-com-a-putaspas-maratona-advpl-e-tl-395/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe394
Retorna o nome dos processos na pilha de chamadas
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/ProcName
@obs 

    Fun��o ProcName
    Par�metros
        + nAtivacao    , Num�rico      , N�mero do processo (iniciando com 0 de Atual)
    Retorno
        + cRet         , Caractere     , Nome do processo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe394()
    Local aArea     := FWGetArea()
    Local nAtual    := 0
    Local cProcAtu  := ""
    Local cMensagem := ""

    //Enquanto for verdadeiro
    While .T.
        //Busca o nome do processo atual
        cProcAtu  := ProcName(nAtual)

        //Se existir, incrementa a mensagem
        If ! Empty(cProcAtu)
            cMensagem += "#" + StrZero(nAtual, 4) + " - " + cProcAtu + CRLF

        //Sen�o, encerra o la�o
        Else
            Exit
        EndIf

        //Incrementa o contador dos processos
        nAtual++
    EndDo

    //Exibe os processos encontrados
    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
