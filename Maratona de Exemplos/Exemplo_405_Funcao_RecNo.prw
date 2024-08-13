/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/09/buscando-o-numero-do-recno-de-um-registro-com-a-recno-maratona-advpl-e-tl-405/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe405
Busca o registro atual posicionado na tabela
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/tec/Recno
@obs 
    Fun��o RecNo
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + nRec       , Num�rico      , Retorna o n�mero do registro atual da tabela

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe405()
    Local aArea     := FWGetArea()
    Local nRecNo    := 0

    //Busca o registro posicionado e mostra
    nRecno := SB1->(RecNo())
    FWAlertInfo("O registro posicionado � " + cValToChar(nRecNo), "Teste RecNo")

    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function nomeFunction
Ponto de entrada para adicionar op��es no menu do cadastro de produtos
@type  Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=370617549
/*/

User Function MTA010MNU()
    Local aArea := FWGetArea()
    
    //Adicionando uma fun��o no menu principal
    aAdd(aRotina, {"* Testar RecNo", "u_zExe405()", 0, 2, 0, NIL})
    
    FWRestArea(aArea)
Return
