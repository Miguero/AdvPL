/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/15/apagando-arquivos-e-verificando-erros-com-ferase-e-ferror-maratona-advpl-e-tl-174/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe174
Fun��o que apaga um arquivo
@type Function
@author Atilio
@since 20/12/2022
@see https://tdn.totvs.com/display/tec/FErase e https://tdn.totvs.com/display/tec/FError
@obs 
    Fun��o FErase
    Par�metros
        + cArquivo     , Caractere   , Nome do arquivo completo com a pasta (pode ser local ou dentro da Protheus Data)
        + xParam       , Indefinido  , Compatibilidade
        + lChangeCase  , L�gico      , Se for .T. o nome ser� convertido tudo para min�sculo sen�o se for .F. mant�m o nome original como veio
    Retorno
        + nRet         , Num�rico    , Retorna 0 se foi com sucesso ou -1 se houve falha

    Fun��o FError
    Par�metros
        N�o tem par�metros
    Retorno
        + nRet         , Num�rico    , Retorna o n�mero da opera��o de -1 a 690

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe174()
    Local aArea     := FWGetArea()
    Local cArqCompl := "C:\spool\relatorio.pdf"

    //Tenta fazer a exclus�o do arquivo
    If FErase(cArqCompl) == 0
        FWAlertSuccess("Arquivo foi exclu�do com sucesso", "Teste FErase")

    Else
        FWAlertError("Houve uma falha na exclus�o do arquivo, erro #" + cValToChar(FError()), "Teste FErase")
    EndIf

    FWRestArea(aArea)
Return
