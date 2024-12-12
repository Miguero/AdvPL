/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/11/07/como-fazer-zebrado-no-treport-ti-responde-0097/ 
    
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zVid0097
Listagem de Cidades
@author Atilio
@since 10/01/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

User Function zVid0097()
	Local aArea := FWGetArea()
	Local oReport
	Local aPergs   := {}
	Local cEstDe := "  "
	Local cEstAte := "ZZ"
	Local nOrdPor := 1
    Private lPar  := .F.
	
	//Adicionando os parametros do ParamBox
	aAdd(aPergs, {1, "Estado De", cEstDe,  "", ".T.", "12", ".T.", 40,  .F.})
	aAdd(aPergs, {1, "Estado At�", cEstAte,  "", ".T.", "12", ".T.", 40,  .T.})
	aAdd(aPergs, {2, "Ordenar por", nOrdPor, {"1=Nome da Cidade", "2=C�digo da Cidade"}, 090, ".T.", .T.})
	
	//Se a pergunta for confirma, cria as definicoes do relatorio
	If ParamBox(aPergs, 'Informe os par�metros', /*aRet*/, /*bOk*/, /*aButtons*/, /*lCentered*/, /*nPosx*/, /*nPosy*/, /*oDlgWizard*/, /*cLoad*/, .F., .F.)
		MV_PAR03 := Val(cValToChar(MV_PAR03))
		oReport := fReportDef()
		oReport:PrintDialog()
	EndIf
	
	FWRestArea(aArea)
Return

/*/{Protheus.doc} fReportDef
Definicoes do relatorio zVid0097
@author Atilio
@since 10/01/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function fReportDef()
	Local oReport
	Local oSection := Nil
	Local oBreak
    Local bBloco := {|| lPar := .F.}
	
	//Criacao do componente de impressao
	oReport := TReport():New( "zVid0097",;
		"Listagem de Cidades",;
		,;
		{|oReport| fRepPrint(oReport),};
		)
	oReport:SetTotalInLine(.F.)
	oReport:lParamPage := .F.
	oReport:oPage:SetPaperSize(9)
	
	//Orientacao do Relatorio
	oReport:SetPortrait()
	
	//Criando a secao de dados
	oSection := TRSection():New( oReport,;
		"Dados",;
		{"QRY_REP"})
	oSection:SetTotalInLine(.F.)
	
	//Colunas do relatorio
	TRCell():New(oSection, "CC2_EST", "QRY_REP", "Estado", /*cPicture*/, 2, /*lPixel*/, /*{|| code-block de impressao }*/, "LEFT", /*lLineBreak*/, "LEFT", /*lCellBreak*/, /*nColSpace*/, /*lAutoSize*/, /*nClrBack*/, /*nClrFore*/, .F.)
	TRCell():New(oSection, "CC2_CODMUN", "QRY_REP", "Codigo", /*cPicture*/, 5, /*lPixel*/, /*{|| code-block de impressao }*/, "LEFT", /*lLineBreak*/, "LEFT", /*lCellBreak*/, /*nColSpace*/, /*lAutoSize*/, /*nClrBack*/, /*nClrFore*/, .F.)
	TRCell():New(oSection, "CC2_MUN", "QRY_REP", "Nome", /*cPicture*/, 60, /*lPixel*/, /*{|| code-block de impressao }*/, "LEFT", /*lLineBreak*/, "LEFT", /*lCellBreak*/, /*nColSpace*/, /*lAutoSize*/, /*nClrBack*/, /*nClrFore*/, .F.)
	
	//Quebras do relatorio
	oBreak := TRBreak():New(oSection, oSection:Cell("CC2_EST"), {||""}, .F.)

	//Define que ir� imprimir os t�tulos ap�s a quebra
	oSection:SetHeaderBreak(.T.)

    //Define que na quebra de p�gina, a flag volta a ser �mpar
    oReport:OnPageBreak(bBloco, .T.)
    oBreak:OnBreak(bBloco)

Return oReport

