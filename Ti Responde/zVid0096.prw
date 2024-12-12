/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/11/05/como-enviar-um-pdf-via-rest-usando-advpl-ti-responde-0096/ 
    
*/


//Bibliotecas
#Include "Totvs.ch"
#Include "TopConn.ch"
#Include "RPTDef.ch"
#Include "FWPrintSetup.ch"
#Include "RESTFul.ch"

//Alinhamentos
#Define PAD_LEFT    0
#Define PAD_RIGHT   1
#Define PAD_CENTER  2
#Define PAD_JUSTIFY 3 //Op��o dispon�vel somente a partir da vers�o 1.6.2 da TOTVS Printer

//Cor(es)
Static nCorCinza := RGB(110, 110, 110)
Static nCorLinha := RGB(165, 255, 203)

/*/{Protheus.doc} User Function zVid0096
Lista de Produtos
@author Atilio
@since 20/03/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

User Function zVid0096(cProdDe, cProdAte, lAuto, cPasta, cArquivo)
	Local aArea       := FWGetArea()
	Local aPergs      := {}
	Default cProdDe   := Space(15)
	Default cProdAte  := StrTran(cProdDe, " ", "Z")
    Default lAuto     := .F.
    Default cPasta    := Iif(IsBlind(), "\spool\", GetTempPath())
    Default cArquivo  := 'zVid0096'+RetCodUsr()+'_' + dToS(Date()) + '_' + StrTran(Time(), ':', '-') + '.pdf'
    Private lAutoPDF  := lAuto
    Private cPastaPDF := cPasta
    Private cArquiPDF := cArquivo
	
    //Se for PDF autom�tico, seta os par�metros em mem�ria e j� imprime
    If lAutoPDF
        MV_PAR01 := cProdDe
        MV_PAR02 := cProdAte
        Processa({|| fImprime()})

    //Sen�o, vai exibir uma tela de par�metros
    Else

        //Adicionando os parametros do ParamBox
        aAdd(aPergs, {1, "Produto De",  cProdDe,   "", ".T.", "SB1", ".T.", 80,  .F.})
        aAdd(aPergs, {1, "Produto At�", cProdAte,  "", ".T.", "SB1", ".T.", 80,  .T.})
        
        //Se a pergunta for confirma, cria o relatorio
        If ParamBox(aPergs, 'Informe os par�metros', /*aRet*/, /*bOk*/, /*aButtons*/, /*lCentered*/, /*nPosx*/, /*nPosy*/, /*oDlgWizard*/, /*cLoad*/, .F., .F.)
            Processa({|| fImprime()})
        EndIf
    EndIf
	
	FWRestArea(aArea)
Return

