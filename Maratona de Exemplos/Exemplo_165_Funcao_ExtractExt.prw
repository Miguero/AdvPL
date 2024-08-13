/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/10/buscando-o-texto-por-extenso-de-um-valor-numerico-atraves-da-extenso-maratona-advpl-e-tl-164/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe165
Fun��o que retorna apenas a extens�o do arquivo
@type Function
@author Atilio
@since 19/12/2022
@obs 
    Fun��o ExtractExt
    Par�metros
        + Nome do arquivo com a extens�o
    Retorno
        + Retorna a extens�o do arquivo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe165()
    Local aArea     := FWGetArea()
    Local cArquivo  := ""
    Local cExtensao := ""

    //Descobrindo a extens�o do arquivo
    cArquivo  := "C:\spool\relatorio.pdf"
    cExtensao := ExtractExt(cArquivo)

    //Exibindo uma mensagem
    FWAlertInfo("O arquivo '" + cArquivo + "' tem a extens�o '" + cExtensao + "'", "Teste com ExtractExt")

    FWRestArea(aArea)
Return