/*/{Protheus.doc} fRepPrint
Impressao do relatorio zVid0097
@author Atilio
@since 10/01/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function fRepPrint(oReport)
	Local aArea    := FWGetArea()
	Local cQryReport  := ""
	Local oSectDad := Nil
	Local nAtual   := 0
	Local nTotal   := 0
    //Vari�veis usadas no brush, documenta��es no TDN - https://tdn.totvs.com/display/public/framework/TReport
    Local nLinAtu    := 0
    Local nColIni    := oReport:LeftMargin() //Margem da esquerda, vai ser a coluna inicial
    Local nColFin    := oReport:PageWidth()  //Largura da p�gina, vai ser a coluna final
    Local nEspLin    := oReport:LineHeight() //Espa�amento entre as linhas, para saber a altura que ir� pintar
    Local oBrushLin  := TBrush():New(, RGB(215, 245, 243)) //Pincel em um tom de claro

	//Pegando as secoes do relatorio
	oSectDad := oReport:Section(1)
	
	//Montando consulta de dados
	cQryReport := "SELECT "		+ CRLF
	cQryReport += "    CC2_EST, "		+ CRLF
	cQryReport += "    X5_DESCRI, "		+ CRLF
	cQryReport += "    CC2_CODMUN, "		+ CRLF
	cQryReport += "    CC2_MUN "		+ CRLF
	cQryReport += "FROM "		+ CRLF
	cQryReport += "    " + RetSQLName("CC2") + " CC2 "		+ CRLF
	cQryReport += "    INNER JOIN " + RetSQLName("SX5") + " SX5 ON ( "		+ CRLF
	cQryReport += "        X5_FILIAL = '" + FWxFilial("SX5") + "' "		+ CRLF
	cQryReport += "        AND X5_TABELA = '12' "		+ CRLF
	cQryReport += "        AND X5_CHAVE = CC2_EST "		+ CRLF
	cQryReport += "        AND SX5.D_E_L_E_T_ = ' ' "		+ CRLF
	cQryReport += "    ) "		+ CRLF
	cQryReport += "WHERE "		+ CRLF
	cQryReport += "    CC2_FILIAL = '" + FWxFilial("CC2") + "' "		+ CRLF
	cQryReport += "    AND CC2_EST >= '" + MV_PAR01 + "' "		+ CRLF
	cQryReport += "    AND CC2_EST <= '" + MV_PAR02 + "' "		+ CRLF
	cQryReport += "    AND CC2.D_E_L_E_T_ = ' ' "		+ CRLF
	cQryReport += "ORDER BY "		+ CRLF
	cQryReport += "    CC2_EST "		+ CRLF
    If MV_PAR03 == 1
	    cQryReport += "    , CC2_MUN"		+ CRLF
    ElseIf MV_PAR03 == 2
        cQryReport += "    , CC2_CODMUN"		+ CRLF
    EndIf
	
	//Executando consulta e setando o total da regua
	PlsQuery(cQryReport, "QRY_REP")
	DbSelectArea("QRY_REP")
	Count to nTotal
	oReport:SetMeter(nTotal)
	
	//Se houver dados
	QRY_REP->(DbGoTop())
	If ! QRY_REP->(EoF())

		//Temos que acionar a primeira vez o StartPage para poder sair certo o texto do primeiro estado
		//oReport:StartPage() // to-do

		//Enquanto houver dados
		oSectDad:Init()
		While ! QRY_REP->(Eof())
		
			//Incrementando a regua
			nAtual++
			oReport:SetMsgPrint("Imprimindo registro " + cValToChar(nAtual) + " de " + cValToChar(nTotal) + "...")
			oReport:IncMeter()

            //Se for uma linha Par, ir� imprimir o fundo
            If lPar
                nLinAtu := oReport:Row() //Pega a linha atual no relat�rio
                oReport:FillRect({nLinAtu, nColIni, nLinAtu + nEspLin, nColFin}, oBrushLin)
            EndIf
			
			//Imprimindo a linha atual
			oSectDad:PrintLine()

            //Atualiza entre par e �mpar
            lPar := ! lPar
			
			QRY_REP->(DbSkip())
		EndDo
		oSectDad:Finish()
	EndIf
	QRY_REP->(DbCloseArea())

	
	FWRestArea(aArea)
Return
