/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/09/copiando-dados-com-o-comando-copy-to-maratona-advpl-e-tl-093/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe093
Exemplo para copiar dados de uma tabela para um arquivo
@type Function
@author Atilio
@since 11/12/2022
@obs 
    Tamb�m � poss�vel mandar direto para uma porta de impress�o, por exemplo:
    cTexto := "teste"
����MemoWrite("c:\teste\arquivo.txt", cTexto)
����Copy File "c:\teste\arquivo.txt" To LPT1

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe093()
    Local aArea     := FWGetArea()
    Local cPasta    := GetTempPath()
    Local cArquivo  := "produtos.txt"
    Local cDelim    := ""

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1)) // Filial + C�digo

    //Realiza a exporta��o
    Copy To (cPasta + cArquivo) DELIMITED WITH (cDelim)

    //Abre o arquivo
    ShellExecute("OPEN", cArquivo, "", cPasta, 1)

    FWRestArea(aArea)
Return
