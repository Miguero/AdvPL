/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/25/definindo-um-atalho-do-teclado-com-a-setkey-maratona-advpl-e-tl-437/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe437
Adiciona um atalho do teclado para executar funcionalidades
@type Function
@author Atilio
@since 30/03/2023
@see https://tdn.totvs.com/display/tec/SetKey
@obs 
    Fun��o SetKey
    Par�metros
        + nCodKey     , Num�rico        , N�mero do atalho (veja mais sobre no link do TDN acima)
        + bAcao       , Bloco de C�digo , Bloco com a fun��o que ser� executada
    Retorno
        + bRet        , Bloco de C�digo , Bloco que estava definido anteriormente

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe437()
    Local aArea := FWGetArea()

	/*
		Atalho:    Ctrl + L
		Fun��o:    zSearch
		Descri��o: Abre uma tela de pesquisa de campos em um cadastro do Protheus
		Download:  https://terminaldeinformacao.com/2018/04/03/pesquisa-de-campos-em-telas-protheus/
	*/
	SetKey(K_CTRL_L, {|| u_zSearch() })

	/*
		Atalho:    Shift + F7
		Fun��o:    zIsMVC
		Descri��o: Verifica se uma rotina � em MVC, montando tamb�m um exemplo de ponto de entrada
		Download:  https://terminaldeinformacao.com/2018/04/24/saiba-como-identificar-se-uma-funcao-e-em-mvc-como-fazer-seu-ponto-de-entrada/
	*/
	SetKey(K_SH_F7, {|| u_zIsMVC() })

	/*
		Atalho:    Shift + F8
		Fun��o:    zMiniForm
		Descri��o: Abre uma tela para executar f�rmulas no Protheus
		Download:  https://terminaldeinformacao.com/2018/02/13/funcao-para-executar-formulas-protheus-12/
	*/
	SetKey(K_SH_F8, {|| u_zMiniForm() })
	
	/*
		Atalho:    Shift + F9
		Fun��o:    zFazErro
		Descri��o: For�a um Error Log para analisar a pilha de chamadas e ver onde a fun��o esta travada
	*/
	SetKey(K_SH_F9, {|| u_zFazErro() })

	/*
		Atalho:    Shift + F11
		Fun��o:    zTiSQL
		Descri��o: Abre uma tela para execu��o de queries SQL, ideal para quem usa Cloud
		Download:  https://terminaldeinformacao.com/2021/11/05/tela-que-executa-consultas-sql-via-advpl/
	*/
	SetKey(K_SH_F11, { || u_zTiSQL() }) //Shift + F11

	FWRestArea(aArea)
Return
