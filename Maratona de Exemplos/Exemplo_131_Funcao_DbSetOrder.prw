/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/17/definindo-um-indice-e-ordenando-um-alias-com-dbsetorder-maratona-advpl-e-tl-131/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe131
Ordena uma tabela conforme o �ndice
@type Function
@author Atilio
@since 15/12/2022
@see https://tdn.totvs.com/display/tec/DBSetOrder
@obs 
    Fun��o DbSetOrder
    Par�metros
        + nOrdem        , Num�rico   , N�mero do �ndice do Alias sendo que a partir da letra A no configurador passa a ser 10 (ent�o B � 11, C � 12, D � 13 e assim por diante)
    Retorno
        N�o possui retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe131()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Usa o �ndice 1
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    
    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice num�rico �: " + cValToChar(SB1->(IndexOrd())) + CRLF
    cMensagem += "E a chave do �ndice �: " + SB1->(IndexKey(IndexOrd())) + CRLF
    FWAlertInfo(cMensagem, "Teste 1 DbSetOrder")





    //Agora usa o �ndice 5
    SB1->(DbSetOrder(5))

    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice num�rico �: " + cValToChar(SB1->(IndexOrd())) + CRLF
    cMensagem += "E a chave do �ndice �: " + SB1->(IndexKey(IndexOrd())) + CRLF
    FWAlertInfo(cMensagem, "Teste 2 DbSetOrder")





    //Agora usa o �ndice "C" (12)
    SB1->(DbSetOrder(12))

    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice num�rico �: " + cValToChar(SB1->(IndexOrd())) + CRLF
    cMensagem += "E a chave do �ndice �: " + SB1->(IndexKey(IndexOrd())) + CRLF
    FWAlertInfo(cMensagem, "Teste 3 DbSetOrder")

    FWRestArea(aArea)
Return
