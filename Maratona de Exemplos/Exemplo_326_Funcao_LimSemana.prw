/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/31/buscando-os-limites-de-uma-semana-com-a-limsemana-maratona-advpl-e-tl-326/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe326
Busca os limites da semana (data inicial e final)
@type Function
@author Atilio
@since 12/03/2023
@obs 

    Fun��o LimSemana
    Par�metros
        Data de Refer�ncia
    Retorno
        Array com o primeiro e �ltimo dia da semana

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe326()
    Local aArea     := FWGetArea()
    Local dData     := sToD("20230315")
    Local aDias     := {}
    Local dPriDia
    Local dUltDia

    //Busca os limites da semana
    aDias   := LimSemana(dData)
    dPriDia := aDias[1]
    dUltDia := aDias[2]

    //Mostra o resultado
    FWAlertInfo("Na data '" + dToC(dData) + "' o primeiro dia � '" + dToC(dPriDia) + "' e o �ltimo dia � '" + dToC(dUltDia) + "'", "Teste LimSemana")

    FWRestArea(aArea)
Return
