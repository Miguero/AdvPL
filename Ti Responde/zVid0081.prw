/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/09/12/como-gerar-um-excel-com-a-fwprinterxlsx-ti-responde-0081/ 
    
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zVid0081
Teste FWPrinterXLSX
@author Atilio
@since 08/01/2024
@version 1.0
@type function
@see https://tdn.totvs.com/display/public/framework/FwPrinterXlsx
/*/

User Function zVid0081()
	Local aArea    := FWGetArea()
	Local aPergs   := {}
	Local cPedDe   := Space(TamSX3('C6_NUM')[1])
	Local cPedAte  := StrTran(cPedDe, ' ', 'Z')
	Local cProdDe  := Space(TamSX3('C6_PRODUTO')[1])
	Local cProdAte := StrTran(cProdDe, ' ', 'Z')
	
	//Adicionando os parametros do ParamBox
	aAdd(aPergs, {1, "Pedido De",   cPedDe,   "", ".T.", "SC5", ".T.", 60,  .F.}) // MV_PAR01
	aAdd(aPergs, {1, "Pedido At�",  cPedAte,  "", ".T.", "SC5", ".T.", 60,  .T.}) // MV_PAR02
	aAdd(aPergs, {1, "Produto De",  cProdDe,  "", ".T.", "SB1", ".T.", 80,  .F.}) // MV_PAR03
	aAdd(aPergs, {1, "Produto At�", cProdAte, "", ".T.", "SB1", ".T.", 80,  .T.}) // MV_PAR04
	
	//Se a pergunta for confirmada, chama o preenchimento dos dados do .dot
	If ParamBox(aPergs, 'Informe os par�metros', /*aRet*/, /*bOk*/, /*aButtons*/, /*lCentered*/, /*nPosx*/, /*nPosy*/, /*oDlgWizard*/, /*cLoad*/, .F., .F.)
		Processa({|| fGeraExcel()})
	EndIf
	
	FWRestArea(aArea)
Return

/*/{Protheus.doc} fGeraExcel
Criacao do arquivo Excel na funcao zVid0081
@author Atilio
@since 08/01/2024
@version 1.0
@type function
/*/

