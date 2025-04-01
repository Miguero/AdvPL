/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte14
Exemplo de como utilizar os operadores de subtra��o - (ele tamb�m funciona com atribui��o -=)
@type Function
@author Atilio
@since 26/11/2022
@see https://tdn.engpro.totvs.com.br/display/tec/Operadores+Comuns
/*/

User Function zFonte14()
    Local aArea   := FWGetArea()
    Local nVar1   := 12
    Local nVar2   := 15
    Local nResult := 0

    //Faz a subtra��o de uma vari�vel com outra
    nResult := nVar1 - nVar2
    nResult -= 5
    FWAlertInfo("O resultado � " + cValToChar(nResult), "Resultado da Subtra��o")

    FWRestArea(aArea)
Return
