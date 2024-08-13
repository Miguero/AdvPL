/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/02/separa-pedacos-do-nome-de-um-arquivo-com-a-splitpath-maratona-advpl-e-tl-453/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe453
Pega o caminho do arquivo e retorna peda�os dela sendo drive, pasta, nome do arquivo e extens�o
@type Function
@author Atilio
@since 31/03/2023
@see https://tdn.totvs.com/display/tec/SplitPath
@obs 

    Fun��o SplitPath
    Par�metros
        + cArquivo    , Caractere      , Indica o nome do arquivo que ser� processado
        + cDrive      , Caractere      , Retorna o drive do arquivo
        + cDiretorio  , Caractere      , Retorna a pasta do arquivo
        + cNome       , Caractere      , Retorna o nome do arquivo
        + cExtensao   , Caractere      , Retorna a extens�o do arquivo
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe453()
    Local aArea      := FWGetArea()
    Local cArquivo   := "C:\spool\arquivo.txt"
    Local cDrive     := ""
    Local cDiretorio := ""
    Local cNome      := ""
    Local cExtensao  := ""
    Local cMensagem  := ""

    //Realiza a separa��o do arquivo ja devolvendo extens�o, pasta, etc
    SplitPath(cArquivo, @cDrive, @cDiretorio, @cNome, @cExtensao)

    //Monta a mensagem e exibe
    cMensagem := "Arquivo: "  + cArquivo + CRLF
    cMensagem += "Drive:"     + cDrive     + CRLF
    cMensagem += "Diret�rio:" + cDiretorio + CRLF
    cMensagem += "Nome:"      + cNome      + CRLF
    cMensagem += "Extens�o:"  + cExtensao
    FWAlertInfo(cMensagem, "Teste SplitPath")

    FWRestArea(aArea)
Return
