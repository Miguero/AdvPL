/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/06/buscando-informacoes-da-ultima-query-executada-com-a-getlastquery-maratona-advpl-e-tl-277/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe276
Faz um backup das teclas de atalho em mem�ria e depois retorna
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetFuncArray
@obs 

    Fun��o GetKeys
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna o backup das teclas de atalho do F1 ao F12

    Fun��o RestKeys
    Par�metros
        Recebe um array com o backup realizado
    Retorno
        N�o tem retorno
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe276()
    Local aArea    := FWGetArea()
    Local aAtalhos := {}

    //Busca os atalhos em mem�ria
    aAtalhos := GetKeys()

    FWAlertInfo("Suas customiza��es...", "Teste de GetKeys e RestKeys")

    //Retorna os atalhos
    RestKeys(aAtalhos)

    FWRestArea(aArea)
Return


/*/{Protheus.doc} User Function nomeFunction
Ponto de entrada para adicionar op��es no menu do cadastro de produtos
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=370617549
/*/

User Function MTA010MNU()
    Local aArea := GetArea()
    
    //Adicionando uma fun��o no menu principal
    aAdd(aRotina, {"* Testar Atalhos", "u_zExe276()", 0, 2, 0, NIL})
    
    RestArea(aArea)
Return
