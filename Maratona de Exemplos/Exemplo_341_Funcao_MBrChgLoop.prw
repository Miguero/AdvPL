/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/07/pegando-o-valor-maximo-e-minimo-entre-dois-valores-com-max-e-min-maratona-advpl-e-tl-340/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe341
Ativa recurso para que cada inclus�o acione a tela novamente (similar ao recurso que existe em MVC)
@type Function
@author Atilio
@since 22/03/2023
@obs 

    Fun��o MBrChgLoop
    Par�metros
        .T. se quiser ativar recurso em Loop e .F. se n�o quiser
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe341()
	Local aArea   := FWGetArea()
    Local aCores  := {}
	Private aRotina := MenuDef()
	Private cCadastro := "Grupo de Produtos"

    aAdd(aCores, {"SBM->BM_PROORI == '1'", "BR_PRETO"})
    aAdd(aCores, {"SBM->BM_PROORI == '0'", "BR_VERMELHO"})
    aAdd(aCores, {"EMPTY(SBM->BM_PROORI)", "BR_BRANCO"})

    //Ativa o recurso para funcionar em Loop
    MBrChgLoop(.T.)

    //Faz a abertura da tela
    mBrowse(1, 1, , , 'SBM', , , , , , aCores)

	FWRestArea(aArea)
Return

Static Function MenuDef()
	Local aRotina := {}

	//Adicionando opcoes do menu
	aAdd(aRotina, {"Pesquisar", "AXPESQUI", 0, 1})
	aAdd(aRotina, {"Visualizar", "AXVISUAL", 0, 2})
	aAdd(aRotina, {"Incluir", "AXINCLUI", 0, 3})
	aAdd(aRotina, {"Alterar", "AXALTERA", 0, 4})
	aAdd(aRotina, {"Excluir", "AXDELETA", 0, 5})

Return aRotina
