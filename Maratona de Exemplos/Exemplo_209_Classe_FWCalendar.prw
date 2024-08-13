/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/01/criando-um-calendario-em-tela-atraves-da-fwcalendar-maratona-advpl-e-tl-209/
*/


//Bibliotecas
#Include "TOTVS.ch"
 
//Posi��es do array dos agendamentos do calend�rio
#Define ID         1 // Id do Celula
#Define OBJETO     2 // Objeto de Tela
#Define DATADIA    3 // Data Completa da Celula
#Define DIA        4 // Dia Ref. Data da Celula
#Define MES        5 // Mes Ref. Data da Celula
#Define ANO        6 // Ano Ref. Data da Celula
#Define NSEMANO    7 // Semana do Ano Ref. Data da Celula
#Define NSEMMES    8 // Semana do Mes Ref. Data da Celula
#Define ATIVO      9 // � celula referente a um dia ativo
#Define FOOTER    10 // � celula referente ao rodape
#Define HEADER    11 // � celula referente ao Header
#Define SEMANA    12 // � celula referente a semana
#Define BGDefault 13 // Cor de BackGround da Celula
 
/*/{Protheus.doc} User Function zExe209
Tela de agendamentos do Telemarketing
@type  Function
@author Atilio
@since 20/02/2023
@version 1.0
@see https://tdn.totvs.com/display/public/framework/FWCalendar
@obs 
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/
 
User Function zExe209()
    Local aArea := GetArea()
    Private aSize := MsAdvSize(.F.)
 
    fMontaTela()
 
    RestArea(aArea)
Return
 
Static Function fMontaTela()
    Local nCorFundo     := 16777215
    Local nLargBtn      := 50
    //Data
    Private dDtIni := Date()
    Private cMes   := StrZero(Month(dDtIni), 2)
    Private cAno   := StrZero(Year(dDtIni),  4)
    //Objetos e componentes
    Private oDlgTmk
    Private oFwLayer
    Private oPanTitulo
    Private oPanCalend
    Private oPanPreMon
    Private oPanNexMon
    Private oPanSair
    Private oMesAtual
    Private cMesAno
    Private cTitHtml
    //Cabe�alho
    Private oSayModulo, cSayModulo := 'FAT'
    Private oSayTitulo, cSayTitulo := 'Calend�rio de Agendamentos'
    Private oSaySubTit, cSaySubTit := 'Clique com o bot�o direito para registrar agendamentos'
    //Tamanho da janela
    Private nJanLarg := aSize[5]
    Private nJanAltu := aSize[6]
    //Fontes
    Private cFontUti    := "Tahoma"
    Private oFontMod    := TFont():New(cFontUti, , -38)
    Private oFontSub    := TFont():New(cFontUti, , -20)
    Private oFontSubN   := TFont():New(cFontUti, , -20, , .T.)
    Private oFontBtn    := TFont():New(cFontUti, , -14)
    Private oFontSay    := TFont():New(cFontUti, , -12)
    //Vari�veis usadas para atualiza��o das informa��es
    Private aInfoDia
    Private nSelecao
    Private cTextoSel
    Private nPosCell
 
    //Cria a janela
    DEFINE MSDIALOG oDlgTmk TITLE "Agendamentos Telemarketing"  FROM 0, 0 TO nJanAltu, nJanLarg PIXEL
 
        //Criando a camada
        oFwLayer := FwLayer():New()
        oFwLayer:init(oDlgTmk,.F.)
 
        //Adicionando 3 linhas, a de t�tulo, a superior e a do calend�rio
        oFWLayer:addLine("TIT", 10, .F.)
        oFWLayer:addLine("SUP", 05, .F.)
        oFWLayer:addLine("CAL", 85, .F.)
 
        //Adicionando as colunas das linhas
        oFWLayer:addCollumn("HEADERTEXT",   050, .T., "TIT")
        oFWLayer:addCollumn("BLANKBTN",     040, .T., "TIT")
        oFWLayer:addCollumn("BTNSAIR",      010, .T., "TIT")
        oFWLayer:addCollumn("BLANKSUP1",    015, .T., "SUP")
        oFWLayer:addCollumn("BTNPREVMONTH", 020, .T., "SUP")
        oFWLayer:addCollumn("TITLE",        030, .T., "SUP")
        oFWLayer:addCollumn("BTNNEXTMONTH", 020, .T., "SUP")
        oFWLayer:addCollumn("COLCAL",       100, .T., "CAL")
 
        //Criando os paineis
        oPanTitulo := oFWLayer:GetColPanel("TITLE",        "SUP")
        oPanCalend := oFWLayer:GetColPanel("COLCAL",       "CAL")
        oPanPreMon := oFWLayer:GetColPanel("BTNPREVMONTH", "SUP")
        oPanNexMon := oFWLayer:GetColPanel("BTNNEXTMONTH", "SUP")
        oPanSair := oFWLayer:GetColPanel("BTNSAIR",      "TIT")
        oPanHeader := oFWLayer:GetColPanel("HEADERTEXT",   "TIT")
 
        //T�tulos e SubT�tulos
        oSayModulo := TSay():New(004, 003, {|| cSayModulo}, oPanHeader, "", oFontMod,  , , , .T., RGB(149, 179, 215), , 200, 30, , , , , , .F., , )
        oSayTitulo := TSay():New(004, 045, {|| cSayTitulo}, oPanHeader, "", oFontSub,  , , , .T., RGB(031, 073, 125), , 200, 30, , , , , , .F., , )
        oSaySubTit := TSay():New(014, 045, {|| cSaySubTit}, oPanHeader, "", oFontSubN, , , , .T., RGB(031, 073, 125), , 300, 30, , , , , , .F., , )
 
        //Criando os bot�es
        oBtnEnd := TButton():New(006, 001, "Fechar",             oPanSair, {|| oDlgTmk:End()}, nLargBtn, 018, , oFontBtn, , .T., , , , , , )
 
        //Cria o calend�rio
        oCalend := FWCalendar():New( VAL(cMes), VAL(cAno) )
        oCalend:aNomeCol    := { 'Domingo'    , 'Segunda' , 'Ter�a' , 'Quarta' , 'Quinta'    , 'Sexta' , 'S�bado' , 'Semana'}    //'Domingo'    # 'Segunda' # 'Ter�a' # 'Quarta' # 'Quinta'    # 'Sexta' # 'S�bado' # 'Semana'
        oCalend:lWeekColumn := .F.
        oCalend:lFooterLine := .F.
        oCalend:bLClicked   := {|| }
        oCalend:bLDblClick  := {|| }
        oCalend:bRClicked   := {|aInfo, oObj, nRow, nCol| fCliqueDir(aInfo, oObj, nRow, nCol) }
        fCalendFont()
        oCalend:Activate( oPanCalend )
 
        //Criando o Say com o m�s Atual
        oMesAtual := TSay():New(0, 0, {|| }, oPanTitulo, , , , , , .T., 20, 20, , , , , , , , .T.)
        oMesAtual:Align := CONTROL_ALIGN_ALLCLIENT
        oMesAtual:nClrPane := nCorFundo
        fMesAno(Val(cMes), Val(cAno))
 
        //Criando o bot�o do M�s Anterior
        @ 0, 0 BTNBMP oPrevMonth Resource "PMSSETAESQ" Size 80, 90 Of oPanPreMon Pixel
        oPrevMontht:cToolTip := "Mes Anterior"    //"Mes Anterior"
        oPrevMonth:bAction  := { || FwMsgRun(Nil, {|| fMudaMes(oPanCalend, oCalend, 2 )}, Nil, "Montando calend�rio...") }    //"Montando calend�rio..."
        oPrevMonth:Align    := CONTROL_ALIGN_RIGHT
 
        //Criando o bot�o do Pr�ximo M�s
        @ 0, 0 BTNBMP oNextMonth Resource "PMSSETADIR" Size 90, 90 Of oPanNexMon Pixel
        oNextMonth:cToolTip := "Proximo Mes"    //"Proximo Mes"
        oNextMonth:bAction  := { || FwMsgRun(Nil, {|| fMudaMes(oPanCalend, oCalend, 1 )}, Nil, "Montando calend�rio...") }    //"Montando calend�rio..."
        oNextMonth:Align    := CONTROL_ALIGN_LEFT
    Activate MsDialog oDlgTmk Centered
Return
 
/*
    Fun��o que muda de m�s
*/
 
