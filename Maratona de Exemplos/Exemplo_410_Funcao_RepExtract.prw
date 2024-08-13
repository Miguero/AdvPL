/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/12/extraindo-uma-imagem-do-erp-com-a-repextract-maratona-advpl-e-tl-410/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe410
Extrai uma foto de um cadastro para uma pasta do sistema operacional
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o RepExtract
    Par�metros
        + cChave       , Caractere   , Chave com o nome do arquivo no reposit�rio
        + cNome        , Caractere   , Nome do arquivo que ser� gerado no sistema operacional
        + lNeedOpen    , L�gico      , Identifica se precisa abrir o reposit�rio
        + lOverwrite   , L�gico      , Define se ser� sobrescrito caso encontre o arquivo
    Retorno
        + lRet         , L�gico      , Retorna .T. se conseguiu extrair ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe410()
    Local aArea     := FWGetArea()
    Local cBusca    := ""
    Local cFotoProd := ""
    Local cPastaTmp := "C:\spool\"
    
    //Abre o cadastro de produtos
    DbSelectArea('SB1')
    SB1->(DbSetOrder(1)) //B1_FILIAL + B1_COD

    //Pede pro usu�rio inserir uma descri��o e faz a busca com DbSeek
    cBusca := FWInputBox("Insira o c�digo do produto para o DbSeek:")
    If SB1->(MsSeek(FWxFilial("SB1") + AvKey(cBusca, "B1_COD")))

        //Se tiver todo do produto
        If ! Empty(SB1->B1_BITMAP)
            //Define o nome da foto
            cFotoProd := cPastaTmp + "produto_" + Alltrim(SB1->B1_COD)

            //Faz a extra��o da imagem do Protheus
            RepExtract(Alltrim(SB1->B1_BITMAP), cFotoProd)

            //Se deu certo de extrair a imagem, ser� impressa
            If File(cFotoProd + ".bmp") .Or. File(cFotoProd + ".jpg")
                FWAlertSuccess("Foto extra�da com sucesso!", "Teste RepExtract")
            EndIf
        EndIf
    EndIf

    FWRestArea(aArea)
Return
