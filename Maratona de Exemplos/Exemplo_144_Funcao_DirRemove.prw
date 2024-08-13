/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/12/30/apagando-uma-pasta-com-a-dirremove-maratona-advpl-e-tl-144/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe144
Fun��o que apaga uma pasta
@type Function
@author Atilio
@since 16/12/2022
@obs 
    Fun��o DirRemove
    Par�metros
        + Indica o nome da pasta a ser apagada
        + Compatibilidade
        + Se .T. ser� convertido tudo para min�sculo o nome da pasta ou .F. mant�m original
    Retorno
        + .T. se foi poss�vel apagar a pasta ou .F. se n�o foi

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe144()
    Local aArea      := FWGetArea()
    Local cPasta     := ""

    //Exclui uma pasta local
    cPasta := "C:\spool\tst1\"
    If DirRemove(cPasta)
        FWAlertSuccess("A pasta '" + cPasta + "' foi excluida com sucesso", "Teste 1 DirRemove")
    Else
        FWAlertError("Falha ao excluir a pasta '" + cPasta + "' ", "Teste 1 DirRemove")
    EndIf



    //Exclui uma pasta dentro da Protheus Data
    cPasta := "\system\tst2\"
    If DirRemove(cPasta)
        FWAlertSuccess("A pasta '" + cPasta + "' foi excluida com sucesso", "Teste 2 DirRemove")
    Else
        FWAlertError("Falha ao excluir a pasta '" + cPasta + "' ", "Teste 2 DirRemove")
    EndIf

    FWRestArea(aArea)
Return