Static Function fMudaMes(oPan, oCalend, nOp)
    Local nMonth    := oCalend:nMes
    Local nYear     := oCalend:nAno
    Default    nOp        := 1
 
    //Se for a seta ->, incrementa um m�s
    If nOp == 1
        If nMonth == 12
            nMonth := 01
            nYear += 1
        Else
            nMonth := nMonth += 1
        EndIf
 
    //Se for a seta <-, diminui um m�s
    ElseIf nOp == 2
        If nMonth == 01
            nMonth := 12
            nYear -= 1
        Else
            nMonth := nMonth -= 1
        EndIf
    EndIf
 
    //Define o calend�rio e seta o t�tulo
    oCalend:SetCalendar( oPan, cValToChar(nMonth), cValToChar(nYear) )
    fMesAno(nMonth, nYear)
Return
 
/*
    Fun��o que define o texto do t�tulo em cima do calend�rio
*/
 
Static Function fMesAno(nMonth, nYear)
    cMesAno := Capital(MesExtenso(nMonth)) + " / " + cValToChar(nYear)
    cTitHtml := fTitHTML(cMesAno)
    oMesAtual:SetText( cTitHtml )
 
    //Chama a busca de informa��es para definir as informa��es no calend�rio
    fBuscaInfo()
Return Nil
 
