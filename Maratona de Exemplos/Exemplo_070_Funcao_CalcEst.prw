/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/17/buscando-o-saldo-de-um-produto-atraves-da-funcao-calcest-maratona-advpl-e-tl-070/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe070
Exemplo para retornar o saldo do estoque de um produto
@type Function
@author Atilio
@since 06/12/2022
@see https://centraldeatendimento.totvs.com/hc/pt-br/articles/4880693700375-Cross-Segmento-Backoffice-Linha-Protheus-SIGAEST-Fun%C3%A7%C3%A3o-CalcEst-
@obs 
    Fun��o CalcEst
    Par�metros
        + cCod           , Caractere     , C�digo do Produto
        + cLocal         , Caractere     , C�digo do Armaz�m
        + dData          , Data          , Data a computar o saldo
        + cFilAux        , Caractere     , Filial (par�metro em desuso)
        + lConsTesTerc   , L�gico        , .T. se considera poder de terceiros ou .F. se n�o
        + lCusRep        , L�gico        , .T. se considera custo de reposi��o ou .F. se n�o
    Retorno
        + aSaldo         , Array         , Array contendo os dados encontrados (verificar as posi��es abaixo)

    Posi��es do aSaldo:
    aSaldo[01] : Quantidade
	aSaldo[02] : Valor Moeda 1
	aSaldo[03] : Valor Moeda 2
	aSaldo[04] : Valor Moeda 3
	aSaldo[05] : Valor Moeda 4
	aSaldo[06] : Valor Moeda 5
	aSaldo[07] : Quantidade da segunda unidade de medida
	aSaldo[08] : Custo M�dio 1
	aSaldo[09] : Custo M�dio 2
	aSaldo[10] : Custo M�dio 3
	aSaldo[11] : Custo M�dio 4
	aSaldo[12] : Custo M�dio 5

	Caso seja informado o lCusRep:
	aSaldo[13] : Custo de Reposi��o Unit�rio da Moeda 1
	aSaldo[14] : Custo de Reposi��o Unit�rio da Moeda 2
	aSaldo[15] : Custo de Reposi��o Unit�rio da Moeda 3
	aSaldo[16] : Custo de Reposi��o Unit�rio da Moeda 4
	aSaldo[17] : Custo de Reposi��o Unit�rio da Moeda 5
	aSaldo[18] : Custo de Reposi��o da Moeda 1
	aSaldo[19] : Custo de Reposi��o da Moeda 2
	aSaldo[20] : Custo de Reposi��o da Moeda 3
	aSaldo[21] : Custo de Reposi��o da Moeda 4
	aSaldo[22] : Custo de Reposi��o da Moeda 5

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe070()
    Local aArea    := FWGetArea()
    Local cProduto := ""
    Local cArmazem := ""
    Local dDataFim
    Local aSaldos  := {}

    //Define os par�metros que ser�o usados no CalcEst
    cProduto := AvKey("F0001", "B1_COD")
    cArmazem := "01"
    dDataFim := DaySum(Date(), 1)

    //Abre a tabela de produtos
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) // B1_FILIAL + B1_COD

    //Posiciona no cadastro
    If SB1->(MsSeek(FWxFilial("SB1") + cProduto))

        //Busca os saldos
        aSaldos := CalcEst(cProduto, cArmazem, dDataFim)
        FWAlertInfo("Saldo atual � de: " + cValToChar(aSaldos[1]), "Teste CalcEst")
    EndIf

    FWRestArea(aArea)
Return
