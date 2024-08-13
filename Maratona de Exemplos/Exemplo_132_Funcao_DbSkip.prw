/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/18/pulando-registros-com-a-funcao-dbskip-maratona-advpl-e-tl-132/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe132
Pula registros de um alias
@type Function
@author Atilio
@since 15/12/2022
@see https://tdn.totvs.com/display/tec/DBSkip
@obs 
    Fun��o DbSkip
    Par�metros
        + nReg        , Num�rico   , Quantidade de registros a pular (se n�o for informado nada, ser� 1)
    Retorno
        N�o possui retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe132()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Usa o �ndice 3
    DbSelectArea("SB1")
    SB1->(DbSetOrder(3)) // Filial + Descri��o + C�digo
    SB1->(DbGoTop())
    cMensagem := "Come�ou a rotina, no produto: " + SB1->B1_DESC + CRLF + CRLF


    //Pula 5 registros
    SB1->(DbSkip(5))
    cMensagem += "+ Pulou 5 registros (para frente), foi para: " + SB1->B1_DESC + CRLF


    //Volta 2 registros
    SB1->(DbSkip(-3))
    cMensagem += "+ Pulou 3 registros (para tr�s), foi para: " + SB1->B1_DESC + CRLF


    //Pula apenas 1 registro
    SB1->(DbSkip())
    cMensagem += "+ Pulou 1 registro (para frente), foi para: " + SB1->B1_DESC + CRLF

    //Exibe a mensagem
    FWAlertInfo(cMensagem, "Teste DbSkip")

    FWRestArea(aArea)
Return
