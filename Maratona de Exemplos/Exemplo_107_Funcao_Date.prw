/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/23/buscando-a-data-atual-com-a-funcao-date-maratona-advpl-e-tl-107/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe107
Fornece a data atual do sistema operacional
@type Function
@author Atilio
@since 12/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=23889224
@obs 
    Fun��o Date
    N�o tem Par�metros
    Retorno
        + Data atual do sistema operacional

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe107()
    Local aArea     := FWGetArea()
    Local dData

    //Busca a data de hoje
    dData := Date()

    //Exibe a mensagem com a data de hoje
    FWAlertInfo("Hoje � " + DToC(dData), "Teste Date")

    FWRestArea(aArea)
Return
