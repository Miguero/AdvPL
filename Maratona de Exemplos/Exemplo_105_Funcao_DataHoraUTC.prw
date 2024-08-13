/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/21/buscando-a-data-e-hora-no-formato-utc-com-a-funcao-datahorautc-maratona-advpl-e-tl-105/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe105
Retorna a data e hora no formato UTC
@type Function
@author Atilio
@since 12/12/2022
@obs 
    Fun��o DataHoraUTC
    Par�metros
        + Data a ser validada
        + Hora no formato HH:MM:SS
        + Estado a ser analisado o hor�rio
        + .T. se retorna como hor�rio de ver�o ou .F. se n�o
        + .T. se o servidor estiver com o hor�rio de ver�o habilitado
    Retorno
        + String no formato: AAAA-MM-DDTHH:MM:SS-TDZ

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe105()
    Local aArea     := FWGetArea()
    Local dData     := Date()
    Local cHora     := Time()
    Local cEstado   := "SP"
    Local cUTC      := ""

    //Monta o hor�rio UTC
    cUTC := DataHoraUTC(dData, cHora, cEstado)
    FWAlertInfo("O resultado �: " + cUTC, "Teste DataHoraUTC")

    FWRestArea(aArea)
Return
