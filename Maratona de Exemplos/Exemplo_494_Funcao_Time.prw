/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/06/23/buscando-a-hora-atual-com-time-maratona-advpl-e-tl-494/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe494
Retorna a hora atual do sistema operacional
@type Function
@author Atilio
@since 04/04/2023
@see https://tdn.totvs.com/display/tec/Time
@obs 

    Time
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        + cTime       , Caractere     , Retorna a hora no formato "hh:mm:ss"

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe494()
    Local aArea      := FWGetArea()
    Local cHora      := ""

    //Busca a hora atual
    cHora := Time()

    //Mostra uma mensagem
    FWAlertInfo("Oloko bicho, agora s�o exatamente " + cHora, "Teste Time")

    FWRestArea(aArea)
Return
