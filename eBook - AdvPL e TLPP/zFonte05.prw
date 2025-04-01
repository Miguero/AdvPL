/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte05
Exemplo de como utilizar o operador := (Dois Pontos e Igual), para atribuir um valor a uma vari�vel
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/pages/viewpage.action?pageId=6063089
/*/

User Function zFonte05()
    Local aArea   := FWGetArea()
    Local xValor
    Local nValor2 AS Numeric

    //Atribui os valores das duas vari�veis
    xValor  := 5
    nValor2 := 10
    FWAlertInfo("Ap�s as primeiras atribui��es - " + cValToChar(xValor), "Aten��o")

    //Atribui os valores das duas vari�veis
    xValor  := "aaa"
    //nValor2 := "bbb"
    FWAlertInfo("Ap�s as segundas atribui��es - " + xValor, "Aten��o")

    FWRestArea(aArea)
Return
