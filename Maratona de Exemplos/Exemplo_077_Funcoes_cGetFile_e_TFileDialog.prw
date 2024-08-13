/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/24/navegando-em-pastas-com-as-funcoes-cgetfile-e-tfiledialog-maratona-advpl-e-tl-077/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe077
Exemplo de telas para selecionar arquivos
@type Function
@author Atilio
@since 08/12/2022
@see https://tdn.totvs.com/display/tec/cGetFile e https://tdn.totvs.com/display/tec/tFileDialog
@obs 
    Fun��o cGetFile
    Par�metros
        + cMascara     , Caractere      , M�scara de arquivos
        + cTitulo      , Caractere      , T�tulo da janela
        + nMascPadrao  , Num�rico       , Indica o n�mero da m�scara
        + cDirInicial  , Caractere      , Pasta inicial
        + lSalvar      , L�gico         , Se .T. ser� usado um bot�o Salvar se n�o ser� usado o bot�o Abrir
        + nOpcoes      , Num�rico       , Op��es da janela ( GETF_MULTISELECT ; GETF_NOCHANGEDIR ; GETF_LOCALFLOPPY ; GETF_LOCALHARD ; GETF_NETWORKDRIVE ; GETF_SHAREWARE ; GETF_RETDIRECTORY ; GETF_HIDDENDIR ; GETF_SYSDIR ; )
        + lArvore      , L�gico         , Se .T. ir� exibir pasta da Protheus Data sen�o s� da m�quina local
        + lKeepCase    , L�gico         , Se .T. mant�m o nome original sen�o retorna o nome tudo min�sculo
    Retorno
        + cRet         , Caractere      , Retorna o nome do arquivo selecionado


    Fun��o TFileDialog
    Par�metros
        + cMascara     , Caractere      , M�scara de arquivos
        + cTitulo      , Caractere      , T�tulo da janela
        + nParam3      , Num�rico       , Compatibilidade (n�o utilizado)
        + cDirInicial  , Caractere      , Pasta inicial
        + lSalvar      , L�gico         , Se .T. ser� usado um bot�o Salvar se n�o ser� usado o bot�o Abrir
        + nOpcoes      , Num�rico       , Op��es da janela (se n�o passar nada ser� apenas um arquivo; se usar GETF_MULTISELECT�ser� m�ltiplos arquivos; se usar GETF_RETDIRECTORY ser� usado pastas)
    Retorno
        + cRet         , Caractere      , Retorna o nome do(s) arquivo(s) selecionado(s) ou da pasta selecionada conforme nOpcoes

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe077()
    Local aArea     := FWGetArea()
    Local cDirIni   := GetTempPath()
    Local cTipArq   := ""
    Local cTitulo   := ""
    Local lSalvar   := .F.
    Local cArqSel   := ""
    Local cPasta    := ""

    //cGetFile - Sele��o de arquivo txt / xml podendo alterar pasta (local e servidor)
    cArqSel := cGetFile( 'Arquivo TXT|*.txt| Arquivo XML|*.xml',; //[ cMascara], 
                         'Selecao de Arquivos',;                  //[ cTitulo], 
                         0,;                                      //[ nMascpadrao], 
                         'C:\TOTVS\',;                            //[ cDirinicial], 
                         .F.,;                                    //[ lSalvar], 
                         GETF_LOCALHARD  + GETF_NETWORKDRIVE,;    //[ nOpcoes], 
                         .T.)                                     //[ lArvore] 
    
    If ! Empty(cArqSel)
        FWAlertInfo("O arquivo escolhido � "+cArqSel, "Teste 1 - cGetFile")
    EndIf




    //cGetFile - Sele��o de arquivo txt sem op��o de alterar pasta
    cArqSel := cGetFile( 'Selecione um Arquivo (*.*)|*.*',;                            //[ cMascara], 
                         'Selecao de Arquivos',;                                       //[ cTitulo], 
                         0,;                                                           //[ nMascpadrao], 
                         'C:\TOTVS\',;                                                 //[ cDirinicial], 
                         .F.,;                                                         //[ lSalvar], 
                         GETF_LOCALHARD  + GETF_NETWORKDRIVE + GETF_NOCHANGEDIR,;      //[ nOpcoes], 
                         .F.)                                                          //[ lArvore]

    If ! Empty(cArqSel)
        FWAlertInfo("Arquivos escolhido: "+cArqSel, "Teste 2 - cGetFile")
    EndIf




    //TFileDialog - Selecionando apenas 1 arquivo
    cTipArq := "Todas extens�es (*.*) | Arquivos texto (*.txt) | Arquivos com separa��es (*.csv)"
    cTitulo := "Sele��o de Arquivos para Processamento"
    cArqSel := tFileDialog(;
        cTipArq,;  // Filtragem de tipos de arquivos que ser�o selecionados
        cTitulo,;  // T�tulo da Janela para sele��o dos arquivos
        ,;         // Compatibilidade
        cDirIni,;  // Diret�rio inicial da busca de arquivos
        lSalvar,;  // Se for .T., ser� uma Save Dialog, sen�o ser� Open Dialog
        ;          // Se n�o passar par�metro, ir� pegar apenas 1 arquivo; Se for informado GETF_MULTISELECT ser� poss�vel pegar mais de 1 arquivo; Se for informado GETF_RETDIRECTORY ser� poss�vel selecionar o diret�rio
    )

    If ! Empty(cArqSel)
        FWAlertInfo("O arquivo selecionado foi: " + cArqSel, "Teste 1 - TFileDialog")
    EndIf




    //TFileDialog - Selecionando mais de 1 arquivo
    cTipArq := "Todas extens�es (*.*) | Arquivos imagem (*.png) | Arquivos imagem (*.jpg)"
    cTitulo := "Sele��o de M�ltiplos Arquivos para Processamento"
    cArqSel := tFileDialog(;
        cTipArq,;                  // Filtragem de tipos de arquivos que ser�o selecionados
        cTitulo,;                  // T�tulo da Janela para sele��o dos arquivos
        ,;                         // Compatibilidade
        cDirIni,;                  // Diret�rio inicial da busca de arquivos
        lSalvar,;                  // Se for .T., ser� uma Save Dialog, sen�o ser� Open Dialog
        GETF_MULTISELECT;          // Se n�o passar par�metro, ir� pegar apenas 1 arquivo; Se for informado GETF_MULTISELECT ser� poss�vel pegar mais de 1 arquivo; Se for informado GETF_RETDIRECTORY ser� poss�vel selecionar o diret�rio
    )

    If ! Empty(cArqSel)
        FWAlertInfo("Arquivo(s) selecionado(s): " + cArqSel, "Teste 2 - TFileDialog")
    EndIf




    //TFileDialog - Selecionando uma pasta
    cTipArq := ""
    cTitulo := "Sele��o de Pasta para Salvar arquivo"
    cPasta := tFileDialog(;
        cTipArq,;                  // Filtragem de tipos de arquivos que ser�o selecionados
        cTitulo,;                  // T�tulo da Janela para sele��o dos arquivos
        ,;                         // Compatibilidade
        cDirIni,;                  // Diret�rio inicial da busca de arquivos
        lSalvar,;                  // Se for .T., ser� uma Save Dialog, sen�o ser� Open Dialog
        GETF_RETDIRECTORY;         // Se n�o passar par�metro, ir� pegar apenas 1 arquivo; Se for informado GETF_MULTISELECT ser� poss�vel pegar mais de 1 arquivo; Se for informado GETF_RETDIRECTORY ser� poss�vel selecionar o diret�rio
    )

    If ! Empty(cPasta)
        FWAlertInfo("Pasta Selecionada: " + cPasta, "Teste 3 - TFileDialog")
    EndIf

    FWRestArea(aArea)
Return
