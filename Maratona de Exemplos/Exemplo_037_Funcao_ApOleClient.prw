/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/09/14/funcao-apoleclient-para-validar-a-instalacao-de-um-aplicativo-do-office-maratona-advpl-e-tl-037/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe037
Exemplo de fun��o que verifica se um software do pacote Office est� instalado
@type Function
@author Atilio
@since 28/11/2022
@obs 
    Fun��o ApOleClient
    Par�metros
        + Nome do aplicativo (como MSEXCEL; MSPROJECT; MSVISIO)
    Retorno
        + Retorna .T. se � encontrou o aplicativo instaldo ou .F. se n�o encontrar

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe037()
    Local aArea     := FWGetArea()

    //Verifica se o Excel est� instalado
    If ApOleClient("MsExcel")
        FWAlertInfo("O Excel esta instalado na m�quina!", "Excel")
    EndIf

    //Verifica se o Visio N�O est� instalado
    If ! ApOleClient("MsVisio")
        FWAlertInfo("O Visio n�o esta instalado na m�quina!", "Visio")
    EndIf

    FWRestArea(aArea)
Return
