/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/28/encerrando-conexoes-com-a-killuser-maratona-advpl-e-tl-320/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe321
Busca o �ltimo dia do m�s conforme a data passada
@type Function
@author Atilio
@since 11/03/2023
@obs 
    Fun��o LastDate
    Par�metros
        + Data de Refer�ncia
    Retorno
        Retorna o �ltimo dia do m�s

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe321()
    Local aArea     := FWGetArea()
    Local dData     := sToD("20221215")
    Local dUltDia

    //Busca o �ltimo dia
    dUltDia := LastDate(dData)

    //Mostra o resultado
    FWAlertInfo("Na data '" + dToC(dData) + "' o �ltimo dia do m�s � '" + dToC(dUltDia) + "'", "Teste LastDate")

    FWRestArea(aArea)
Return
