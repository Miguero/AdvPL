/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/06/manipulando-campos-em-mvc-com-fwfldget-e-fwfldput-maratona-advpl-e-tl-219/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe219
Exemplo de fun��o que pega ou atribui um valor em um campo em MVC
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWFldGet e https://tdn.totvs.com/display/public/framework/FWFldPut
@obs 

    Fun��o FWFldGet
    Par�metros
        + cCampo         , Caractere       , Nome do Campo
        + nLinha         , Num�rico        , N�mero da linha (quando se esta em uma GRID)
        + oModel         , Objeto          , Vari�vel contendo o Modelo de Dados ativo na mem�ria
        + lShowMsg       , L�gico          , .T. se exibe mensagem de erro ao tentar buscar o campo ou .F. se n�o
    Retorno
        + xRet           , Indefinido      , Conte�do inserido no campo

    Fun��o FWFldPut
    Par�metros
        + cCampo         , Caractere       , Nome do Campo
        + xConteudo      , Indefinido      , Conte�do que ser� atribu�do
        + nLinha         , Num�rico        , N�mero da linha (quando se esta em uma GRID)
        + oModel         , Objeto          , Vari�vel contendo o Modelo de Dados ativo na mem�ria
        + lShowMsg       , L�gico          , .T. se exibe mensagem de erro ao tentar preencher o campo ou .F. se n�o
        + lLoad          , L�gico          , .T. se for�a a atribui��o de conte�do no campo ou .F. se n�o
    Retorno
        + lRet           , L�gico          , .T. se o conte�do foi atribu�do ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe219()
    Local aArea  := FWGetArea()

    //Mostra a pergunta
    If FWAlertYesNo("Deseja utilizar as Fun��es (clique em Sim) ou deseja utilizar os m�todos (clique em N�o)?", "Aten��o")
        fUsaFuncao()
    Else
        fUsaMetodo()
    EndIf

    FWRestArea(aArea)
Return

Static Function fUsaFuncao()
    Local aPergs    := {}
    Local cDescri   := FWFldGet("DA0_DESCRI")
    
    //Adicionando os parametros que ser�o digitados
    aAdd(aPergs, {1, "Descri��o",  cDescri,  "",     "NaoVazio()", "", ".T.", 80,  .T.})
    
    If ParamBox(aPergs, "Informe os par�metros", , , , , , , , , .F., .F.)
        //Atualiza o valor
        cDescri := MV_PAR01
        FwFldPut("DA0_DESCRI", cDescri)
    EndIf
Return

Static Function fUsaMetodo()
    Local aPergs    := {}
    Local oModelPad := FWModelActive()
    Local cDescri   := oModelPad:GetValue("DA0MASTER", "DA0_DESCRI")
    
    //Adicionando os parametros que ser�o digitados
    aAdd(aPergs, {1, "Descri��o",  cDescri,  "",     "NaoVazio()", "", ".T.", 80,  .T.})
    
    If ParamBox(aPergs, "Informe os par�metros", , , , , , , , , .F., .F.)
        //Atualiza o valor
        cDescri := MV_PAR01
        oModelPad:SetValue("DA0MASTER", "DA0_DESCRI", cDescri)
    EndIf
Return


/*/{Protheus.doc} User Function OMSA010
Ponto de Entrada no Cadastro de Tabelas de Pre�o
@author Daniel Atilio
@since 28/02/2022
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
     *-------------------------------------------------*
     Por se tratar de um p.e. em MVC, salve o nome do 
     arquivo diferente, por exemplo, OMSA010_pe.prw 
     *-----------------------------------------------*
     A documentacao de como fazer o p.e. esta disponivel em https://tdn.totvs.com/pages/releaseview.action?pageId=208345968 

     Associe "FORM" com banco de dados, com ModelDef
     Associe "MODEL" com visualiza��o, com ViewDef
@see http://autumncodemaker.com
/*/

User Function OMSA010()
	Local aArea := FWGetArea()
	Local aParam := PARAMIXB 
	Local xRet := .T.
	Local oObj := Nil
	Local cIdPonto := ""
	Local cIdModel := ""
	
	//Se tiver parametros
	If aParam != Nil
		
		//Pega informacoes dos parametros
		oObj := aParam[1]
		cIdPonto := aParam[2]
		cIdModel := aParam[3]
			
		//Para a inclusao de botoes na ControlBar 
		If cIdPonto == "BUTTONBAR" 
			xRet := {} 
			aAdd(xRet, {"* Atualizar Descri��o",        "", {|| u_zExe219()}, "Atu. Descr"})
		EndIf
		
	EndIf
	
	FWRestArea(aArea)
Return xRet
