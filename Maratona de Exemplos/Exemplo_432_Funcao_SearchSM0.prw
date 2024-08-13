/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/23/buscando-empresa-e-filial-conforme-cnpj-atraves-da-searchsm0-maratona-advpl-e-tl-432/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe432
Busca empresa e filial conforme CNPJ passado
@type Function
@author Atilio
@since 30/03/2023
@obs 
    Fun��o SearchSM0
    Par�metros
        Recebe o n�mero do CNPJ
    Retorno
        Retorna um Array com v�rias linhas sendo que na coluna [1] � o c�digo da empresa e coluna [2] � o c�digo da filial

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe432()
    Local aArea    := FWGetArea()
    Local cCNPJ    := "00000000000000" // 00.000.000/0000-00
    Local aDados   := {}

    //Busca o c�digo da empresa e filial conforme CNPJ
    aDados := SearchSM0(cCNPJ)

    //Verifica se tem dados no Array
    If ! Empty(aDados)
        FWAlertSuccess("Foi encontrado informa��es com o CNPJ = [" + aDados[1][1] + "/" + aDados[1][2] + "]", "Teste - SearchSM0")
    Else
        FWAlertError("CNPJ n�o encontrado na tabela SYS_COMPANY / SM0", "Falha - SearchSM0")
    EndIf

    FWRestArea(aArea)
Return
