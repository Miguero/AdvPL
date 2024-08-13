/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/18/convertendo-um-arquivo-para-array-com-filetoarr-maratona-advpl-e-tl-180/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe180
Faz a leitura de um arquivo para um Array
@type Function
@author Atilio
@since 20/12/2022
@obs 
    Fun��o FileToArr
    Par�metros
        + Nome do arquivo completo com a pasta (pode ser local ou dentro da Protheus Data)
    Retorno
        + Array com o conte�do do arquivo sendo cada posi��o 1 linha do arquivo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe180()
    Local aArea     := FWGetArea()
    Local cArqCompl := "C:\spool\log_auto.txt"
    Local aConteudo := {}

    //Busca o conte�do do arquivo na m�quina
    aConteudo := FileToArr(cArqCompl)
    FWAlertInfo("Foi encontrado " + cValToChar(Len(aConteudo)) + " linha(s) de conte�do", "Teste com FileToArr")

    FWRestArea(aArea)
Return
