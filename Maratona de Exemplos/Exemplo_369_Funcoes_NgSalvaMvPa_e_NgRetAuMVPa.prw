/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/21/fazendo-backup-dos-parametros-em-memoria-com-ngsalvamvpa-e-ngretaumvpa-maratona-advpl-e-tl-369/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe369
Exemplo de fun��o que armazena o conte�do dos par�metros em um backup sendo poss�vel depois retornar esse backup
@type Function
@author Atilio
@since 30/11/2022
@obs 
    Fun��o AtfSaveMvVar
        * N�o possui par�metros, nem retorno *

    Fun��o AtfRestMvPar
        * N�o possui par�metros, nem retorno *

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe369()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""
    
    //Mostra uma pergunta qualquer ao usu�rio
    Pergunte("A311TES", .F.)
    cMensagem += "Ap�s o Pergunte da A311TES, o MV_PAR02 � '" + MV_PAR02 + "' " + CRLF

    //Faz um backup dos MV_PAR em mem�ria
    aBackup := NgSalvaMvPa()
    cMensagem += "Foi realizado um backup" + CRLF

    //Aqui pode ser feito outras tratativas, acionar ParamBox, Pergunte, etc
    Pergunte("A410INCREM", .F.)
    cMensagem += "Ap�s o Pergunte da A410INCREM, o MV_PAR02 � '" + MV_PAR02 + "' " + CRLF

    //Volta esse backup que estava em mem�ria
    NgRetAuMVPa(aBackup)
    cMensagem += "Ap�s o voltar o Backup, o MV_PAR02 � '" + MV_PAR02 + "' " + CRLF

    ShowLog(cMensagem)

    FWRestArea(aArea)
Return