/*
    Fun��o que transforma o t�tulo no formato html
*/
 
Static Function fTitHTML(cMesAno)
    Local cRet := ''
    cRet += '<p align="center">'
    cRet += '<font face="' + cFontUti + '" color="#000000" style="font-size:14px"><strong>' + cMesAno + '</strong></font>'
    cRet += '</p>'
Return cRet
 
/*
    Fun��o que define o primeiro calend�rio com a fonte Tahom
*/
 
Static Function fCalendFont()
    oCalend:aFontDay[1]     := cFontUti
    oCalend:aFontDayHead[1] := cFontUti
    oCalend:aFontDayText[1] := cFontUti
    oCalend:aFontFooter[1]  := cFontUti
    oCalend:aFontFsFer[1]   := cFontUti
    oCalend:aFontHeader[1]  := cFontUti
    oCalend:aFontOff[1]     := cFontUti
    oCalend:aFontToday[1]   := cFontUti
    oCalend:aFontWeek[1]    := cFontUti
    oCalend:cHtmlDay        := StrTran(oCalend:cHtmlDay,     "MS Sans Serif", cFontUti)
    oCalend:cHtmlDayOff     := StrTran(oCalend:cHtmlDayOff,  "MS Sans Serif", cFontUti)
    oCalend:cHtmlFooter     := StrTran(oCalend:cHtmlFooter,  "MS Sans Serif", cFontUti)
    oCalend:cHtmlHeader     := StrTran(oCalend:cHtmlHeader,  "MS Sans Serif", cFontUti)
    oCalend:cHtmlToday      := StrTran(oCalend:cHtmlToday,   "MS Sans Serif", cFontUti)
    oCalend:cHtmlWeek       := StrTran(oCalend:cHtmlWeek,    "MS Sans Serif", cFontUti)
    oCalend:cHtmlWeekend    := StrTran(oCalend:cHtmlWeekend, "MS Sans Serif", cFontUti)
Return
 
/*
    Fun��o que busca as informa��es e atualiza a agenda
*/
 
Static Function fBuscaInfo()
    Local nCell
    Local nDia
 
    For nCell := 1 To (Len(oCalend:aCell) - 10)
        nDia := oCalend:aCell[nCell][DIA] // Dia
        //nMes := oCalend:aCell[nCell][MES] // M�s
        //nAno := oCalend:aCell[nCell][ANO] // Ano
 
        //Se for um dia �til
        If oCalend:aCell[nCell][ATIVO] .And. nDia == 10
            aItens := {}
            aAdd(aItens, "000001 - Cliente A")
            aAdd(aItens, "000002 - Cliente B")
            aAdd(aItens, "000003 - Cliente C")
 
            //Define as informa��es da c�lula
            oCalend:SetInfo(oCalend:aCell[nCell][ID], aClone(aItens))
        EndIf

        //Se for um dia �til
		If oCalend:aCell[nCell][ATIVO]
            //Definindo o nome do dia no calend�rio
            dDataAtu := oCalend:aCell[nCell][DATADIA]
            cObsText := ""
            cDia := StrZero(Day(dDataAtu), 2)
            
            //Se a data n�o for v�lida
            If DataValida(dDataAtu) != dDataAtu
                
                //Se for domingo ou s�bado, ser� FDS sen�o ser� FERIADO
                If Dow(dDataAtu) == 1 .Or. Dow(dDataAtu) == 7
                    cObsText := "FDS"
                Else
                    cObsText := "FERIADO"
                EndIf
            
                //Define o t�tulo da c�lula
                cHtml := '<html><p style="color: #ff0000;"><b>' + cDia + ' - ' + cObsText + '</b></p></html>'
                oCalend:aCell[nCell][OBJETO]:oEditTitle:cTitle := cHtml
            Else
                //Define o t�tulo da c�lula
                cHtml := '<html><p style="color: #0000ff;"><b>' + cDia + '</b></p></html>'
                oCalend:aCell[nCell][OBJETO]:oEditTitle:cTitle := cHtml
            EndIf
        EndIf
    Next
Return
 