Static Function fGeraExcel()
	Local aArea       := FWGetArea()
	Local oPrintXlsx
	Local dData       := Date()
	Local cHora       := Time()
	Local cCodUsr     := RetCodUsr()
	Local cArquivo    := GetTempPath() + 'zVid0081' + dToS(dData) + '_' + StrTran(cHora, ':', '-') + '.rel'
	Local cLogo       := ""
	Local cConteudo   := ""
	Local oFileRead
	Local cQryDad     := ""
	Local nAtual      := 0
	Local nTotal      := 0
	Local aCampos     := {}
	Local aColunas    := {}
	Local oExcel
	Local cFonte      := FwPrinterFont():Arial()
	Local nTamFonte   := 12
	Local lItalico    := .F.
	Local lNegrito    := .T.
	Local lSublinhado := .F.
	Local nCpoAtual   := 0
	Local oCellHoriz  := FwXlsxCellAlignment():Horizontal()
	Local oCellVerti  := FwXlsxCellAlignment():Vertical()
	Local cHorAlinha  := ""
	Local cVerAlinha  := ""
	Local lQuebrLin   := .F.
	Local nRotation   := 0
	Local cCustForma  := ""
	Local cCampoAtu   := ""
	Local cTipo       := ""
	Local nTamanho    := 0
	Local cTitulo     := ""
	Local cMascara    := ""
	Local cCorFundo   := ""

	//Montando consulta de dados
	cQryDad := "SELECT "		+ CRLF
	cQryDad += "    C6_NUM, "		+ CRLF
	cQryDad += "    C6_ITEM, "		+ CRLF
	cQryDad += "    C6_PRODUTO, "		+ CRLF
	cQryDad += "    C6_DESCRI, "		+ CRLF
	cQryDad += "    C6_ENTREG, "		+ CRLF
	cQryDad += "    C6_QTDVEN, "		+ CRLF
	cQryDad += "    C6_PRCVEN, "		+ CRLF
	cQryDad += "    C6_VALOR "		+ CRLF
	cQryDad += "FROM "		+ CRLF
	cQryDad += "    " + RetSQLName("SC6") + " SC6 "		+ CRLF
	cQryDad += "WHERE "		+ CRLF
	cQryDad += "    C6_FILIAL = '" + FWxFilial("SC6") + "' "		+ CRLF
	cQryDad += "    AND C6_NUM >= '" + MV_PAR01 + "' "		+ CRLF
	cQryDad += "    AND C6_NUM <= '" + MV_PAR02 + "' "		+ CRLF
	cQryDad += "    AND C6_PRODUTO >= '" + MV_PAR03 + "' "		+ CRLF
	cQryDad += "    AND C6_PRODUTO <= '" + MV_PAR04 + "' "		+ CRLF
	cQryDad += "    AND SC6.D_E_L_E_T_ = ' '"		+ CRLF
	cQryDad += "ORDER BY "		+ CRLF
	cQryDad += "    C6_NUM, "		+ CRLF
	cQryDad += "    C6_ITEM "		+ CRLF
	
	//Executando consulta e setando o total da regua
	PlsQuery(cQryDad, "QRY_DAD")
	DbSelectArea("QRY_DAD")

	//Somente se houver dados
	If ! QRY_DAD->(EoF())

		//Definindo o tamanho da regua
		Count To nTotal
		ProcRegua(nTotal)
		QRY_DAD->(DbGoTop())
		aCampos := QRY_DAD->(DbStruct())

		//Vamos percorrer os campos e montar a estrutura das colunas
		For nAtual := 1 To Len(aCampos)
			cCampoAtu := aCampos[nAtual][1]
			cTipo     := aCampos[nAtual][2]
			nTamanho  := aCampos[nAtual][3]
			cTitulo   := Alltrim(GetSX3Cache(cCampoAtu, "X3_TITULO"))
			cMascara  := ""

			//Se o t�tulo tiver vazio, pega do nome do campo mesmo
			If Empty(cTitulo)
				cTitulo := Alltrim(cCampoAtu)
			EndIf

			//Se for data, vai ser centralizado
			If cTipo == "D"
				nAlinhamento := 2

			//Se for num�rico, vai ser a direita
			ElseIf cTipo == "N"
				nAlinhamento := 1

				//Busca a m�scara do campo, caso n�o encontre, monta m�scara manual
				cMascara := Alltrim(GetSX3Cache(cCampoAtu, "X3_PICTURE"))
				If Empty(cMascara)
					cMascara := "@E 999,999,999.99"
				EndIf

			//Sen�o, por default (caractere, memo, outros) ser� a esquerda
			Else
				nAlinhamento := 0
			EndIf

			//Se o texto do t�tulo for maior que o tamanho da coluna, muda a vari�vel
			If Len(cTitulo) > nTamanho
				nTamanho := Len(cTitulo)
			EndIf

			aAdd(aColunas, {;
				cTitulo,;        //01 - T�tulo do Campo no dicion�rio
				nTamanho * 1.5,; //02 - Largura em pixels usada no Excel
				nAlinhamento,;   //03 - Alinhamento (0=Esquerda, 1=Direita, 2=Centralizado)
				cMascara;        //04 - M�scara, em caso de campos num�ricos
			})
		Next
	
		//Instancia a classe, e tenta criar o arquivo .rel
		oPrintXlsx := FwPrinterXlsx():New()
		If oPrintXlsx:Activate(cArquivo)

			//Adiciona uma worksheet
			oPrintXlsx:AddSheet("Vendas")

			//Agora vamos ler o logo e pegar o conte�do dele
			cLogo := "\x_imagens\logo.png"
			oFileRead := FwFileReader():New(cLogo)
			If oFileRead:Open()
				cConteudo  := oFileRead:FullRead()
			EndIf
			oFileRead:Close()

			//Vamos colocar o logo na linha 1, coluna 1 e vamos redimensionar deixando 64 de largura por 64 de altura
			oPrintXlsx:AddImageFromBuffer(1, 1, "logo", cConteudo, 64, 64)

			//Vamos definir a fonte padr�o usada como Arial
			oPrintXlsx:SetFont(cFonte, nTamFonte, lItalico, lNegrito, lSublinhado)

			//Agora vamos colocar algumas informa��es resumidas no cabe�alho (todos na coluna 3)
			oPrintXlsx:SetText(1, 3, "Fonte: zVid0081.prw")
			oPrintXlsx:SetText(2, 3, "Data: "    + dToC(dData))
			oPrintXlsx:SetText(3, 3, "Hora: "    + cHora)
			oPrintXlsx:SetText(4, 3, "Usu�rio: " + cCodUsr + " - " + UsrRetName(cCodUsr))

			//Depois de imprimir os textos do cabe�alho, vamos colocar a fonte como normal
			nTamFonte := 10
			lNegrito  := .F.
			oPrintXlsx:SetFont(cFonte, nTamFonte, lItalico, lNegrito, lSublinhado)
			
			//Na primeira linha do cabe�alho, vamos definir como tudo centralizado, a cor do texto verde e de fundo branca
			cHorAlinha  := oCellHoriz:Center()
			cVerAlinha  := oCellVerti:Center()
			oPrintXlsx:SetCellsFormat(cHorAlinha, cVerAlinha, lQuebrLin, nRotation, "22B14C", "FFFFFF", cCustForma)

			//Percorre agora as colunas e vem setando o tamanho delas e colocando o nome
			nLinExcel := 6
			For nAtual := 1 To Len(aColunas)
				oPrintXlsx:SetColumnsWidth(nAtual, nAtual, aColunas[nAtual][2])
				oPrintXlsx:SetText(nLinExcel, nAtual, aColunas[nAtual][1])
			Next

			//Define que as colunas ter�o op��o de filtrar (da coluna 1 at� a quantidade de campos)
			oPrintXlsx:ApplyAutoFilter(nLinExcel, 1, nLinExcel, Len(aCampos))
			
			//Percorrendo os dados da query
			nAtual := 0
			While !(QRY_DAD->(EoF()))
				
				//Incrementando a regua
				nAtual++
				IncProc("Adicionando registro " + cValToChar(nAtual) + " de " + cValToChar(nTotal) + "...")

				//Se for �mpar, o fundo vai ser verde claro, sen�o vai ser branco
				If nAtual % 2 != 0
					cCorFundo := "EBF1DE"
				Else
					cCorFundo := "FFFFFF"
				EndIf

				//Incrementa a linha no Excel
				nLinExcel++

				//Percorre as colunas
				For nCpoAtual := 1 To Len(aCampos)
					cCampoAtu := aCampos[nCpoAtual][1]
					cTipo     := aCampos[nCpoAtual][2]
					xConteud  := &("QRY_DAD->" + cCampoAtu)

					//Se for data, vai ser centralizado
					If cTipo == "D"
						xConteud := dToC(xConteud)

					//Se for num�rico, vai ser a direita
					ElseIf cTipo == "N"
						//Se tem m�scara, aplica num transform
						If ! Empty(aColunas[nCpoAtual][4])
							xConteud := Alltrim(Transform(xConteud, aColunas[nCpoAtual][4]))

						//Sen�o converte de num�rico para texto
						Else
							xConteud := cValToChar(xConteud)
						EndIf

					//Sen�o, apenas tira espa�os do campo
					Else
						xConteud := Alltrim(xConteud)
					EndIf

					//Se o alinhamento for a direita
					If aColunas[nCpoAtual][3] == 1
						cHorAlinha := oCellHoriz:Right()

					//Se for centralizado
					ElseIf aColunas[nCpoAtual][3] == 2
						cHorAlinha := oCellHoriz:Center()

					//Sen�o, ser� a esquerda
					Else
						cHorAlinha := oCellHoriz:Left()
					EndIf

					//Reseta a formata��o
					oPrintXlsx:ResetCellsFormat()

					//Em seguida, define a formata��o da coluna, sendo que o texto ser� preto
					oPrintXlsx:SetCellsFormat(cHorAlinha, cVerAlinha, lQuebrLin, nRotation, "000000", cCorFundo, cCustForma)
					
					//Adiciona a informa��o na linha do excel na coluna do campo
					oPrintXlsx:SetText(nLinExcel, nCpoAtual, xConteud)
				Next
				
				QRY_DAD->(DbSkip())
			EndDo

			//Vamos finalizar o arquivo
			oPrintXlsx:ToXlsx()
			oPrintXlsx:DeActivate()

			//E agora vamos abrir ele
			cArquivo := ChgFileExt(cArquivo, ".xlsx")
			If File(cArquivo)
				oExcel := MsExcel():New()
				oExcel:WorkBooks:Open(cArquivo)
				oExcel:SetVisible(.T.)
				oExcel:Destroy()
			EndIf
		EndIf

	Else
		FWAlertError("N�o foi encontrado registros com os filtros informados!", "Falha")
	EndIf
	QRY_DAD->(DbCloseArea())
	
	FWRestArea(aArea)	
Return
