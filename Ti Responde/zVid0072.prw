/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2024/08/13/como-extrair-todas-as-imagens-do-rpo-em-uma-pasta-ti-responde-0072/ 
    
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zVid0072
Fun��o para extrair as imagens do RPO para dentro de uma pasta
@author Atilio
@since 20/02/2023
@version 1.0
@type function
/*/

User Function zVid0072()
	Local aArea    := FWGetArea()
    Local cTitulo  := "Selecione a pasta para a extra��o de arquivos do RPO"
    Local cDirIni  := GetTempPath()
    Local cTipArq  := ""
    Local lSalvar  := .F.
    Private cPasta := ""

    //Abre a tela apra selecionar uma pasta
    cPasta := tFileDialog(;
        cTipArq,;                  // Filtragem de tipos de arquivos que ser�o selecionados
        cTitulo,;                  // T�tulo da Janela para sele��o dos arquivos
        ,;                         // Compatibilidade
        cDirIni,;                  // Diret�rio inicial da busca de arquivos
        lSalvar,;                  // Se for .T., ser� uma Save Dialog, sen�o ser� Open Dialog
        GETF_RETDIRECTORY;         // Se n�o passar par�metro, ir� pegar apenas 1 arquivo; Se for informado GETF_MULTISELECT ser� poss�vel pegar mais de 1 arquivo; Se for informado GETF_RETDIRECTORY ser� poss�vel selecionar o diret�rio
    )

    //Se tem a pasta e ela existe
    If ! Empty(cPasta) .And. ExistDir(cPasta)

        //Se o �ltimo caractere n�o for uma barra, adiciona, ex.: "C:\pasta" -> "C:\pasta\"
        cPasta := Alltrim(cPasta)
        If Right(cPasta, 1) != "\"
            cPasta += "\"
        EndIf

        //Aciona a extra��o de arquivos
        Processa({|| fExtrai()}, 'Processando...')
    EndIf
	
	FWRestArea(aArea)
Return

Static Function fExtrai()
    Local aArea      := FWGetArea()
    Local aArquivos  := {}
    Local cArqui     := ""
    Local nArqAtu    := 0
    Local nTotal     := 0

    //Busca todos os arquivos que sejam do tipo PNG
    aArquivos := GetResArray("*.png")

    //Define o tamanho da r�gua
    nTotal := Len(aArquivos)
    ProcRegua(nTotal)

    //Percorre todos os arquivos
    For nArqAtu := 1 To nTotal
        //Incrementa a r�gua
        IncProc("Extraindo arquivo " + cValToChar(nArqAtu) + " de " + cValToChar(nTotal) + "...")

        //Pega o nome do arquivo atual
        cArqui := aArquivos[nArqAtu]

        //Extrai o arquivo dentro da pasta selecionada
        Resource2File(cArqui, cPasta + cArqui)
    Next
	
	//Abre a pasta
	ShellExecute("OPEN", "explorer.exe", cPasta, "C:\", 1)

    FWRestArea(aArea)
Return
