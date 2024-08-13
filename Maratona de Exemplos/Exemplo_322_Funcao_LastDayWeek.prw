/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/29/buscando-o-ultimo-dia-da-semana-com-a-lastdayweek-maratona-advpl-e-tl-322/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe322
Busca o �ltimo dia da semana conforme data passada
@type Function
@author Atilio
@since 11/03/2023
@see https://tdn.totvs.com/display/public/framework/LastDayWeek
@obs 
    Fun��o LastDayWeek
    Par�metros
        + dDate        , Data      , Data de Refer�ncia
    Retorno
        + dLastDay     , Data      , �ltimo dia da semana (sexta feira)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe322()
    Local aArea     := FWGetArea()
    Local dData     := sToD("20230418")
    Local dUltDia

    //Busca o �ltimo dia da semana
    dUltDia := LastDayWeek(dData)

    //Mostra o resultado
    FWAlertInfo("Na data '" + dToC(dData) + "' o �ltimo dia da semana (sexta feira) � '" + dToC(dUltDia) + "'", "Teste LastDayWeek")

    FWRestArea(aArea)
Return
