/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/14/buscando-o-id-da-entidade-no-tss-com-a-retidenti-maratona-advpl-e-tl-415/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe414
Retorna os feriados (conforme database do sistema)
@type Function
@author Atilio
@since 28/03/2023
@obs 

    Fun��o RetFeriados
    Par�metros
        Fun��o n�o tem Par�metros
    Retorno
        Retorna um array com a lista de feriados (conforme database do sistema)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe414()
    Local aArea     := FWGetArea()
    Local aFeriados := {}

    //Busca os feriados
    aFeriados := RetFeriados()

    //Exibe uma mensagem
    FWAlertInfo("Foi encontrado " + cValToChar(Len(aFeriados)) + " feriado(s) conforme a database " + dToC(dDataBase), "Teste RetFeriados")

    FWRestArea(aArea)
Return
