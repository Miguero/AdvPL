/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/17/convertendo-um-arquivo-do-servidor-para-array-com-filesrvtoarr-maratona-advpl-e-tl-179/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe178
Verifica se um arquivo existe
@type Function
@author Atilio
@since 20/12/2022
@see https://tdn.totvs.com/display/tec/File
@obs 
    Fun��o File
    Par�metros
        + cArquivo     , Caractere   , Nome do arquivo completo com a pasta (pode ser local ou dentro da Protheus Data)
        + nWhere       , Num�rico    , Indica onde ser� feito a pesquisa do arquivo (0=acesso conforme path; 1=diret�rio de instala��o do AppServer; 2=Diret�rio de instala��o do SmartClient)
        + lChangeCase  , L�gico      , Se for .T. o nome ser� convertido tudo para min�sculo sen�o se for .F. mant�m o nome original como veio
    Retorno
        + lRet         , L�gico      , Retorna .T. se o arquivo existir ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe178()
    Local aArea     := FWGetArea()
    Local cArqCompl := "C:\spool\relatorio.pdf"

    //Verifica se o arquivo existe
    If File(cArqCompl)
        FWAlertSuccess("Arquivo encontrado", "Teste File")

    Else
        FWAlertError("Arquivo n�o encontrado", "Teste File")
    EndIf

    FWRestArea(aArea)
Return
