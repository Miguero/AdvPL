/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/16/buscando-o-numero-da-semana-com-a-retsem-maratona-advpl-e-tl-419/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe419
Retorna o n�mero da semana do ano conforme uma data
@type Function
@author Atilio
@since 22/02/2023
@obs 

    Fun��o RetSegunda
    Par�metros
        Recebe uma data de refer�ncia
    Retorno
        Retorna o n�mero da semana conforme a data passada

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe419()
    Local aArea      := FWGetArea()
    Local dDataRef   := Date()
    Local nSemana

    //Busca a semana da data de refer�ncia
    nSemana := RetSem(dDataRef)

    //Exibe uma mensagem
    FWAlertInfo("Para a data '" + dToC(dDataRef) + "', � a semana '" + cValToChar(nSemana) + "' do ano", "Teste RetSem")

    FWRestArea(aArea)
Return
