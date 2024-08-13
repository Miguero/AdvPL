/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/09/validando-se-um-gatilho-existe-e-executando-existtrigger-e-runtrigger-maratona-advpl-e-tl-162/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe163
Faz convers�es entre data e hora para o formato UTC
@type Function
@author Atilio
@since 19/12/2022
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815032
@obs 
    Fun��o ExLocalToUTC
    Par�metros
        + Data a ser verificada
        + Hora a ser verificada
    Retorno
        + Retorna uma string com a data e hora concatenadas

    Fun��o ExUTCToLocal
    Par�metros
        + String no formato de data e hora concatenadas
    Retorno
        Retorna um Array com 2 posi��es sendo a primeira a data e a segunda a hora

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe163()
    Local aArea     := FWGetArea()
    Local cUTC      := ""
    Local aDados
    Local dData
    Local cHora

    //Faz a convers�o da data e hora local para UTC
    cUTC := ExLocalToUTC(Date(), Time())
    FWAlertInfo("O resultado � " + cUTC, "Teste com ExLocalToUTC")

    //Agora faz a convers�o de UTC para Local
    aDados := ExUTCToLocal("2022-12-19T10:00:34Z")
    dData  := aDados[1]
    cHora  := aDados[2]
    FWAlertInfo("O resultado � " + dToC(dData) + " e " + cHora, "Teste com ExUTCToLocal")

    FWRestArea(aArea)
Return
