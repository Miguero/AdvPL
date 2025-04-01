/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte38
Posiciona em um registro conforme uma chave passada para pesquisar no �ndice
@type Function
@author Atilio
@since 14/12/2022
@see https://tdn.totvs.com/display/tec/DBSeek e https://tdn.totvs.com/pages/releaseview.action?pageId=24347003
/*/

User Function zFonte38()
    Local aArea      := FWGetArea()
    Local cBusca     := ""
    
    //Abre o cadastro de produtos
    DbSelectArea('SB1')
    SB1->(DbSetOrder(3)) //B1_FILIAL + B1_DESC + B1_COD



    //Pede pro usu�rio inserir uma descri��o e faz a busca com DbSeek
    cBusca := FWInputBox("Insira a descri��o do produto para o DbSeek:")
    If SB1->(DbSeek(FWxFilial("SB1") + AvKey(cBusca, "B1_DESC")))
        FWAlertSuccess("Produto encontrado, c�digo " + SB1->B1_COD, "Sucesso DbSeek")
    Else
        FWAlertError("Produto n�o encontrado", "Falha DbSeek")
    EndIf



    //Pede pro usu�rio inserir uma descri��o e faz a busca com MsSeek
    cBusca := FWInputBox("Insira a descri��o do produto para o MsSeek:")
    If SB1->(MsSeek(FWxFilial("SB1") + AvKey(cBusca, "B1_DESC")))
        FWAlertSuccess("Produto encontrado, c�digo " + SB1->B1_COD, "Sucesso MsSeek")
    Else
        FWAlertError("Produto n�o encontrado", "Falha MsSeek")
    EndIf

    FWRestArea(aArea)
Return