/*/{Protheus.doc} fImprime
Faz a impress�o do relat�rio zVid0096
@author Atilio
@since 20/03/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function fImprime()
    Local aArea        := FWGetArea()
    Local nTotAux      := 0
    Local nAtuAux      := 0
    Local cQryAux      := ''
    Private oPrintPvt
    Private oBrushLin  := TBrush():New(,nCorLinha)
    Private cHoraEx    := Time()
    Private nPagAtu    := 1
    Private cLogoEmp   := fLogoEmp()
    //Linhas e colunas
    Private nLinAtu    := 0
    Private nLinFin    := 800
    Private nColIni    := 010
    Private nColFin    := 580
    Private nColMeio   := (nColFin-nColIni)/2
    //Colunas dos relatorio
    Private nColDad1    := nColIni
    Private nColDad2    := nColIni + 60
    Private nColDad3    := nColIni + 180
    Private nColDad4    := nColIni + 240
    Private nColDad5    := nColIni + 300
    //Declarando as fontes
    Private cNomeFont  := 'Arial'
    Private oFontDet   := TFont():New(cNomeFont, /*uPar2*/, -11, /*uPar4*/, .F., /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, .F.)
    Private oFontDetN  := TFont():New(cNomeFont, /*uPar2*/, -13, /*uPar4*/, .T., /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, .F.)
    Private oFontRod   := TFont():New(cNomeFont, /*uPar2*/, -8,  /*uPar4*/, .F., /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, .F.)
    Private oFontMin   := TFont():New(cNomeFont, /*uPar2*/, -7,  /*uPar4*/, .F., /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, .F.)
    Private oFontTit   := TFont():New(cNomeFont, /*uPar2*/, -15, /*uPar4*/, .T., /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, .F.)
     
    //Monta a consulta de dados
    cQryAux += "SELECT B1_COD, B1_DESC, B1_UM, B1_TIPO "		+ CRLF
    cQryAux += "FROM " + RetSQLName("SB1") + " SB1 "		+ CRLF
    cQryAux += "WHERE B1_FILIAL = '" + FWxFilial("SB1") + "' "		+ CRLF
    cQryAux += "AND B1_MSBLQL != '1' "		+ CRLF
    cQryAux += "AND B1_COD >= '" + MV_PAR01 + "' "		+ CRLF
    cQryAux += "AND B1_COD <= '" + MV_PAR02 + "' "		+ CRLF
    cQryAux += "AND SB1.D_E_L_E_T_ = ' ' "		+ CRLF
    cQryAux += "ORDER BY B1_COD"		+ CRLF
    PLSQuery(cQryAux, 'QRY_AUX')
 
    //Define o tamanho da r�gua
    DbSelectArea('QRY_AUX')
    QRY_AUX->(DbGoTop())
    Count to nTotAux
    ProcRegua(nTotAux)
    QRY_AUX->(DbGoTop())
     
    //Somente se tiver dados
    If ! QRY_AUX->(EoF())
        //Se veio de processo autom�tico
        If lAutoPDF
            oPrintPvt := FWMSPrinter():New(;
                cArquiPDF,;  // cFilePrinter
                IMP_PDF,;    // nDevice
                .F.,;        // lAdjustToLegacy
                '',;         // cPathInServer
                .T.,;        // lDisabeSetup
                .F.,;        // lTReport
                ,;           // oPrintSetup
                ,;           // cPrinter
                .T.,;        // lServer
                .T.,;        // lParam10
                ,;           // lRaw
                .F.;         // lViewPDF
            )
        
        Else
            //Criando o objeto de impressao
            oPrintPvt := FWMSPrinter():New(;
                cArquiPDF,;   // cFilePrinter
                IMP_PDF,;     // nDevice
                .F.,;         // lAdjustToLegacy
                ,;            // cPathInServer
                .T.,;         // lDisabeSetup
                ,;            // lTReport
                @oPrintPvt,;  // oPrintSetup
                ,;            // cPrinter
                ,;            // lServer
                ,;            // lParam10
                ,;            // lRaw
                .T.;          // lViewPDF
            )
        EndIf
        oPrintPvt:cPathPDF := cPastaPDF
        oPrintPvt:SetResolution(72)
        oPrintPvt:SetPortrait()
        oPrintPvt:SetPaperSize(DMPAPER_A4)
        oPrintPvt:SetMargin(0, 0, 0, 0)
 
        //Imprime os dados
        fImpCab()
        While ! QRY_AUX->(EoF())
            nAtuAux++
            IncProc('Imprimindo registro ' + cValToChar(nAtuAux) + ' de ' + cValToChar(nTotAux) + '...')
 
            //Se atingiu o limite, quebra de pagina
            fQuebra()
             
            //Faz o zebrado ao fundo
            If nAtuAux % 2 == 0
                oPrintPvt:FillRect({nLinAtu - 2, nColIni, nLinAtu + 12, nColFin}, oBrushLin)
            EndIf
 
            //Imprime a linha atual
            oPrintPvt:SayAlign(nLinAtu, nColDad1, Alltrim(QRY_AUX->B1_COD), oFontDetN, 60, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
            oPrintPvt:SayAlign(nLinAtu, nColDad2, Alltrim(QRY_AUX->B1_DESC), oFontDet, 120, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
            oPrintPvt:SayAlign(nLinAtu, nColDad3, Alltrim(QRY_AUX->B1_UM), oFontDet, 60, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
            oPrintPvt:SayAlign(nLinAtu, nColDad4, Alltrim(QRY_AUX->B1_TIPO), oFontDet, 60, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
 
            nLinAtu += 15
            oPrintPvt:Line(nLinAtu-3, nColIni, nLinAtu-3, nColFin, nCorCinza)
 
            //Se atingiu o limite, quebra de pagina
            fQuebra()
             
            QRY_AUX->(DbSkip())
        EndDo
        
        //Imprime o �ltimo rodap�
        fImpRod()
        
        //Se for autom�tico, aciona o m�todo Print ao inv�s do Preview
        If lAutoPDF
            oPrintPvt:Print()
        Else
            oPrintPvt:Preview()
        EndIf
    Else
        FWAlertError('N�o foi encontrado informa��es com os par�metros informados!', 'Aten��o')
    EndIf
    QRY_AUX->(DbCloseArea())
     
    FWRestArea(aArea)
Return

/*/{Protheus.doc} fLogoEmp
Fun��o que retorna o logo da empresa conforme configura��o da DANFE
@author Atilio
@since 20/03/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function fLogoEmp()
    Local cLogo       := '\x_imagens\logo.png'
Return cLogo

/*/{Protheus.doc} fImpCab
Fun��o que imprime o cabe�alho do relat�rio
@author Atilio
@since 20/03/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function fImpCab()
    Local cTexto   := ''
    Local nLinCab  := 015
     
    //Iniciando Pagina
    oPrintPvt:StartPage()
    
    //Imprime o logo
    If File(cLogoEmp)
        oPrintPvt:SayBitmap(005, nColIni, cLogoEmp, 030, 030)
    EndIf
     
    //Cabecalho
    cTexto := 'Lista Produtos'
    oPrintPvt:SayAlign(nLinCab, nColMeio-200, cTexto, oFontTit, 400, 20, /*nClrText*/, PAD_CENTER, /*nAlignVert*/)
     
    //Linha Separatoria
    nLinCab += 020
    oPrintPvt:Line(nLinCab,   nColIni, nLinCab,   nColFin)
     
    //Atualizando a linha inicial do relatorio
    nLinAtu := nLinCab + 5
    
    If nPagAtu == 1
        //Imprimindo os par�metros
        cTexto := MV_PAR01
        oPrintPvt:SayAlign(nLinAtu, nColIni, 'Produto De', oFontDetN, 200, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
        oPrintPvt:SayAlign(nLinAtu, nColIni+200, cTexto, oFontDet, 200, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
        nLinAtu += 15
        
        cTexto := MV_PAR02
        oPrintPvt:SayAlign(nLinAtu, nColIni, 'Produto At�', oFontDetN, 200, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
        oPrintPvt:SayAlign(nLinAtu, nColIni+200, cTexto, oFontDet, 200, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
        nLinAtu += 15
        
        oPrintPvt:Line(nLinAtu-3, nColIni, nLinAtu-3, nColFin, nCorCinza)
        nLinAtu += 5
    EndIf
    
    oPrintPvt:SayAlign(nLinAtu, nColDad1, 'C�digo', oFontMin, 60, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
    oPrintPvt:SayAlign(nLinAtu, nColDad2, 'Descri��o', oFontMin, 120, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
    oPrintPvt:SayAlign(nLinAtu, nColDad3, 'Unid.Medida', oFontMin, 60, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
    oPrintPvt:SayAlign(nLinAtu, nColDad4, 'Tipo', oFontMin, 60, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
    nLinAtu += 15
Return

/*/{Protheus.doc} fImpRod
Fun��o que imprime o rodap� e encerra a p�gina
@author Atilio
@since 20/03/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function fImpRod()
    Local nLinRod:= nLinFin
    Local cTexto := ''
 
    //Linha Separatoria
    oPrintPvt:Line(nLinRod,   nColIni, nLinRod,   nColFin)
    nLinRod += 3
     
    //Dados da Esquerda
    cTexto := dToC(dDataBase) + '     ' + cHoraEx + '     ' + FunName() + ' (zVid0096)     ' + UsrRetName(RetCodUsr())
    oPrintPvt:SayAlign(nLinRod, nColIni, cTexto, oFontRod, 500, 10, /*nClrText*/, PAD_LEFT, /*nAlignVert*/)
     
    //Direita
    cTexto := 'Pagina '+cValToChar(nPagAtu)
    oPrintPvt:SayAlign(nLinRod, nColFin-40, cTexto, oFontRod, 040, 10, /*nClrText*/, PAD_RIGHT, /*nAlignVert*/)
     
    //Finalizando a pagina e somando mais um
    oPrintPvt:EndPage()
    nPagAtu++
Return

/*/{Protheus.doc} fQuebra
Fun��o que valida se a linha esta pr�xima do final, se sim quebra a p�gina
@author Atilio
@since 20/03/2024
@version 1.0
@type function
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

Static Function fQuebra()
    If nLinAtu >= nLinFin-10
        fImpRod()
        fImpCab()
    EndIf
Return



// -----------------------------


//Exemplo URL: http://127.0.0.1:8400/rest/zWsRelProd/get_report?initID=00000&lastID=ZZZZZ
//Obs.: Lembre-se de colocar o printer.exe dentro da pasta do AppServer do servi�o REST


/*/{Protheus.doc} WSRESTFUL zWsRelProd
Relat�rio de Produtos
@author Atilio
@since 22/03/2024
@version 1.0
@type wsrestful
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

WSRESTFUL zWsRelProd DESCRIPTION 'Relat�rio de Produtos'
    //Atributos
    WSDATA initID         AS STRING
    WSDATA lastID         AS STRING
 
    //M�todos
    WSMETHOD GET    REPORT     DESCRIPTION 'Retorna o registro pesquisado' WSSYNTAX '/zWsRelProd/get_report?{initID, lastID}'                       PATH 'get_report'        PRODUCES APPLICATION_JSON
END WSRESTFUL

/*/{Protheus.doc} WSMETHOD GET REPORT
Monta o relat�rio de produtos
@author Atilio
@since 22/03/2024
@version 1.0
@type method
@param initID, Caractere, String com o c�digo inicial do produto
@param lastID, Caractere, String com o c�digo finald do produto
@obs Codigo gerado automaticamente pelo Autumn Code Maker
@see http://autumncodemaker.com
/*/

WSMETHOD GET REPORT WSRECEIVE initID, lastID WSSERVICE zWsRelProd
    Local lRet       := .T.
    Local jResponse  := JsonObject():New()
    Local cPasta     := "\spool\"
    Local cArquivo   := "produtos_" + dToS(Date()) + "_" + StrTran(Time(), ":", "-") + ".pdf"

    //Se o id estiver vazio
    If Empty(::initID) .And. Empty(::lastID)
        Self:setStatus(500) 
        jResponse['errorId']  := 'ID001'
        jResponse['error']    := 'IDs vazios'
        jResponse['solution'] := 'Informe o codigo inicial e ou o codigo final'
    Else

        //Se a pasta n�o existir, cria ela
        If ! ExistDir(cPasta)
            MakeDir(cPasta)
        EndIf

        //Aciona a gera��o do PDF
        u_zVid0096(::initID, ::lastID, .T., cPasta, cArquivo)

        //Se o arquivo n�o foi encontrado
        If ! File(cPasta + cArquivo)
            Self:setStatus(500) 
            jResponse['errorId']  := 'ID002'
            jResponse['error']    := 'Arquivo nao encontrado'
            jResponse['solution'] := 'Falha ao criar o arquivo PDF, contate o Administrador'
        Else
            //Define o retorno
            //  Baixe a zFile64 dispon�vel nesse link - https://terminaldeinformacao.com/2023/10/11/funcao-para-transformar-um-arquivo-em-string-base-64/
            jResponse['pdfContent'] := u_zFile64(cPasta + cArquivo)
            jResponse['pdfName']    := cPasta + cArquivo
        EndIf
    EndIf

    //Define o retorno
    Self:SetContentType('application/json')
    Self:SetResponse(jResponse:toJSON())
Return lRet
