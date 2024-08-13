/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/02/validando-a-utilizacao-de-uma-data-com-a-funcao-dtvalvcto-maratona-advpl-e-tl-149/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe149
Fun��o que valida a data de vencimento (n�o pode ser mais que 360 dias ou menor que a data logada)
@type Function
@author Atilio
@since 16/12/2022
@obs 
    Fun��o DtValVcto
    Par�metros
        + Data de Vencimento
    Retorno
        + Retorna .T. se � v�lida ou .F. se n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe149()
    Local aArea      := FWGetArea()
    Local dDataVenc

    //Monta a data de vencimento com 3 dias atr�s
    dDataVenc := DaySub(Date(), 3)
    If DtValVcto(dDataVenc)
        FWAlertSuccess("A data de vencimento '" + dToC(dDataVenc) + "' � v�lida", "Teste 1 DtValVcto")
    Else
        FWAlertError("A data de vencimento '" + dToC(dDataVenc) + "' n�o � v�lida", "Teste 1 DtValVcto")
    EndIf

    //Monta a data de vencimento com 1 ano no futuro
    dDataVenc := YearSum(Date(), 1)
    If DtValVcto(dDataVenc)
        FWAlertSuccess("A data de vencimento '" + dToC(dDataVenc) + "' � v�lida", "Teste 2 DtValVcto")
    Else
        FWAlertError("A data de vencimento '" + dToC(dDataVenc) + "' n�o � v�lida", "Teste 2 DtValVcto")
    EndIf

    //Monta a dta de vencimento daqui 5 dias
    dDataVenc := DaySum(Date(), 5)
    If DtValVcto(dDataVenc)
        FWAlertSuccess("A data de vencimento '" + dToC(dDataVenc) + "' � v�lida", "Teste 3 DtValVcto")
    Else
        FWAlertError("A data de vencimento '" + dToC(dDataVenc) + "' n�o � v�lida", "Teste 3 DtValVcto")
    EndIf

    FWRestArea(aArea)
Return
