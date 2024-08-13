/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/25/renomeando-arquivos-com-a-funcao-frename-maratona-advpl-e-tl-195/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe195
Fun��o que renomeia o arquivo
@type Function
@author Atilio
@since 11/02/2023
@see https://tdn.totvs.com/display/tec/FRename
@obs 
    Fun��o FRename
    Par�metros
        + cArquivo    , Caractere        , Nome do arquivo que ser� renomeado
        + cNovoArq    , Caractere        , Nome novo do arquivo
        + nParam3     , Indefinido       , Par�metro mantido por compatibilidade
        + lChangeCase , L�gico           , Se .T. � convertido tudo para min�sculo sen�o mant�m original
    Retorno
        + nRet        , Num�rico         , Retorna 0 se a opera��o foi realizada com sucesso ou -1 se falhar

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe195()
    Local aArea     := FWGetArea()
    Local cArqOrig  := "C:\spool\tst.txt"
    Local cArqNovo  := "C:\spool\tst_novo.txt"
    Local nResult

    //Aciona a fun��o para renomear os arquivos
    nResult := FRename(cArqOrig, cArqNovo)

    //Se foi renomeado com sucesso
    If nResult == 0
        FWAlertSuccess("Arquivo renomeado com sucesso!", "Teste FRename")
    Else
        FWAlertError("Houve uma falha ao renomear o arquivo, erro #" + cValToChar(FError()), "Teste FRename")
    EndIf

    FWRestArea(aArea)
Return
