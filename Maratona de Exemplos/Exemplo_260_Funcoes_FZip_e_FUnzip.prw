/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/27/abrindo-uma-tela-para-marcacao-de-registros-com-a-f_opcoes-maratona-advpl-e-tl-261/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe260
Exemplo de como compactar arquivos para o formato .zip ou descompactar eles
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/FZip e https://tdn.totvs.com/display/tec/FUnZip
@obs 

    Fun��o FZip
    Par�metros
		+ cArquivoZip    , Caractere       , Nome do arquivo que ser� criado
        + aArquivos      , Array           , Lista de arquivos que ser�o compactados
        + cBaseDir       , Caractere       , Diret�rio para n�o incluir dentro do arquivo
        + cSenha         , Caractere       , Define uma senha caso queira utilizar uma seguran�a criptografada
    Retorno
        + nRet           , Num�rico        , Retorna 0 se conseguiu compactar

    Fun��o FUnzip
    Par�metros
		+ cArquivoZip    , Caractere       , Nome do arquivo que ser� descompactado
        + cPasta         , Caractere       , Nome da pasta onde ser� descompactado
        + cSenha         , Caractere       , Senha que ser� utilizada na descompacta��o (caso tenha sido utilizado na compacta��o)
    Retorno
        + nRet           , Num�rico        , Retorna 0 se conseguiu descompactar
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe260()
    Local aArea      := FWGetArea()
    Local cArquiZip  := "C:\spool\teste.zip"
    Local aArquivos  := {}
    Local cSenhaZip  := "tst@123"
    Local nRetorno   := 0

    //Adiciona os arquivos que ser�o compactados
    aAdd(aArquivos, "C:\spool\log_auto.txt")
    

    //Faz a compacta��o dos arquivos e define uma senha
    nRetorno := FZip(cArquiZip, aArquivos, , cSenhaZip)
    If nRetorno == 0
        FWAlertSuccess("Sucesso na compacta��o!", "Teste FZip")
    Else
        FWAlertError("Falha na compacta��o!", "Teste FZip")
    EndIf

    //Agora faz a descompacta��o
    nRetorno := FUnZip(cArquiZip, "C:\spool\teste", cSenhaZip)
    If nRetorno == 0
        FWAlertSuccess("Sucesso na descompacta��o!", "Teste FUnZip")
    Else
        FWAlertError("Falha na descompacta��o!", "Teste FUnZip")
    EndIf

    FWRestArea(aArea)
Return
