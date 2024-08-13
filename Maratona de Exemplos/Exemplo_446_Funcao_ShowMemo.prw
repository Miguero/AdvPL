/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/30/abrindo-um-arquivo-texto-com-a-showmemo-maratona-advpl-e-tl-446/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe446
Abre uma tela para visualiza��o de arquivo texto
@type Function
@author Atilio
@since 31/03/2023
@obs 
    Fun��o ShowMemo
    Par�metros
        Recebe o nome do arquivo que ser� aberto
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe446()
    Local aArea     := FWGetArea()
    Local cArquivo  := ""

    //Define o nome do arquivo, e abre ele em tela
    cArquivo := "C:\spool\curso\log_produtos.txt"
    ShowMemo(cArquivo)

	FWRestArea(aArea)
Return
