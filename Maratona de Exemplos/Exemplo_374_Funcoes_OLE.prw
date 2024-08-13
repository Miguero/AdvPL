/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/24/abrindo-uma-tela-que-sera-fechada-em-determinado-tempo-com-a-omsmsgtime-maratona-advpl-e-tl-375/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe374
Realiza a integra��o com o Microsoft Word, populando um arquivo de modelo dot
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/display/public/framework/OLE_CreateLink e https://tdn.totvs.com/display/public/framework/OLE_NewFile e https://tdn.totvs.com/pages/releaseview.action?pageId=603118924
@obs 

    Fun��o OLE_CreateLink
    Par�metros
        + cOLETypeLink   , Caractere    , String que representa a conex�o com Word
        + cOnError       , Caractere    , Compatibilidade
        + lCabec         , L�gico       , Permite habilitar a edi��o de campos tamb�m no cabe�alho e rodap� do modelo do Word
    Retorno
        + hOleLink       , Num�rico     , Handle criado

    Fun��o OLE_NewFile
    Par�metros
        + hOleLink       , Num�rico     , Handle criado atrav�s da OLE_CreateLink
        + cDocTemplate   , Caractere    , Caminho com o modelo do documento do Word
    Retorno
        Fun��o n�o tem retorno

    Fun��o OLE_SetDocumentVar
    Par�metros
        + hOleLink       , Num�rico     , Handle criado atrav�s da OLE_CreateLink
        + cVariable      , Caractere    , Nome da vari�vel dentro do modelo do Word
        + cValue         , Caractere    , Valor a ser atribu�do
    Retorno
        Fun��o n�o tem retorno

    Fun��o OLE_UpdateFields
    Par�metros
        + hOleLink       , Num�rico     , Handle criado atrav�s da OLE_CreateLink
    Retorno
        Fun��o n�o tem retorno
    
    Fun��o OLE_SaveAsFile
    Par�metros
        + hOleLink       , Num�rico     , Handle criado atrav�s da OLE_CreateLink
        + cFileName      , Caractere    , Nome do arquivo que ser� salvo
        + cPassword      , Caractere    , Senha do arquivo do Word (caso haja)
        + cWritePassword , Caractere    , Senha que ser� definida na escrita do Word
        + lReadOnly      , L�gico       , Atributo se o arquivo ser� somente leitura
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe374()
    Local aArea     := FWGetArea()
    Local aPergs    := {}
	Local cProduto  := Space(TamSX3('B1_COD')[1])
    
    //Adicionando os parametros do ParamBox
    aAdd(aPergs, {1, "Produto",  cProduto,  "", ".T.", "SB1", ".T.", 80,  .F.}) // MV_PAR01
    
    //Se a pergunta for confirma, cria as definicoes do relatorio
    If ParamBox(aPergs, "Informe os par�metros", , , , , , , , , .F., .F.)
        Processa({|| fMontaRel()}, "Processando...")
    EndIf
     
    FWRestArea(aArea)
Return

Static Function fMontaRel()
    Local nHandWord  := 0
    Local cPastaTmp  := GetTempPath()
    Local cArqOrigi  := "\x_dots\produto.dotx"
    Local cArqLocal  := cPastaTmp + "produtos.dotx"
    Local cArqPDF    := cPastaTmp + "produtos.pdf"

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) // Filial + Produto
    If SB1->(MsSeek(FWxFilial("SB1") + MV_PAR01))

        //Copia o dot do servidor para a m�quina local
        __CopyFile(cArqOrigi, cArqLocal)

        //Cria um ponteiro e j� chama o arquivo
        nHandWord := OLE_CreateLink()
        OLE_NewFile(nHandWord, cArqLocal)
        
        //Setando o conte�do das DocVariables
        OLE_SetDocumentVar(nHandWord, "CodProduto",  Alltrim(SB1->B1_COD))
        OLE_SetDocumentVar(nHandWord, "DescProduto", Alltrim(SB1->B1_DESC))
        OLE_SetDocumentVar(nHandWord, "UnidProduto", Alltrim(SB1->B1_UM))
        OLE_SetDocumentVar(nHandWord, "DataGeracao", dToC(Date()))
        OLE_SetDocumentVar(nHandWord, "HoraGeracao", Time())
        
        //Atualizando campos
        OLE_UpdateFields(nHandWord)
        
        //Gera o PDF do documento
        OLE_SetProperty(nHandWord,'208',.F.)
        OLE_SaveAsFile( nHandWord, cArqPDF, , , .F., 17 )

        //Fechando o arquivo e o link
        OLE_CloseFile(nHandWord)
        Sleep(1000)
        OLE_CloseLink(nHandWord)

        //Abre o PDF
        ShellExecute("OPEN", cArqPDF, "", cPastaTmp, 1 )

    Else
        FWAlertError("Produto n�o encontrado!", "Falha")
    EndIf
Return
