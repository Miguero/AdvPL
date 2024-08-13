/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/07/validando-se-uma-pasta-existe-com-a-funcao-existdir-maratona-advpl-e-tl-159/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe159
Verifica se uma pasta existe
@type Function
@author Atilio
@since 18/12/2022
@see https://tdn.totvs.com/display/tec/ExistDir
@obs 
    Fun��o ExistCpo
    Par�metros
        + cPath        , Caractere   , Nome da pasta a ser validada
        + uParam2      , Indefinido  , Compatibilidade
        + lChangeCase  , L�gico      , Se .T. tudo ser� convertido para min�sculo sen�o se .F. mant�m a informa��o original
    Retorno
        + lRet         , L�gico      , .T. Se a pasta existir ou .F. se ela n�o existir

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe159()
    Local aArea     := FWGetArea()
    Local cPastaSO  := "C:\spool\"
    Local cPastaInt := "\x_teste\"

    //Teste 1 verificando a pasta no S.O.
    If ! ExistDir(cPastaSO)
        MakeDir(cPastaSO)
        FWAlertSuccess("Pasta '" + cPastaSO + "' criada", "Teste 1 Pasta S.O. - ExistDir")
    Else
        FWAlertInfo("Pasta '" + cPastaSO + "' j� existe", "Teste 1 Pasta S.O. - ExistDir")
    EndIf

    //Teste 2 verificando a pasta na Protheus Data
    If ! ExistDir(cPastaInt)
        MakeDir(cPastaInt)
        FWAlertSuccess("Pasta '" + cPastaInt + "' criada", "Teste 2 Pasta Interna - ExistDir")
    Else
        FWAlertInfo("Pasta '" + cPastaInt + "' j� existe na Protheus Data", "Teste 2 Pasta Interna - ExistDir")
    EndIf

    FWRestArea(aArea)
Return
