/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/05/deixando-uma-string-com-o-tamanho-do-campo-com-a-funcao-avkey-maratona-advpl-e-tl-058/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe058
Exemplo de fun��o que formata um conte�do conforme o campo do dicion�rio
@type Function
@author Atilio
@since 05/12/2022
@obs 
    Fun��o AvKey
    Par�metros
        + Conte�do que ser� formatado podendo ser num�rico ou data ou caractere
        + Nome do campo do dicion�rio (SX3)
        + Define se ir� truncar o conte�do do xInformacao caso o seja menor que o tamanho do campo
        + Se � para considerar um array como struct do campo (similar ao DbStruct mas somente do campo)
    Retorno
        + Conte�do formatado conforme campo do dicion�rio de dados (SX3)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe058()
    Local aArea   := FWGetArea()
    Local cDescri := "Banana"
    Local cCodigo := "F0002"

    //Abre a tabela de produtos e usa o �ndice da descri��o
    DbSelectArea("SB1")
    SB1->(DbSetOrder(3)) // B1_FILIAL + B1_DESC + B1_COD

    //Tenta posicionar logo como veio os dados
    If SB1->(MsSeek(FWxFilial('SB1') + cDescri + cCodigo))
        FWAlertSuccess("Encontrou a busca", "Teste 1")
    Else
        FWAlertError("N�o Encontrou", "Teste 1")
    EndIf

    //Agora formata o conte�do com o AvKey
    cDescri := AvKey(cDescri, "B1_DESC")
    cCodigo := AvKey(cCodigo, "B1_COD")
    If SB1->(MsSeek(FWxFilial('SB1') + cDescri + cCodigo))
        FWAlertSuccess("Encontrou a busca", "Teste 2")
    Else
        FWAlertError("N�o Encontrou", "Teste 2")
    EndIf

    FWRestArea(aArea)
Return
