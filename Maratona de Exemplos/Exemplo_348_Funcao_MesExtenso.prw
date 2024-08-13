/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/11/buscando-o-nome-da-moeda-atraves-da-moeda2nome-maratona-advpl-e-tl-349/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe348
Retorna o nome do m�s conforme data passada
@type Function
@author Atilio
@since 25/03/2023
@obs 

    Fun��o MesDia
    Par�metros
        Recebe a Data a ser verificada ou o n�mero do M�s
    Retorno
        Retorna o nome do m�s

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe348()
	Local aArea     := FWGetArea()
    Local dDtHoje   := Date()
    Local nMesTst   := 5
    Local cMesExten := ""

    //Pega o nome do m�s conforme uma vari�vel data
    cMesExten := MesExtenso(dDtHoje)
    FWAlertInfo("O resultado � " + cMesExten, "Teste 1 MesExtenso")

    //Pega o nome do m�s conforme uma vari�vel num�rica
    cMesExten := MesExtenso(nMesTst)
    FWAlertInfo("O resultado � " + cMesExten, "Teste 2 MesExtenso")

    FWRestArea(aArea)
Return