/*
    Fun��o que mostra PopUp, ao clicar com o bot�o direito
*/
 
Static Function fCliqueDir(aInfo, oObj, nRow, nCol)
    Local cClassName := Upper(Alltrim(oObj:ClassName()))
    Local oMenu
    Local oMenuItem := {}
    Local aOpcoes := {}
    Local nOpcao := 0
    Local dData := aInfo[DATADIA]
    aInfoDia  := aInfo
    nSelecao  := aInfo[OBJETO]:nSelectedIndex
    cTextoSel := ""
    nPosCell  := aScan(oCalend:aCell, {|x| AllTrim(Upper(x[1])) == aInfo[1]})
     
    //Somente se estiver dentro do ListBox
    If cClassName == "TLISTBOX"
        aAdd(aOpcoes, {"Novo Agendamento", {|| fPopOpcao(3, dData)}})
 
        //Se houver linhas, ter� outras op��es
        If nSelecao != 0
            aAdd(aOpcoes, {"Visualizar Agendamento", {|| fPopOpcao(2, dData)}})
            aAdd(aOpcoes, {"Alterar Agendamento",    {|| fPopOpcao(4, dData)}})
            aAdd(aOpcoes, {"Excluir Agendamento",    {|| fPopOpcao(5, dData)}})
            cTextoSel := aInfo[OBJETO]:oListBoxContent:aItems[nSelecao]
        Endif
    EndIf
 
    //Criando o menu e os itens
    MENU oMenu POPUP
        For nOpcao := 1 To Len(aOpcoes)
            aAdd( oMenuItem, MenuAddItem(aOpcoes[nOpcao][1], , , .T., , , , oMenu, aOpcoes[nOpcao][2], , , , , {|| .T.}) )
        Next
    ENDMENU
    oMenu:Activate(nRow, nCol, oObj)
Return
 
Static Function fPopOpcao(nOpcao, dData)
    Local aPergs := {}
    Local cTexto := ""
    Local cEditCli := ".F."
    Local cCliente := Space(TamSX3('A1_COD')[1])
    Local cLoja    := Space(TamSX3('A1_LOJA')[1])
    Local cObserv  := ""
    Default nOpcao := 3
    Default dData  := Date()
 
    //Define o texto
    If nOpcao == 3
        cEditCli := ".T."
        cTexto := "Inclus�o de Agendamento"
    Else
        cEditCli := ".F."
        If nOpcao == 2
            cTexto := "Visualiza��o de Agendamento"
        ElseIf nOpcao == 4
            cTexto := "Altera��o de Agendamento"
        ElseIf nOpcao == 5
            cTexto := "Exclus�o de Agendamento"
        EndIf
        cCliente := SubStr(cTextoSel, 1, 6)
        cLoja    := "01"
        cTexto   += " (" + SubStr(cTextoSel, 10, Len(cTextoSel)) + ")"
    EndIf
 
    //Adiciona os par�metros
    aAdd(aPergs, {09, cTexto, 200, 40, .T.}) 
    aAdd(aPergs, {01, "Data",      dData,    "", ".T.", "",    ".F.",    80,  .T.})
    aAdd(aPergs, {01, "Cliente",   cCliente, "", ".T.", "SA1", cEditCli, 80,  .T.})
    aAdd(aPergs, {01, "Loja",      cLoja,    "", ".T.", "",    cEditCli, 80,  .T.})
    aAdd(aPergs, {11, "Hist�rico", cObserv, ".T.", ".T.", .T.})
 
    //Se a pergunta for confirmada
    If ParamBox(aPergs, "Informe os par�metros", , , , , , , , , .F., .F.)
        cCliente := MV_PAR03
        cLoja    := MV_PAR04
        cObserv  := MV_PAR05
        cNomeCli := Posicione('SA1', 1, FWxFilial('SA1') + cCliente + cLoja, "A1_NOME")
 
        //Se for inclus�o, adiciona no calend�rio
        If nOpcao == 3
            aItens := aClone(aInfoDia[OBJETO]:oListBoxContent:aItems)
            aAdd(aItens, cCliente + " - " + SubStr(cNomeCli, 1, 15))
            oCalend:SetInfo(oCalend:aCell[nPosCell][ID], aClone(aItens))
 
        //Se for exclus�oRetira o elemento do array e depois define no calend�rio
        ElseIf nOpcao == 5
            aItens := aClone(aInfoDia[OBJETO]:oListBoxContent:aItems)
            aDel(aItens, nSelecao)
            aSize(aItens, Len(aItens) - 1)
            oCalend:SetInfo(oCalend:aCell[nPosCell][ID], aClone(aItens))
        EndIf
    EndIf
Return
