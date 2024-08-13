/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/17/validando-se-um-arquivo-existe-com-a-funcao-file-maratona-advpl-e-tl-178/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe179
Faz a leitura de um arquivo da Protheus Data para um Array
@type Function
@author Atilio
@since 20/12/2022
@obs 
    Fun��o FileSrvToArr
    Par�metros
        + Nome do arquivo completo com a pasta (pode ser local ou dentro da Protheus Data)
        + Indica onde ser� feito a pesquisa do arquivo (0=acesso conforme path; 1=diret�rio de instala��o do AppServer; 2=Diret�rio de instala��o do SmartClient)
        + Se for .T. o nome ser� convertido tudo para min�sculo sen�o se for .F. mant�m o nome original como veio
    Retorno
        + Array com o conte�do do arquivo sendo cada posi��o 1 linha do arquivo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe179()
    Local aArea     := FWGetArea()
    Local cArqCompl := "\x_logs\log_auto.txt"
    Local aConteudo := {}

    //Busca o conte�do do arquivo no servidor
    aConteudo := FileSrvToArr(cArqCompl)
    FWAlertInfo("Foi encontrado " + cValToChar(Len(aConteudo)) + " linha(s) de conte�do", "Teste com FileSrvToArr")

    FWRestArea(aArea)
Return
