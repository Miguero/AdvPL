/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/12/posicionando-no-primeiro-registro-de-um-alias-com-dbgotop-maratona-advpl-e-tl-126/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zExe126
Posiciona no primeiro registro conforme o �ndice usado
@type Function
@author Atilio
@since 14/12/2022
@see https://tdn.totvs.com/display/tec/DBGoTop
@obs 

    Fun��o DbGoTop
    Par�metros
        N�o tem par�metros
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe126()
    Local aArea      := FWGetArea()

    //Abre o cadastro de produtos, ordenando por descri��o
    DbSelectArea("SB1")
    SB1->(DbSetOrder(3)) // B1_FILIAL + B1_DESC + B1_COD

    //Pula 5 registros
    SB1->(DbSkip(5))

    //Posiciona no topo da tabela
    SB1->(DbGoTop())

    //Mostra o �ltimo produto encontrado
    FWAlertInfo("O primeiro produto conforme a descri��o � '" + Alltrim(SB1->B1_DESC) + "'", "Teste DbGoTop")

    FWRestArea(aArea)
Return
