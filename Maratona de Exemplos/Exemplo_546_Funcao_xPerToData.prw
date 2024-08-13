/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/19/buscando-uma-data-conforme-um-periodo-no-formato-mmyyyy-com-xpertodata-maratona-advpl-e-tl-546/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe546
Retorna uma data conforme o per�odo informado no formato "MMYYYY"
@type Function
@author Atilio
@since 07/04/2023
@obs 
    Fun��o xPerToData
    Par�metros
        Recebe o per�odo no formato string sendo "MMYYYY"
    Retorno
        Retorna o primeiro dia do per�odo encontrado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe546()
    Local aArea      := FWGetArea()
    Local cPeriodo   := ""
    Local dData      := dToS("")

    //Define o per�odo e converte pra data
    cPeriodo := "052023"
    dData    := xPerToData(cPeriodo)

    //Mostra o resultado
    FWAlertInfo("O resultado � " + dToC(dData), "Teste xPerToData")

    FWRestArea(aArea)
Return
