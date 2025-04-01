/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"
#Include "RPTDef.ch"
#Include "FWPrintSetup.ch"

//Alinhamentos
#Define PAD_LEFT    0
#Define PAD_RIGHT   1
#Define PAD_CENTER  2
#Define PAD_JUSTIFY 3 //Op��o dispon�vel somente a partir da vers�o 1.6.2 da TOTVS Printer

/*/{Protheus.doc} zFonte51
Exemplo de gera��o de relat�rio com FWMSPrinter (quebra de p�ginas)
@author Atilio
@since 11/12/2022
@version 1.0
@type function
/*/
 
User Function zFonte51()
    Local aArea  := FWGetArea()
    Private lJob := IsBlind()
     
    //Se for execu��o autom�tica, n�o mostra pergunta, executa direto
    If lJob
        Processa({|| fMontaRel()}, "Processando...")
         
    //Sen�o, se a pergunta for confirmada, executa o relat�rio
    Else
        If MsgYesNo("Deseja gerar o relat�rio?", "Aten��o")
            Processa({|| fMontaRel()}, "Processando...")
        EndIf
    EndIf
     
    FWRestArea(aArea)
Return
 
/*---------------------------------------------------------------------*
 | Func:  fMontaRel                                                    |
 | Desc:  Fun��o que monta o relat�rio                                 |
 *---------------------------------------------------------------------*/
 
