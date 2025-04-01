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

/*/{Protheus.doc} zFonte44
Exemplo de gera��o de relat�rio com FWMSPrinter (impress�o de textos com SayAlign)
@author Atilio
@since 28/11/2022
@version 1.0
@type function
/*/
 
User Function zFonte44()
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
    //Linhas e colunas
    Private nLinAtu   := 000
    Private nTamLin   := 010
    Private nLinFin   := 820
    Private nColIni   := 010
    Private nColFin   := 550
    Private nColMeio  := (nColFin-nColIni)/2
    Private nEspLin   := 015
    //Vari�veis auxiliares
    Private dDataGer  := Date()
    Private cHoraGer  := Time()
    //Objetos de impress�o e fonte
    Private oPrintPvt
    Private cNomeFont  := "Arial"
    Private oFontCabN  := TFont():New(cNomeFont, /*uPar2*/, -15, /*uPar4*/,   lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
    Private oFontDet   := TFont():New(cNomeFont, /*uPar2*/, -11, /*uPar4*/, ! lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
    Private oFontDetN  := TFont():New(cNomeFont, /*uPar2*/, -13, /*uPar4*/,   lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado, ! lItalico)
    Private oFontDetI  := TFont():New(cNomeFont, /*uPar2*/, -11, /*uPar4*/, ! lNegrito, /*uPar6*/, /*uPar7*/, /*uPar8*/, /*uPar9*/, ! lSublinhado,   lItalico)
     
    //Se for via JOB, muda as parametriza��es
    If lJob
        //Define o caminho dentro da protheus data e o nome do arquivo
        cCaminho := "\x_relatorios\"
        cArquivo := "zFonte44_job_" + dToS(dDataGer) + "_" + StrTran(cHoraGer, ':', '-') + ".pdf"
         
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
        cArquivo  := "zFonte44_" + dToS(dDataGer) + "_" + StrTran(cHoraGer, ':', '-')
         
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
     
    //Inicializa a p�gina
    oPrintPvt:StartPage()

    //Impress�o de informa��es internas
    nLinAtu := 40
    oPrintPvt:SayAlign(nLinAtu, nColIni + 200, "Dados:",                            oFontDetN,  200,    015, , PAD_LEFT,  )
    nLinAtu += nEspLin

    oPrintPvt:SayAlign(nLinAtu, nColIni + 200, "Terminal de Informa��o:",           oFontCabN,  200,    015, , PAD_LEFT,  )
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

    //Encerra a p�gina
    oPrintPvt:EndPage()
     
    //Se for via job, imprime o arquivo para gerar corretamente o pdf
    If lJob
        oPrintPvt:Print()

    //Se for via manual, mostra o relat�rio
    Else
        oPrintPvt:Preview()
    EndIf
Return
