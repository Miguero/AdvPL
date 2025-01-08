/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/12/31/criando-visualizacao-de-texto-com-numero-de-linha-e-pesquisa-ti-responde-0112/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} zVid0112
Fonte demonstrando em como acionar a zTiLog
@type user function
@author Atilio
@since 25/01/2024
/*/

User Function zVid0112()
    Local aArea  := FWGetArea()
    Local cTexto := ""
    Local cQuery := ""

    //Primeiro teste, vamos acionar sem nada
    u_zTiLog()

    //Segundo teste, montando um texto qualquer
    cTexto += "O Terminal de Informa��o nasceu em 2012." + CRLF
    cTexto += "De l� para c�, foram v�rios artigos e conte�dos compartilhados com a comunidade." + CRLF
    cTexto += "Agradecemos sempre o carinho e o feedback recebido dos internautas." + CRLF
    cTexto += "Um grande abra�o!" + CRLF
    cTexto += CRLF
    cTexto += "Dan"
    u_zTiLog(cTexto)

    //Terceiro teste, for�ando um erro (update em tabela que n�o existe)
    cQuery := " UPDATE TABELA_AAA_BBB_CCC " + CRLF
    cQuery += " SET CAMPO_1 = 'ZZ" + Time() + "'  " + CRLF
    cQuery += " WHERE CAMPO_2 = 'F0001' " + CRLF
    If TCSqlExec(cQuery) < 0
        cTexto := "Houve uma falha no sistema!" + CRLF + CRLF
        cTexto += "Query executada:" + CRLF
        cTexto += cQuery + CRLF
        cTexto += "Mensagem de erro:" + CRLF + CRLF
        cTexto += TCSQLError() + CRLF
        u_zTiLog(cTexto)
    EndIf

    FWRestArea(aArea)
Return

/*/{Protheus.doc} zTiLog
Exemplo de tela para an�lise de logs com op��o como Ctrl+F e n�mero de linhas
@type user function
@author Atilio
@since 25/01/2024
@version version
@param cTextoLog, Caractere, Conte�do textual que ser� demonstrado no log
@example
    u_zTiLog("beluguinha, belug�o, acesse Terminal de Informa��o")
