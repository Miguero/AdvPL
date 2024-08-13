/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/22/buscando-o-nome-da-tabela-com-nometab-e-sx2name-maratona-advpl-e-tl-371/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe370
Valida se o usu�rio tem acesso a n�vel espec�fico
@type Function
@author Atilio
@since 27/03/2023
@obs 

    Fun��o NivelUser
    Par�metros
        Recebe o n�vel a ser validado
    Retorno
        Retorna .T. (se o usu�rio N�O tem acesso) ou .F. (se ele tem SIM o acesso)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe370()
    Local aArea     := FWGetArea()
    Local cPaisBkp  := cPaisLoc

    //Para o correto funcionamento, deve ser alterado a variavel publica com o pais (pois internamente da NivelUser ele valida)
    cPaisLoc := "XXX"

    //Valida se o usu�rio tem acesso ao n�vel 6
    If NivelUser("6")
        FWAlertError("O usu�rio N�O tem acesso ao n�vel 6 no m�dulo " + cModulo + " (nivel " + cValToChar(cNivel) + ")", "Teste NivelUser")
    Else
        FWAlertSuccess("O usu�rio tem acesso ao n�vel 6 no m�dulo " + cModulo, "Teste NivelUser")
    EndIf
 
    cPaisLoc := cPaisBkp
    FWRestArea(aArea)
Return
