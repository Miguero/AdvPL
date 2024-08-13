/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/03/pegando-a-diferenca-entre-dois-horarios-com-a-funcao-elaptime-maratona-advpl-e-tl-151/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe151
Fun��o que faz a compara��o entre duas vari�veis de horas
@type Function
@author Atilio
@since 18/12/2022
@see https://tdn.totvs.com/display/tec/ElapTime
@obs 
    Fun��o ElapTime
    Par�metros
        + cHoraInicial   , Caractere    , Indica a hora inicial da compara��o
        + cHoraFinal     , Caractere    , Indica a hora final para compara��o
    Retorno
        + cRet           , Caractere    , Retorna a diferen�a no formato hh:mm:ss

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe151()
    Local aArea       := FWGetArea()
    Local cHoraIni    := "14:10:35"
    Local cHoraFim    := "16:09:40"
    Local cDiferenca  := ""

    //Pega a diferen�a, e se passar de 1 hora, mostra uma mensagem
    cDiferenca := ElapTime(cHoraIni, cHoraFim)
    If cDiferenca > "01:00:00"
        FWAlertInfo("A diferen�a passa de 1 hora: " + cDiferenca, "Teste ElapTime")
    EndIf

    FWRestArea(aArea)
Return
