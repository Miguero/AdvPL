/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/11/buscando-o-nome-do-arquivo-atraves-da-funcao-extractfile-maratona-advpl-e-tl-166/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe166
Fun��o que retorna apenas o arquivo
@type Function
@author Atilio
@since 19/12/2022
@obs 
    Fun��o ExtractFile
    Par�metros
        + Nome do arquivo completo com a pasta
    Retorno
        + Retorna apenas o nome do arquivo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe166()
    Local aArea     := FWGetArea()
    Local cArqCompl := ""
    Local cArquivo  := ""

    //Descobrindo a extens�o do arquivo
    cArqCompl := "C:\spool\relatorio.pdf"
    cArquivo  := ExtractFile(cArqCompl)

    //Exibindo uma mensagem
    FWAlertInfo("O caminho completo � '" + cArqCompl + "', o arquivo � '" + cArquivo + "'", "Teste com ExtractFile")

    FWRestArea(aArea)
Return
