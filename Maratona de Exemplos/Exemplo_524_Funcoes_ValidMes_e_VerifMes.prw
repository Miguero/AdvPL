/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/08/convertendo-uma-variavel-para-ser-usada-em-query-atraves-da-valtosql-maratona-advpl-e-tl-525/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe524
Fun��o que valida o m�s informado
@type Function
@author Atilio
@since 06/04/2023
@obs 

    Fun��o ValidMes
    Par�metros
        Recebe o n�mero do m�s
    Retorno
        Retorna se � um m�s v�lido (.T.) ou n�o (.F.)


    Fun��o VerifMes
    Par�metros
        Recebe o n�mero do m�s e o ano no formato "MMYYYY"
    Retorno
        Retorna se � um per�odo v�lido (.T.) ou n�o (.F.)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe524()
    Local aArea      := FWGetArea()
    Local nMes       := 0
    Local cMesAno    := ""

    //Faz a valida��o do m�s (tem que estar entre 1 e 12 num�rico)
    nMes := 17
    If ValidMes(nMes)
        FWAlertSucess("O " + cValToChar(nMes) + " � um m�s v�lido", "Teste ValidMes")
    Else
        FWAlertError("O " + cValToChar(nMes) + " � um m�s inv�lido", "Teste ValidMes")
    EndIf

    //Faz a valida��o do m�s / ano, sendo que o m�s tem que ser entre 01 e 12 e o ano tem que ser 4 n�meros, ambos no formato "MMYYYY"
    cMesAno := "042023"
    If VerifMes(cMesAno)
        FWAlertSucess("O " + cMesAno + " � um per�odo v�lido", "Teste VerifMes")
    Else
        FWAlertError("O " + cMesAno + " � um per�odo inv�lido", "Teste VerifMes")
    EndIf

    FWRestArea(aArea)
Return