/*/
User Function zTiLog(cTextoLog)
    Local aArea       := FWGetArea()
    Local oDlgAux
    Local cJanTitulo := "An�lise de Logs do Sistema"
    //Tamanho da janela
    Local aTamanho := FwGetDialogSize()
    Local nJanLarg := aTamanho[4] / 2
    Local nJanAltu := aTamanho[3] / 2
    //Blocos de c�digo dos bot�es
    Local bBlocoCopi  := {|| fCopiar(cTextoLog)}
    Local bBlocoSalv  := {|| fSalvar(cTextoLog)}
    Local bBlocoFech  := {|| oDlgAux:DeActivate()}
    //Vari�veis dos objetos de navega��o de p�ginas
	Local cHtmlText   := ""
	Local nPort       := 0
	Local oPanelHtml
	Local oWebChannel
	Local oWebEngine
    //Par�metros vindos
    Default cTextoLog := "N�o veio nenhum texto..."

    //Cria o HTML base
	cHtmlText := fMontaHtml(cTextoLog)

    //Instancia a classe, criando uma janela
    oDlgAux := FWDialogModal():New()
    oDlgAux:SetTitle(cJanTitulo)
    oDlgAux:SetSize(nJanAltu, nJanLarg)
    oDlgAux:EnableFormBar(.T.)
    oDlgAux:CreateDialog()
    oDlgAux:CreateFormBar()
    oDlgAux:AddButton("Fechar", bBlocoFech, "Fechar", , .T., .F., .T., )
    oDlgAux:AddButton("Copiar", bBlocoCopi, "Copiar", , .T., .F., .T., )
    oDlgAux:AddButton("Salvar", bBlocoSalv, "Salvar", , .T., .F., .T., )

    //Busca o painel principal da dialog
    oPanelHtml := oDlgAux:GetPanelMain()
    
    //Prepara o conector WebSocket
    oWebChannel := TWebChannel():New()
    nPort := oWebChannel::connect()

    //Cria componente
    oWebEngine := TWebEngine():New(oPanelHtml, 0, 0, 100, 100, , nPort)
    oWebEngine:SetHtml(cHtmlText)
    oWebEngine:Align := CONTROL_ALIGN_ALLCLIENT

    //Abre a janela
    oDlgAux:Activate()

    FWRestArea(aArea)
Return

//Refer�ncia: https://stackoverflow.com/questions/1995370/adding-line-numbers-to-html-textarea
Static Function fMontaHtml(cTexto)
	Local cHtml := ""

	cHtml += '<html>' + CRLF
	cHtml += '<head>' + CRLF
    cHtml += '	<meta charset="UTF-8">' + CRLF
	cHtml += '	<script language="javascript" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.js"></script>' + CRLF
	cHtml += '	<script language="javascript" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/mode/perl/perl.min.js"></script>' + CRLF
	cHtml += '	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/codemirror.min.css"></link>' + CRLF
	cHtml += '	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/6.65.7/theme/abbott.min.css"></link>' + CRLF
	cHtml += '' + CRLF
	cHtml += '	<style>' + CRLF
	cHtml += '	.CodeMirror {' + CRLF
	cHtml += '		width: 100%;' + CRLF
	cHtml += '		height: 90%;' + CRLF
	cHtml += '		border: 1px #000 solid;' + CRLF
	cHtml += '		border-radius: 8px;' + CRLF
	cHtml += '	}' + CRLF
	cHtml += '	</style>' + CRLF
	cHtml += '</head>' + CRLF
	cHtml += '<body>' + CRLF
	cHtml += '' + CRLF
	cHtml += '	<textarea id="code" name="code" wrap="hard" readonly>' + cTexto + '</textarea>' + CRLF
	cHtml += '  <p><font color="red">Observa��o:</font> Para pesquisar, clique em alguma parte do texto e pressione <strong>Ctrl+F</strong></p>' + CRLF
	cHtml += '' + CRLF
	cHtml += '	<script>' + CRLF
	cHtml += '		var editor = CodeMirror.fromTextArea(document.getElementById("code"), {' + CRLF
	cHtml += '			lineNumbers: true,' + CRLF
    cHtml += '			lineWrapping: true,' + CRLF
	cHtml += '			mode: "text",' + CRLF
	cHtml += '			theme: "",' + CRLF
	cHtml += '		});' + CRLF
	cHtml += '	</script>' + CRLF
	cHtml += '</body>' + CRLF
	cHtml += '</html>' + CRLF
Return cHtml

Static Function fSalvar(cTexto)
    Local cTipArq := "Arquivos texto (*.txt) | Arquivos de log (*.log)"
    Local cTitulo := "Grava��o de arquivo"
    Local cDirIni := GetTempPath()
    Local lSalvar := .T.
    Local cArqSel := ""

    //Aciona a tela para gravar o arquivo
    cArqSel := tFileDialog(;
        cTipArq,;  // Filtragem de tipos de arquivos que ser�o selecionados
        cTitulo,;  // T�tulo da Janela para sele��o dos arquivos
        ,;         // Compatibilidade
        cDirIni,;  // Diret�rio inicial da busca de arquivos
        lSalvar,;  // Se for .T., ser� uma Save Dialog, sen�o ser� Open Dialog
        ;          // Se n�o passar par�metro, ir� pegar apenas 1 arquivo; Se for informado GETF_MULTISELECT ser� poss�vel pegar mais de 1 arquivo; Se for informado GETF_RETDIRECTORY ser� poss�vel selecionar o diret�rio
    )

    //Efetua a grava��o do arquivo
    If ! Empty(cArqSel)
        MemoWrite(cArqSel, cTexto)
    EndIf
Return

Static Function fCopiar(cTexto)
    //Copia o texto para a �rea de transfer�ncia em mem�ria (similar a selecionar tudo e apertar Ctrl+C)
    CopyToClipBoard(cTexto)
    FWAlertSuccess("Texto copiado para �rea de transfer�ncia, agora basta voc� usar o atalho Ctrl+V para colar onde voc� deseja.", "Sucesso")
Return
