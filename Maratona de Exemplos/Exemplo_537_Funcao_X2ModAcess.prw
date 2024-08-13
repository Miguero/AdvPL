/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/07/14/criando-um-webservice-soap-com-wsservice-maratona-advpl-e-tl-536/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe537
Fun��o que busca o modo de compartilhamento de uma tabela (X2_MODO)
@type Function
@author Atilio
@since 07/04/2023
@obs 

    Fun��o X2ModAcess
    Par�metros
        Recebe o alias da tabela que ser� analisada
    Retorno
        Retorna o modo de compartilhamento encontrado

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe537()
    Local aArea      := FWGetArea()
    Local cTabela    := ""
    Local cModo      := ""

    //Busca de uma tabela que seja compartilhada
    cTabela := "SB1"
    cModo   := X2ModAcess(cTabela)
    FWAlertInfo("Para a tabela '" + cTabela + "' o modo de compartilhamento � '" + cModo + "'", "Teste 1 X2ModAcess")

    //Busca de uma tabela que seja exclusiva
    cTabela := "SC5"
    cModo   := X2ModAcess(cTabela)
    FWAlertInfo("Para a tabela '" + cTabela + "' o modo de compartilhamento � '" + cModo + "'", "Teste 2 X2ModAcess")

    FWRestArea(aArea)
Return
