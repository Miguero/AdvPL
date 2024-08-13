/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/03/abrindo-um-relatorio-com-a-printerpreview-maratona-advpl-e-tl-392/
*/


//Bibliotecas
#Include "TOTVS.ch"
#Include "TopConn.ch"

/*/{Protheus.doc} User Function zExe392
Abre um arquivo gerado pelo printer.exe antes da impress�o
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o PrinterPreview
    Par�metros
        Objeto que ter� o arquivo aberto
    Retorno
        Fun��o n�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe392()
    Local aArea    := FWGetArea()
	Local cArqRelat  := ""
	Local oPrinter
	
    //Definindo o arquivo que ser� aberto
    cArqRelat := "\spool\matr680.prt"
    
    //Criando um objeto de impress�o e setando o arquivo
    oPrinter := TMSPrinter():New()
    oPrinter:SetFile(cArqRelat,.F.)
    oPrinter:SetPortrait()
    oPrinter:SetPaperSize(9)

    //Exibe o relat�rio em tela
    PrinterPreview(oPrinter)
 
    FWRestArea(aArea)
Return
