/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/11/retornando-o-nome-da-pasta-de-um-arquivo-com-a-extractpath-maratona-advpl-e-tl-167/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe167
Fun��o que retorna apenas a pasta de um arquivo
@type Function
@author Atilio
@since 19/12/2022
@obs 
    Fun��o ExtractPath
    Par�metros
        + Nome do arquivo completo
    Retorno
        + Apenas a pasta

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe167()
    Local aArea     := FWGetArea()
    Local cArquivo  := ""
    Local cPasta    := ""

    //Descobrindo a extens�o do arquivo
    cArquivo  := "C:\spool\relatorio.pdf"
    cPasta    := ExtractPath(cArquivo)

    //Exibindo uma mensagem
    FWAlertInfo("O arquivo '" + cArquivo + "' esta na pasta '" + cPasta + "'", "Teste com ExtractPath")

    FWRestArea(aArea)
Return
