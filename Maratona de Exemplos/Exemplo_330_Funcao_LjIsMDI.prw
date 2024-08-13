/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/02/carregando-uma-imagem-com-a-loadbitmap-maratona-advpl-e-tl-331/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe330
Valida se o programa esta rodando no SIGAMDI (.T.) ou n�o (.F.)
@type Function
@author Atilio
@since 12/03/2023
@obs 

    Fun��o LjIsMDI
    Par�metros
        N�o tem par�metros
    Retorno
        Retorna .T. se estiver rodando via SIGAMDI ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe330()
    Local aArea     := FWGetArea()
    
    //Valida se esta rodando em SIGAMDI
    If LjIsMDI()
        FWAlertSuccess("O programa esta rodando via SIGAMDI", "Teste LjIsMDI")
    Else
        FWAlertError("N�o � SIGAMDI", "Teste LjIsMDI")
    EndIf

    FWRestArea(aArea)
Return
