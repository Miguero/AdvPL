/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/28/buscando-a-quantidade-de-dias-uteis-entre-duas-datas-com-dateworkday-maratona-advpl-e-tl-112/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe112
Retorna a quantidade de dias �teis entre duas datas
@type Function
@author Atilio
@since 13/12/2022
@obs 
    Fun��o DateWorkDay
    Par�metros
        + Data inicial
        + Data final
        + Se ir� considerar s�bados (.T.) ou n�o (.F.)
        + Se ir� considerar domingos (.T.) ou n�o (.F.)
        + Se ir� considerar feriados (.T.) ou n�o (.F.) - conforme a tabela 63 da SX5
    Retorno
        + Retorna a quantidade de dias �teis

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe112()
    Local aArea      := FWGetArea()
    Local dDataIni   := sToD("20221205")
    Local dDataFim   := sToD("20221213")
    Local nDiasUteis := 0

    //Busca quantos dias �teis h� no intervalo
    nDiasUteis       := DateWorkDay(dDataIni, dDataFim)

    //Exibe a diferen�a
    FWAlertInfo("Existe(m) " + cValToChar(nDiasUteis) + " dia(s) �til(eis)", "Teste DateWorkDay")

    FWRestArea(aArea)
Return
