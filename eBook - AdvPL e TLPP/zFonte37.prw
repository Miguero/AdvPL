/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte37
Ordena uma tabela conforme o �ndice
@type Function
@author Atilio
@since 15/12/2022
@see https://tdn.totvs.com/display/tec/DBSetOrder
/*/

User Function zFonte37()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Usa o �ndice 1
    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    
    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice num�rico �: " + cValToChar(SB1->(IndexOrd())) + CRLF
    cMensagem += "E a chave do �ndice �: " + SB1->(IndexKey(IndexOrd())) + CRLF
    FWAlertInfo(cMensagem, "Teste 1 DbSetOrder")





    //Agora usa o �ndice 5
    SB1->(DbSetOrder(5))

    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice num�rico �: " + cValToChar(SB1->(IndexOrd())) + CRLF
    cMensagem += "E a chave do �ndice �: " + SB1->(IndexKey(IndexOrd())) + CRLF
    FWAlertInfo(cMensagem, "Teste 2 DbSetOrder")





    //Agora usa o �ndice "C" (12)
    SB1->(DbSetOrder(12))

    //Monta a mensagem e exibe
    cMensagem := "Cadastro de Produtos" + CRLF + CRLF
    cMensagem += "O �ndice num�rico �: " + cValToChar(SB1->(IndexOrd())) + CRLF
    cMensagem += "E a chave do �ndice �: " + SB1->(IndexKey(IndexOrd())) + CRLF
    FWAlertInfo(cMensagem, "Teste 3 DbSetOrder")

    FWRestArea(aArea)
Return