Static Function fMontaRel()
    Local cCaminho    := ""
    Local cArquivo    := ""
    Local lNegrito    := .T.
    Local lSublinhado := .T.
    Local lItalico    := .T.
    Local nRegAtu     := 0
    Local nRegTot     := 0
    //Linhas e colunas
    Private nLinAtu   := 000
    Private nTamLin   := 010
    Private nLinFin   := 820
    Private nColIni   := 010
    Private nColFin   := 550
    Private nColMeio  := (nColFin-nColIni)/2
    Private nEspLin   := 015
    //Colunas dos campos
    Private nColProd  := nColIni
    Private nColDescr := nColIni + 060
    Private nColTipo  := nColFin - 280
    Private nColTpDes := nColFin - 240
    Private nColUnMed := nColFin - 140
    Private nColUMDes := nColFin - 100
    //Vari�veis auxiliares
    Private dDataGer  := Date()
    Private cHoraGer  := Time()
    Private nPagAtu   := 1
    //Cores usadas
    Private nCorFraca := RGB(198, 239, 206)
    Private nCorForte := RGB(003, 101, 002)
    Private nCorCinza := RGB(150, 150, 150)
    Private oBrush    := TBrush():New(, nCorFraca)
    //Objetos de impress�o e fonte
    Private oPrintPvt
    Private cNomeFont  := "Arial"
    Private oFontCabN  := TFont():New(cNomeFont, /*uPar2*/, -15, /*uPar4*/,   lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
    Private oFontDet   := TFont():New(cNomeFont, /*uPar2*/, -11, /*uPar4*/, ! lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
    Private oFontDetN  := TFont():New(cNomeFont, /*uPar2*/, -13, /*uPar4*/,   lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
    Private oFontDetI  := TFont():New(cNomeFont, /*uPar2*/, -11, /*uPar4*/, ! lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado,   lItalico)
    Private oFontMin   := TFont():New(cNomeFont, /*uPar2*/, -09, /*uPar4*/, ! lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
    Private oFontRod   := TFont():New(cNomeFont, /*uPar2*/, -08, /*uPar4*/, ! lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
     
    //Se for via JOB, muda as parametriza��es
    If lJob
        //Define o caminho dentro da protheus data e o nome do arquivo
        cCaminho := "\x_relatorios\"
        cArquivo := "zFonte51_job_" + dToS(dDataGer) + "_" + StrTran(cHoraGer, ':', '-') + ".pdf"
         
        //Se n�o existir a pasta na Protheus Data, cria ela
        If ! ExistDir(cCaminho)
            MakeDir(cCaminho)
        EndIf
         
        //Cria o objeto FWMSPrinter
        oPrintPvt := FWMSPrinter():New(;
            cArquivo,; // cFilePrinter
            IMP_PDF,;  // nDevice
            .F.,;      // lAdjustToLegacy
            '',;       // cPathInServer
            .T.,;      // lDisabeSetup
            .F.,;      // lTReport
            ,;         // oPrintSetup
            ,;         // cPrinter
            .T.,;      // lServer
            .T.,;      // lParam10
            ,;         // lRaw
            .F.;       // lViewPDF
        )
        oPrintPvt:cPathPDF := cCaminho
         
    Else
        //Definindo o diret�rio como a tempor�ria do S.O. e o nome do arquivo com a data e hora (sem dois pontos)
        cCaminho  := GetTempPath()
        cArquivo  := "zFonte51_" + dToS(dDataGer) + "_" + StrTran(cHoraGer, ':', '-')
         
        //Criando o objeto do FMSPrinter
        oPrintPvt := FWMSPrinter():New(;
            cArquivo,; // cFilePrinter
            IMP_PDF,;  // nDevice
            .F.,;      // lAdjustToLegacy
            "",;       // cPathInServer
            .T.,;      // lDisabeSetup
            ,;         // lTReport
            ,;         // oPrintSetup
            "",;       // cPrinter
            ,;         // lServer
            ,;         // lParam10
            ,;         // lRaw
            .T.;       // lViewPDF
        )
        oPrintPvt:cPathPDF := cCaminho
    EndIf
     
    //Setando os atributos necess�rios do relat�rio
    oPrintPvt:SetResolution(72)
    oPrintPvt:SetPortrait()
    oPrintPvt:SetPaperSize(DMPAPER_A4)
    oPrintPvt:SetMargin(60, 60, 60, 60)

    //Imprime o primeiro cabe�alho
    fImpCab()

    //Percorre cem registros para testar a quebra
    nRegTot := 200
    For nRegAtu := 1 To nRegTot
        IncProc("Imprimindo registro (" + cValToChar(nRegAtu) + " de " + cValToChar(nRegTot) + ")...")

        //Verifica a quebra de p�gina
        fQuebra()

        //Aciona a impress�o dos dados
        oPrintPvt:SayAlign(nLinAtu, nColProd  ,     "AAAA",        oFontDet,  060,    10, , PAD_LEFT,   )
        oPrintPvt:SayAlign(nLinAtu, nColDescr ,     "BBBBBB",      oFontDet,  100,    10, , PAD_LEFT,   )
        oPrintPvt:SayAlign(nLinAtu, nColTipo  ,     "CC",          oFontDet,  040,    10, , PAD_CENTER,   )
        oPrintPvt:SayAlign(nLinAtu, nColTpDes ,     "DDDDDD",      oFontDet,  100,    10, , PAD_LEFT,   )
        oPrintPvt:SayAlign(nLinAtu, nColUnMed ,     "EE",          oFontDet,  040,    10, , PAD_CENTER,   )
        oPrintPvt:SayAlign(nLinAtu, nColUMDes ,     "FFFFFF",      oFontDet,  100,    10, , PAD_LEFT,   )
        nLinAtu += nEspLin

        //Faz uma linha de separa��o
        oPrintPvt:Line(nLinAtu-3, nColIni, nLinAtu-3, nColFin, nCorCinza)
    Next

    //Verifica a quebra de p�gina
    fQuebra()

    //Encerra a �ltima p�gina
    fImpRod()
     
    //Se for via job, imprime o arquivo para gerar corretamente o pdf
    If lJob
        oPrintPvt:Print()

    //Se for via manual, mostra o relat�rio
    Else
        oPrintPvt:Preview()
    EndIf
Return

/*---------------------------------------------------------------------*
 | Func:  fImpCab                                                      |
 | Desc:  Fun��o que imprime o cabe�alho                               |
 *---------------------------------------------------------------------*/

Static Function fImpCab()
    nLinAtu   := 40

	//Inicializa a p�gina
    oPrintPvt:StartPage()

    //Somente se for na primeira p�gina
    If nPagAtu == 1
        //Impress�o do box e das linhas
        nFimQuadr := nLinAtu + ((nEspLin*6) + 5)
        oPrintPvt:Box(nLinAtu, nColIni, nFimQuadr, nColFin)
        oPrintPvt:FillRect({nLinAtu + 1, nColIni+1, nLinAtu + nEspLin - 1, nColFin - 1}, oBrush)
        oPrintPvt:Line(nLinAtu + nEspLin,           nColIni,       nLinAtu + nEspLin,           nColFin,                ) //Linha separando o t�tulo dos dados
        oPrintPvt:Line(nLinAtu + nEspLin,           nColIni + 195, nFimQuadr,                   nColIni + 195,          ) //Coluna entre Logo e Textos
        oPrintPvt:Line(nLinAtu + nEspLin,           nColFin - 085, nFimQuadr,                   nColFin - 085,          ) //Coluna entre Textos e QRCode
        oPrintPvt:Line(nLinAtu + (nEspLin * 2) + 2, nColIni + 200, nLinAtu + (nEspLin * 2) + 2, nColIni + 360, nCorFraca) //Linha abaixo do texto principal

        //Impress�o do quadro de dados
        oPrintPvt:SayAlign(nLinAtu, nColIni + 005 , "Dados:",                            oFontDetN,  200,    015, nCorForte, PAD_LEFT,  )
        nLinAtu += nEspLin

        //Imprimindo o logo
        cLogoRel := "\x_imagens\logo.png"
        oPrintPvt:SayBitmap(nLinAtu + 5, nColIni + 065, cLogoRel, 070, 070) // 100 � a metade de 200, - 35 que � a metade da largura, d� 065

        //Imprimindo o QRCode
        cUrlSite := "https://terminaldeinformacao.com"
        oPrintPvt:QRCode(nLinAtu + 70, nColFin - 73, cUrlSite, 65)

        //Impress�o de informa��es internas
        oPrintPvt:SayAlign(nLinAtu, nColIni + 200, "Terminal de Informa��o",            oFontCabN,  200,    015, nCorForte, PAD_LEFT,  )
        nLinAtu += nEspLin + 5

        oPrintPvt:SayAlign(nLinAtu, nColIni + 200, "Site:",                             oFontDetN,  200,    015, , PAD_LEFT,  )
        oPrintPvt:SayAlign(nLinAtu, nColIni + 270, "https://terminaldeinformacao.com",  oFontDet,   200,    015, , PAD_LEFT,  )
        nLinAtu += nEspLin

        oPrintPvt:SayAlign(nLinAtu, nColIni + 200, "e-Mail:",                           oFontDetN,  200,    015, , PAD_LEFT,  )
        oPrintPvt:SayAlign(nLinAtu, nColIni + 270, "suporte@terminaldeinformacao.com",  oFontDet,   200,    015, , PAD_LEFT,  )
        nLinAtu += nEspLin

        oPrintPvt:SayAlign(nLinAtu, nColIni + 200, "WhatsApp:",                         oFontDetN,  200,    015, , PAD_LEFT,  )
        oPrintPvt:SayAlign(nLinAtu, nColIni + 270, "(14) 9 9738-5495",                  oFontDet,   200,    015, , PAD_LEFT,  )
        nLinAtu += nEspLin

        oPrintPvt:SayAlign(nLinAtu, nColIni + 200, "Um projeto da *Atilio Sistemas*",   oFontDetI,  200,    015, , PAD_LEFT,  )
        nLinAtu += nEspLin

        //Imprime textos laterais com o m�todo Say
        cTextoAux := "Esse � um exemplo da Assinatura Premium do Terminal de Informa��o, veja em https://terminaldeinformacao.com/hotmart"
        oPrintPvt:Say(040,     nColIni - 15, "Esq: " + cTextoAux, oFontMin, , nCorForte, 90)
        oPrintPvt:Say(nLinFin, nColFin + 15, "Dir: " + cTextoAux, oFontMin, , nCorForte, 270)
    EndIf
	
	nLinAtu += 010
    oPrintPvt:SayAlign(nLinAtu+05, nColProd  ,     "Produto",        oFontMin,  060,    10, nCorCinza, PAD_LEFT,   )
    oPrintPvt:SayAlign(nLinAtu+05, nColDescr ,     "Descri��o",      oFontMin,  100,    10, nCorCinza, PAD_LEFT,   )
    oPrintPvt:SayAlign(nLinAtu+05, nColTipo  ,     "Tp.",            oFontMin,  040,    10, nCorCinza, PAD_CENTER,   )
    oPrintPvt:SayAlign(nLinAtu+00, nColTpDes ,     "Tipo",           oFontMin,  100,    10, nCorCinza, PAD_LEFT,   )
    oPrintPvt:SayAlign(nLinAtu+10, nColTpDes ,     "Descri��o",      oFontMin,  100,    10, nCorCinza, PAD_LEFT,   )
    oPrintPvt:SayAlign(nLinAtu+05, nColUnMed ,     "U.M.",           oFontMin,  040,    10, nCorCinza, PAD_CENTER,   )
    oPrintPvt:SayAlign(nLinAtu+00, nColUMDes ,     "Unidade Medida", oFontMin,  100,    10, nCorCinza, PAD_LEFT,   )
    oPrintPvt:SayAlign(nLinAtu+10, nColUMDes ,     "Descri��o",      oFontMin,  100,    10, nCorCinza, PAD_LEFT,   )
	
	//Linha Separat�ria
	nLinAtu += 020
	oPrintPvt:Line(nLinAtu, nColIni, nLinAtu, nColFin, )
	nLinAtu += 005
Return

/*---------------------------------------------------------------------*
 | Func:  fImpRod                                                      |
 | Desc:  Fun��o que imprime o rodap�                                  |
 *---------------------------------------------------------------------*/

Static Function fImpRod()
	Local nLinRod:= nLinFin + 10
	Local cTexto := ''

	//Linha Separat�ria
	oPrintPvt:Line(nLinRod,   nColIni, nLinRod,   nColFin, nCorFraca)
	nLinRod += 5
	
	//Dados da Esquerda
	cTexto := dToC(dDataGer)+"     "+cHoraGer+"     "+FunName()+" (zFonte51)     "+cUserName
	oPrintPvt:SayAlign(nLinRod, nColIni, cTexto, oFontRod, 400, 10, nCorForte, PAD_LEFT, )
	
	//Direita
	cTexto := "P�gina "+cValToChar(nPagAtu)
	oPrintPvt:SayAlign(nLinRod, nColFin-40, cTexto, oFontRod, 040, 10, nCorForte, PAD_RIGHT, )
	
	//Finalizando a p�gina e somando mais um
	oPrintPvt:EndPage()
	nPagAtu++
Return

/*---------------------------------------------------------------------*
 | Func:  fQuebra                                                      |
 | Desc:  Fun��o que faz a l�gica da quebra de p�gina                  |
 *---------------------------------------------------------------------*/

Static Function fQuebra()
    //Se atingiu o limite, quebra de p�gina
	If nLinAtu >= nLinFin-5
		fImpRod()
		fImpCab()
	EndIf
Return
