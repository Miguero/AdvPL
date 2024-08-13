/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/10/posicionando-no-final-de-um-alias-com-dbgobottom-maratona-advpl-e-tl-124/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe124
Posiciona no �ltimo registro conforme o �ndice usado
@type Function
@author Atilio
@since 14/12/2022
@see https://tdn.totvs.com/display/tec/DBGoBottom
@obs 

    Fun��o DbGoBottom
    Par�metros
        N�o tem par�metros
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe124()
    Local aArea      := FWGetArea()

    //Abre o cadastro de produtos, ordenando por descri��o
    DbSelectArea("SB1")
    SB1->(DbSetOrder(3)) // B1_FILIAL + B1_DESC + B1_COD

    //Posiciona no final da tabela
    SB1->(DbGoBottom())

    //Mostra o �ltimo produto encontrado
    FWAlertInfo("O �ltimo produto conforme a descri��o � '" + Alltrim(SB1->B1_DESC) + "'", "Teste DbGoBottom")

    FWRestArea(aArea)
Return
