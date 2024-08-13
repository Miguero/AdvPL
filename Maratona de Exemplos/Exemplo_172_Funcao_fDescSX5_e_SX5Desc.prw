/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/14/buscando-conteudos-da-sx5-com-as-funcoes-fdescsx5-e-sx5desc-maratona-advpl-e-tl-172/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe172
Fun��o para trazer o conte�do de campos da SX5
@type Function
@author Atilio
@since 20/12/2022
@obs 
    Fun��o fDescSX5
    Par�metros
        + 1 caso seja para acionar a descri��o ou 2 para retornar o nome do campo da SX5 (portugues; espanhol; ingles)
    Retorno
        + Descri��o do registro na SX5 (para correto funcionamento o registro deve estar posicionado na SX5)

    SX5Desc
    Par�metros
        + Nome da Tabela Gen�rica
        + Chave da Tabela Gen�rica
    Retorno
        + Descri��o do registro na SX5

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe172()
    Local aArea      := FWGetArea()
    Local cTpProd    := "PI"
    Local cDescTp    := ""
    Local cTpTitul   := "CD"
    Local cDescTitul := ""
    
    //Busca a descri��o via fDescSX5
    DbSelectArea("SX5")
    SX5->(DbSetOrder(1)) // X5_FILIAL + X5_TABELA + X5_CHAVE
    If SX5->(MsSeek(FWxFilial("SX5") + "02" + cTpProd))
        cDescTp := fDescSX5(1)
        FWAlertInfo("A descri��o do tipo de produto � '" + cDescTp + "'", "Teste fDescSX5")
    EndIf

    //Busca a descri��o via SX5Desc
    cDescTitul := SX5Desc("05", cTpTitul)
    FWAlertInfo("A descri��o do tipo de t�tulo � '" + cDescTitul + "'", "Teste com SX5Desc")

    FWRestArea(aArea)
Return
